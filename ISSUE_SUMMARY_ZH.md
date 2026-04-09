# mad-location-manager-lib Issues 总结（截至 2026-04-08）

> 来源：
> - GitHub Issues 列表页：<https://github.com/maddevsio/mad-location-manager-lib/issues>
> - Issue #15：<https://github.com/maddevsio/mad-location-manager-lib/issues/15>
> - Issue #14：<https://github.com/maddevsio/mad-location-manager-lib/issues/14>
> - Issue #13：<https://github.com/maddevsio/mad-location-manager-lib/issues/13>

## 1) 当前状态概览

- 仓库 Issues 页面显示共有 **2 个未关闭 issue**（页面导航统计）。
- 近期 issue 主题集中在：
  1. **隧道/长时间 GPS 丢失场景的行为**
  2. **低速/静止时出现 NaN 的稳定性问题**
  3. **Android 集成文档与落地指导需求**

---

## 2) 逐条问题摘要

## #15 Behaviour in tunnels（Open）
- 提问时间：2025-07-29
- 核心问题：在长隧道中 GPS 丢失，轨迹会从入口到出口形成直线；提问者关心 MLM 在此场景的表现。
- 技术本质：
  - **观测长时间缺失**（仅 predict、无 update）
  - 误差将主要由惯导噪声与模型误差累积决定
- 建议优先级：高（真实道路场景高频出现）

## #14 Receiving NaN after Kalman filter processing（Closed）
- 提问时间：2025-07-21
- 现象：日志中偶发 `NaN,NaN`，观察到多在车辆静止或接近静止时发生。
- 用户推测：可能与速度接近 0 时的除零/数值不稳定有关。
- 技术本质：
  - **数值稳定性与边界输入防护问题**
  - 包括低速航向计算、异常协方差、非法输入传播等风险
- 状态：已关闭，但仍应在代码中做系统性保护与回归测试。

## #13 Android app integration（Closed）
- 提问时间：2025-07-15
- 核心问题：如何集成到 Android（并计划后续 iOS）。
- 技术本质：
  - **SDK 接入文档与示例不足**
  - 需要更标准化的初始化/喂数/取结果指南
- 状态：已关闭，说明该需求被响应，但文档化仍是可持续需求。

---

## 3) 从 Issues 反推的工程改进方向

1. **隧道场景鲁棒性（最高优先级）**
   - 增加“GPS 丢失模式”：限制协方差膨胀速度、引入速度/加速度先验约束。
   - 增加隧道重捕获策略：GPS 恢复时采用门控更新，避免一次性强拉偏。

2. **数值稳定性加固**
   - 统一加入 `isfinite()` 检查（输入、状态、输出）。
   - 对 `dt`、速度模长、观测方差做下限保护（epsilon clamp）。
   - 静止检测下的航向输出保护（避免未定义角度）。

3. **接入体验建设**
   - 提供 Android 最小可运行示例（包含 ENU 转换、时间戳要求、误差参数说明）。
   - 补充 FAQ：低速、GPS 丢失、后台采样频率不稳定等常见坑位。

4. **测试补齐**
   - 增加三类回归：
     - 长时无 GPS（隧道）
     - 静止/低速（NaN 防回归）
     - 异常时间戳（乱序/跳变）

---

## 4) 简短结论

该仓库 Issues 虽数量不多，但高度集中在“**可生产落地**”的关键痛点：
- 复杂真实场景（隧道）
- 稳定性边界（NaN）
- 工程接入成本（Android/iOS 指南）

这类问题比“功能是否可用”更靠近“**是否可规模化上线**”。建议后续迭代优先围绕鲁棒性与文档化推进。
