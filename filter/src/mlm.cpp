#include "mlm.h"

#include <cmath>

#include "commons.h"

namespace {
constexpr double kMinSigma2 = 1e-8;
constexpr double kMinSpeedForAzimuth = 0.2;  // m/s

inline bool finite3(double a, double b, double c)
{
  return std::isfinite(a) && std::isfinite(b) && std::isfinite(c);
}
}  // namespace

MLM::MLM(void)
    : m_got_start_point(false),
      m_acc_sigma_2(kMinSigma2),
      m_loc_sigma_2(kMinSigma2),
      m_vel_sigma_2(kMinSigma2),
      m_last_valid_azimuth_deg(0.0)
{
}
//////////////////////////////////////////////////////////////

MLM::MLM(double acc_sigma_2, double loc_sigma_2, double vel_sigma_2)
    : m_got_start_point(false),
      m_acc_sigma_2(std::max(acc_sigma_2, kMinSigma2)),
      m_loc_sigma_2(std::max(loc_sigma_2, kMinSigma2)),
      m_vel_sigma_2(std::max(vel_sigma_2, kMinSigma2)),
      m_last_valid_azimuth_deg(0.0)
{
}
//////////////////////////////////////////////////////////////

MLM::~MLM(void) {}
//////////////////////////////////////////////////////////////

bool MLM::process_acc_data(const enu_accelerometer &acc, double time_sec)
{
  if (!m_got_start_point) {
    return false;  // do nothing until first GPS coordinate is processed
  }
  if (!finite3(acc.x, acc.y, acc.z) || !std::isfinite(time_sec)) {
    return false;
  }
  m_fk.predict(acc.x, acc.y, time_sec);
  return true;
}
//////////////////////////////////////////////////////////////

void MLM::process_gps_data(const gps_coordinate &gps, double time_sec)
{
  if (!std::isfinite(time_sec)) {
    return;
  }
  if (!finite3(gps.location.latitude, gps.location.longitude, gps.location.altitude) ||
      !std::isfinite(gps.location.error) || !std::isfinite(gps.speed.value) ||
      !std::isfinite(gps.speed.azimuth) || !std::isfinite(gps.speed.error)) {
    return;
  }

  double x, y, z;
  double az_rad = degree_to_rad(gps.speed.azimuth);
  az_rad = azimuth_to_cartezian_rad(az_rad);
  double vel_x = gps.speed.value * cos(az_rad);
  double vel_y = gps.speed.value * sin(az_rad);
  if (gps.speed.value >= kMinSpeedForAzimuth) {
    m_last_valid_azimuth_deg = gps.speed.azimuth;
  }

  if (!m_got_start_point) {
    m_got_start_point = true;
    m_lc.Reset(gps.location.latitude, gps.location.longitude, 0.0);
    m_lc.Forward(gps.location.latitude, gps.location.longitude, 0.0, x, y, z);
    m_fk.reset(x, y, time_sec, vel_x, vel_y, m_acc_sigma_2, m_loc_sigma_2);
    return;
  }

  m_lc.Forward(gps.location.latitude, gps.location.longitude, 0.0, x, y, z);
  kf_state st(x, y, vel_x, vel_y);
  m_fk.update(st, gps.location.error, gps.speed.error);
  // this one used during tests in visualizator
  // m_fk.update(st, m_loc_sigma_2, m_vel_sigma_2);
}
//////////////////////////////////////////////////////////////

gps_coordinate MLM::predicted_coordinate() const
{
  gps_coordinate res;
  if (!m_got_start_point) {
    res.speed.azimuth = m_last_valid_azimuth_deg;
    return res;
  }
  double x, y, z;
  x = m_fk.current_state().x;
  y = m_fk.current_state().y;
  z = 0.;
  m_lc.Reverse(x,
               y,
               z,
               res.location.latitude,
               res.location.longitude,
               res.location.altitude);

  double vx = m_fk.current_state().x_vel;
  double vy = m_fk.current_state().y_vel;
  res.speed.value = std::sqrt(vx * vx + vy * vy);
  if (res.speed.value < kMinSpeedForAzimuth) {
    res.speed.azimuth = m_last_valid_azimuth_deg;
  } else {
    const double vel_cart_rad = atan2(vy, vx);
    const double vel_az_rad = cartezian_to_azimuth_rad(vel_cart_rad);
    res.speed.azimuth = rad_to_degree(vel_az_rad);
  }
  return res;
}
//////////////////////////////////////////////////////////////
