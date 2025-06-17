#ifndef MLM_HEADER
#define MLM_HEADER

#include <GeographicLib/LocalCartesian.hpp>

#include "gps_acc_fusion_filter.h"
#include "sensor_data.h"

/**
 * @brief Motion Location Model - GPS/Accelerometer sensor fusion estimator
 *
 * This class implements a Kalman filter-based sensor fusion system that
 * combines GPS position measurements with accelerometer data to provide
 * improved position and velocity estimates. The system uses ENU (East-North-Up)
 * coordinate frame for local calculations and converts to/from geographic
 * coordinates.
 *
 * The filter operates in predict-update cycles:
 * - Prediction: Uses accelerometer data to propagate state forward in time
 * - Update: Corrects predictions using GPS position measurements
 *
 * Noise characteristics are configurable via sigma-squared parameters for
 * accelerometer, location, and velocity uncertainties.
 */
class MLM
{
 private:
  gps_acc_fusion_filter m_fk;  ///< Kalman filter for GPS-accelerometer fusion
  GeographicLib::LocalCartesian m_lc;  ///< Local cartesian coordinate converter
  bool
      m_got_start_point;  ///< Flag indicating if initial reference point is set
  double m_acc_sigma_2;   ///< Accelerometer noise variance [m²/s⁴]
  double m_loc_sigma_2;   ///< Location measurement noise variance [m²]
  double m_vel_sigma_2;   ///< Velocity process noise variance [m²/s²]

 public:
  /**
   * @brief Default constructor with standard noise parameters
   */
  MLM(void);

  /**
   * @brief Constructor with custom noise parameters
   * @param acc_sigma_2 Accelerometer noise variance [m²/s⁴]
   * @param loc_sigma_2 Location measurement noise variance [m²]
   * @param vel_sigma_2 Velocity process noise variance [m²/s²]
   */
  MLM(double acc_sigma_2, double loc_sigma_2, double vel_sigma_2);

  /**
   * @brief Destructor
   */
  ~MLM(void);

  /**
   * @brief Process accelerometer measurement (prediction step)
   *
   * Propagates the filter state forward using accelerometer data as control
   * input. This performs the prediction step of the Kalman filter.
   *
   * @param acc ENU-frame accelerometer measurement
   * @param time_sec Timestamp in seconds
   * @return true if processing successful, false otherwise
   */
  bool process_acc_data(const enu_accelerometer &acc, double time_sec);

  /**
   * @brief Process GPS measurement (update step)
   *
   * Corrects the predicted state using GPS position measurement.
   * This performs the update/correction step of the Kalman filter.
   *
   * @param gps GPS coordinate measurement
   * @param time_sec Timestamp in seconds
   */
  void process_gps_data(const gps_coordinate &gps, double time_sec);

  /**
   * @brief Get current estimated position
   * @return Predicted GPS coordinate based on current filter state
   */
  gps_coordinate predicted_coordinate() const;
};

#endif
