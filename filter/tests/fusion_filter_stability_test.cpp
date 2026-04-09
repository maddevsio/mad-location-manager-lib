#include "gps_acc_fusion_filter.h"
#include "mlm.h"

#include <gtest/gtest.h>

#include <cmath>
#include <limits>

TEST(fusion_stability, non_monotonic_timestamp_predict_is_ignored)
{
  gps_acc_fusion_filter fk;
  fk.reset(10.0, 20.0, 100.0, 2.0, 3.0, 1e-3, 1e-2);
  kf_state before = fk.current_state();

  fk.predict(0.5, -0.1, 99.0);  // older timestamp must be ignored
  kf_state after = fk.current_state();

  EXPECT_DOUBLE_EQ(before.x, after.x);
  EXPECT_DOUBLE_EQ(before.y, after.y);
  EXPECT_DOUBLE_EQ(before.x_vel, after.x_vel);
  EXPECT_DOUBLE_EQ(before.y_vel, after.y_vel);
}
//////////////////////////////////////////////////////////////

TEST(fusion_stability, invalid_inputs_do_not_produce_nan)
{
  MLM mlm(1e-3, 1e-2, 1e-2);
  gps_coordinate init_gps(52.52, 13.405, 0.0, 5.0, 10.0, 90.0, 1.0);
  mlm.process_gps_data(init_gps, 1.0);

  const double nan = std::numeric_limits<double>::quiet_NaN();
  enu_accelerometer bad_acc(nan, 0.1, 0.0);
  EXPECT_FALSE(mlm.process_acc_data(bad_acc, 1.1));

  gps_coordinate bad_gps = init_gps;
  bad_gps.location.latitude = nan;
  mlm.process_gps_data(bad_gps, 2.0);

  gps_coordinate predicted = mlm.predicted_coordinate();
  EXPECT_TRUE(std::isfinite(predicted.location.latitude));
  EXPECT_TRUE(std::isfinite(predicted.location.longitude));
  EXPECT_TRUE(std::isfinite(predicted.speed.value));
  EXPECT_TRUE(std::isfinite(predicted.speed.azimuth));
}
//////////////////////////////////////////////////////////////
