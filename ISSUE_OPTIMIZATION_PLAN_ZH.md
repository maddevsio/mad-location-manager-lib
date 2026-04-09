# 针对 mad-location-manager-lib Issues 的优化方案（工程落地版）

> 目标：针对 #15（隧道）、#14（NaN）、#13（Android 集成）给出可实施、可验证、可分阶段上线的优化路线。

## 0. 优先级与里程碑

- **P0（1~2 周）**：稳定性止血（NaN 防护 + 时间戳与噪声参数边界保护）
- **P1（2~4 周）**：隧道/长时间 GPS 缺失鲁棒性
- **P2（并行）**：Android 接入模板与回归测试体系

---

## 1) Issue #14（NaN）优化：先止血，再定位

## 1.1 输入与状态完整性守卫（必须先做）

在 `process_acc_data` / `process_gps_data` / `predict` / `update` 前后统一加检查：

- `std::isfinite()` 检查：时间戳、acc、gps lat/lon/speed/error。
- 对关键参数做下限保护：
  - `dt = clamp(dt, 1e-3, 1.0)`（可配置）
  - `pos_sigma2 = max(pos_sigma2, 1e-6)`
  - `vel_sigma2 = max(vel_sigma2, 1e-6)`
  - `acc_sigma2 = max(acc_sigma2, 1e-8)`
- 若输入非法：
  - 记录告警计数（用于监控）
  - 丢弃该次 update/predict，而不是继续传播 NaN

## 1.2 低速航向保护

当前速度接近 0 时，航向角意义弱。优化策略：

- 当 `sqrt(vx^2 + vy^2) < v_eps`（例如 0.2m/s）：
  - 航向输出沿用上一次有效值；
  - 或标记 `heading_valid = false` 让上层决定显示策略。

## 1.3 数值健壮性增强

- 协方差矩阵周期性对称化：`P = 0.5*(P + P^T)`。
- 对 `Sk` 条件数做监控，异常时采用更保守更新（如跳过该次更新或加噪声膨胀）。

## 1.4 回归测试

新增三组测试：

1. 静止 10 分钟（含微小噪声）不得出现 NaN。
2. 低速（0~1m/s）加减速切换不得出现 NaN。
3. 异常 timestamp（倒序、突跳）不得污染后续状态。

---

## 2) Issue #15（隧道）优化：长时无 GPS 的可控退化

## 2.1 进入“GPS 缺失模式”

当连续 `T_lost`（如 >3s）无 GPS 时：

- 仅执行 predict，但启用“保守策略”：
  - 限制速度上限（`v_max_tunnel`）
  - 限制加速度绝对值（`a_max_tunnel`）
  - 过程噪声按时间增长，但设置膨胀上限，避免完全发散

## 2.2 恢复阶段门控（关键）

GPS 恢复时先做创新门控（NIS/马氏距离）：

- 若创新过大，不直接全量更新；
- 采用分阶段拉回：
  1. 前 N 帧提高 R（更信任预测）
  2. 逐步恢复正常 R

这能显著降低“隧道出口跳点”造成的轨迹撕裂。

## 2.3 可选增强：地图约束（后续）

- 若业务允许，隧道段可叠加道路约束（map matching 轻约束），减少漂移方向错误。

## 2.4 隧道专项评测

构建离线回放集：

- 30s / 60s / 180s 无 GPS 三档；
- 输出指标：
  - 出口位置误差 P50/P95
  - 速度误差
  - 重捕获稳定时间（恢复到阈值误差内所需秒数）

---

## 3) Issue #13（Android 集成）优化：降低接入门槛

## 3.1 提供最小可运行 Sample

建议新增 `examples/android-minimal`：

- JNI 封装 `MLM` 生命周期：`init -> feedAcc -> feedGps -> getPredicted`
- 明确线程模型：传感器线程入队，滤波线程串行消费
- 演示 ENU 与四元数转换链

## 3.2 接入文档模板（必须落地）

文档最少应包含：

1. 时间戳要求（单调、单位秒）
2. 采样频率建议（acc/GPS）
3. 参数初始化建议（不同场景噪声）
4. 常见故障排查（NaN、GPS 丢失、低速抖动）

## 3.3 版本化与兼容策略

- 对外暴露配置结构体，保留默认值；
- 参数项新增走向后兼容；
- 输出增加状态码（OK/WARN/INVALID_INPUT）便于 App 侧监控。

---

## 4) 建议的代码改造点（对应当前仓库结构）

1. `filter/src/gps_acc_fusion_filter.cpp`
   - 增加 `dt` 防护与异常分支。
   - 加入 `Sk` 异常判定与保护更新。

2. `filter/src/mlm.cpp`
   - 在 `process_*` 入口做输入合法性检查。
   - 在 `predicted_coordinate()` 添加低速航向保护。

3. `src/main_window.cpp`（验证工具）
   - 增加“GPS 丢失模拟开关”和丢失时长参数。
   - 增加 NIS/创新值可视化，辅助调参。

4. `filter/tests/`
   - 增加 tunnel、nan、timestamp-anomaly 三类回归测试。

---

## 5) 发布策略（避免一次性大改风险）

- **Release A（稳定性补丁）**：只上输入守卫 + NaN 防护 + 日志指标。
- **Release B（鲁棒性）**：上线 GPS 缺失模式 + 恢复门控。
- **Release C（生态）**：Android sample + 接入文档 + 回归基线报告。

这样可以在不破坏现网行为的前提下，快速提升“可用性 -> 可上线性 -> 可规模化”。
