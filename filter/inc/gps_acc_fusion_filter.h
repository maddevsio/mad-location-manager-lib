#ifndef GPSACCKALMAN_H
#define GPSACCKALMAN_H

#include "kalman.h"

/**
 * @brief Kalman filter state vector (X matrix) for 2D tracking
 */
struct kf_state {
  double x;      /// EAST -> longitude in meters
  double y;      /// NORTH -> latitude in meters
  double x_vel;  /// velocity pointing east
  double y_vel;  /// velocity pointing north

  kf_state() : x(0.0), y(0.0), x_vel(0.0), y_vel(0.0) {}
  kf_state(double x_, double y_, double x_vel_, double y_vel_)
      : x(x_), y(y_), x_vel(x_vel_), y_vel(y_vel_)
  {
  }

  friend std::ostream& operator<<(std::ostream& os, const kf_state& obj);
};

//////////////////////////////////////////////////////////////

/**
 * @brief gps_acc_fusion_filter - Kalman filter implementation for GPS and accelerometer fusion
 *
 * @tparam state_d Dimension of state vector (number of state variables)
 * @tparam measure_d Dimension of measurement vector (number of measurements)
 * @tparam control_d Dimension of control vector (number of control inputs)
 *
 * @details Specialized Kalman filter for fusing GPS position data with accelerometer
 * measurements to estimate 2D position and velocity. Uses kalman_filter<4, 4, 2>
 * configuration:
 * 
 * **State Vector (4D):** [X, Y, X', Y']
 * - X, Y: Position coordinates (East, North) in meters
 * - X', Y': Velocity components (East, North) in m/s
 * 
 * **Measurement Vector (4D):** [GPS_X, GPS_Y, GPS_VX, GPS_VY]
 * - GPS position and velocity measurements
 * 
 * **Control Vector (2D):** [ACC_X, ACC_Y]
 * - Accelerometer measurements (East, North acceleration)
 * 
 * This filter provides improved position and velocity estimation by combining
 * the absolute positioning from GPS with the high-frequency acceleration data,
 * resulting in smoother tracking with reduced GPS noise and better dynamics.
 */
class gps_acc_fusion_filter : public kalman_filter<4, 4, 2>
{
 private:
  double m_last_predict_sec; /// timestamp (in seconds) of last predict() call
  double m_acc_sigma_2;  /// accelerometer sigma^2
  double m_pos_sigma_2;  /// gps position sigma^2

  void rebuild_F(double dt_sec);
  void rebuild_U(double xAcc, double yAcc);
  void rebuild_B(double dt_sec);
  void rebuild_Q(double dt_sec);
  void rebuild_R(double pos_sigma_2, double vel_sigma_2);

 public:
  gps_acc_fusion_filter();

  void reset(double x,   // EAST - longitude in meters
             double y,   // NORTH - latitude in meters
             double ts,  // last update (GPS coordinate) time
             double x_vel,
             double y_vel,
             double acc_sigma_2,
             double pos_sigma_2);

  void predict(double x_acc, double y_acc, double ts_sec);
  void update(const kf_state& state,
              double pos_sigma_2,
              double vel_sigma_2 = 1e-6);

  const kf_state current_state() const;
};
//////////////////////////////////////////////////////////////

#endif  // GPSACCKALMAN_H
