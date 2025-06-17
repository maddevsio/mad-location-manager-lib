#ifndef SENSOR_DATA_H
#define SENSOR_DATA_H

#include <cmath>
#include <string>

#include "commons.h"

/**
 * @brief accelerometer - raw accelerometer data (without g compensation)
 */
struct accelerometer {
  double x;  ///< x - axis X
  double y;  ///< y - axis Y
  double z;  ///< z - axis Z
  accelerometer() : x(0.0), y(0.0), z(0.0) {}
  accelerometer(double x, double y, double z) : x(x), y(y), z(z) {}
};

/**
 * @brief gyroscope - raw gyroscope data
 */
struct gyroscope {
  double x;  ///< x - around axis X
  double y;  ///< y - around axis Y
  double z;  ///< z - around axis Z
  gyroscope() : x(0.0), y(0.0), z(0.0) {}
  gyroscope(double x, double y, double z) : x(x), y(y), z(z) {}
};

/**
 * @brief magnetometer - raw magnetometer data
 */
struct magnetometer {
  double x;  ///< x - axis X
  double y;  ///< y - axis Y
  double z;  ///< z - axis Z
  magnetometer() : x(0.0), y(0.0), z(0.0) {}
  magnetometer(double x, double y, double z) : x(x), y(y), z(z) {}
};
//////////////////////////////////////////////////////////////

/**
 * @brief enu_accelerometer - acceleration in ENU coordinates (east, north, up)
 */
struct enu_accelerometer {
  double x;  ///< x - axis X (longitude/east)
  double y;  ///< y - axis Y (latitude/north)
  double z;  ///< z - axis Z (altitude/up)
  enu_accelerometer() : x(0.0), y(0.0), z(0.0) {}
  enu_accelerometer(double x, double y, double z) : x(x), y(y), z(z) {}
  enu_accelerometer(double acc, double azimuth)
  {
    double a_rad = degree_to_rad(azimuth);
    x = acc * cos(a_rad);
    y = acc * sin(a_rad);
    z = 0.0;  // for now
  }

  double cartezian_angle(void) const
  {
    return rad_to_degree(atan2(y, x));
  }

  double acceleration(void) const
  {
    return sqrt(x * x + y * y);
  }
};
//////////////////////////////////////////////////////////////

/**
 * @brief acceleration along each device axis, not
 * including gravity. All values have units of m/s^2
 */
struct linear_accelerometer {
  double x;  ///< x - axis X
  double y;  ///< y - axis Y
  double z;  ///< z - axis Z
  linear_accelerometer() : x(0.), y(0.), z(0.) {};
  linear_accelerometer(double x, double y, double z) : x(x), y(y), z(z) {};
};
//////////////////////////////////////////////////////////////

/**
 * @brief rotation_quaternion - normalized quaternion in form [w, x, y, z]
 * describing device orientation in ENU coordinate system
 */
struct rotation_quaternion {
  double w, x, y, z;
  rotation_quaternion() : w(0.), x(0.), y(0.), z(0.) {};
  rotation_quaternion(double w, double x, double y, double z)
      : w(w), x(x), y(y), z(z) {};
};
//////////////////////////////////////////////////////////////

/**
 * @brief Raw accelerometer data with rotation quaternion in ENU frame
 */
struct raw_enu_accelerometer {
  linear_accelerometer acc;  ///< Linear accelerometer data
  rotation_quaternion rq;    ///< Rotation quaternion
  raw_enu_accelerometer() : acc(), rq() {};
  raw_enu_accelerometer(const linear_accelerometer &acc,
                        const rotation_quaternion &rq)
      : acc(acc), rq(rq) {};
  raw_enu_accelerometer(double acc_x,
                        double acc_y,
                        double acc_z,
                        double q_w,
                        double q_x,
                        double q_y,
                        double q_z)
      : acc(acc_x, acc_y, acc_z), rq(q_w, q_x, q_y, q_z) {};
};
//////////////////////////////////////////////////////////////

/**
 * @brief geopoint - part of gps coordinate representing location
 */
struct geopoint {
  double latitude;   ///< latitude (axis Y) - 0 .. M_PI
  double longitude;  ///< longitude (axis X) - 0 .. 2 * M_PI
  double altitude;   ///< altitude (axis Z)
  double error;  ///< error in meters (distance from real point 68% confidence)

  geopoint() : latitude(0.), longitude(0.), altitude(0.), error(1e-6) {};
  geopoint(double latitude,
           double longitude,
           double altitude = 0.,
           double error = 1e-6)
      : latitude(latitude),
        longitude(longitude),
        altitude(altitude),
        error(error)
  {
  }
};
//////////////////////////////////////////////////////////////

/**
 * @brief gps_speed - part of gps coordinate representing speed
 */
struct gps_speed {
  double value;    ///< speed in m/s
  double azimuth;  ///< azimuth in degrees (HDOP)
  double error;    ///< the estimated speed error in meters per second of this

  gps_speed() : value(0.0), azimuth(0.0), error(0.0) {}
  gps_speed(double value, double azimuth, double error)
      : value(value), azimuth(azimuth), error(error)
  {
  }
};
//////////////////////////////////////////////////////////////

/**
 * @brief gps_coordinate - consists of 2 independent parts : location and speed
 */
struct gps_coordinate {
  geopoint location;  ///< geopoint
  gps_speed speed;    ///< gps speed

  gps_coordinate() : location(), speed() {}
  gps_coordinate(double latitude,
                 double longitude,
                 double altitude,
                 double loc_error,
                 double speed_value,
                 double speed_azimuth,
                 double speed_error)
      : location(latitude, longitude, altitude, loc_error),
        speed(speed_value, speed_azimuth, speed_error)
  {
  }
};
//////////////////////////////////////////////////////////////

enum sensor_data_record_type {
  /// ACC_ENU_SET - calculated ENU acceleration based on GPS_SET points
  SD_ACC_ENU_SET = 0,
  /// ACC_ENU_GENERATED - with noise OR from real device
  SD_ACC_ENU_GENERATED = 1,
  /// GPS_SET manually by user in visualizer
  SD_GPS_SET = 2,
  /// GPS_FILTERED coordinates after Kalman filter applied
  SD_GPS_FILTERED = 3,
  /// GPS_GENERATED coordinates with noise
  SD_GPS_GENERATED = 4,
  /// RAW_ENU_ACC - combination of data from linear accelerometer and rotation
  /// vector sensors
  SD_RAW_ENU_ACC = 5,
  /// just the end of this enum
  SD_UNKNOWN
};

/**
 * @brief sd_record_hdr - header for all sensor data output records
 */
struct sd_record_hdr {
  sensor_data_record_type type;  ///< type of header
  double timestamp;              ///< ts of event (in seconds)

  sd_record_hdr() : type(SD_UNKNOWN), timestamp(0.) {};
  sd_record_hdr(sensor_data_record_type type, double ts)
      : type(type), timestamp(ts)
  {
  }
};
//////////////////////////////////////////////////////////////

/**
 * @brief Container for data records received from logger
 *
 * Generic container using discriminated union pattern for storing different
 * types of sensor data from SD card logger. Header determines active data type.
 */
struct sd_record {
  sd_record_hdr hdr;  ///< Record header with type and metadata
  /**
   * @brief Union for different sensor data types
   */
  union data_t {
    data_t() {};
    enu_accelerometer acc;              ///< accelerometer data (ENU)
    gps_coordinate gps;                 ///< gps coordinate (location + speed)
    raw_enu_accelerometer raw_enu_acc;  ///< raw enu accelerometer data (linear
                                        ///< accelerometer + quaternion)
  } data;                               ///< sensor data storage

  sd_record() = default;
  sd_record(sd_record_hdr hdr, enu_accelerometer acc) : hdr(hdr)
  {
    data.acc = acc;
  }
  sd_record(sd_record_hdr hdr, gps_coordinate gps) : hdr(hdr)
  {
    data.gps = gps;
  }
};
//////////////////////////////////////////////////////////////

std::string sdr_serialize_str(const sd_record &rec);

enum sdr_deserialize_error {
  SDRDE_SUCCESS = 0,
  SDRDE_WRONG_HDR_SEPARATOR = 1,
  SDRDE_UNEXPECTED_FMT = 2,
  SDRDE_UNSUPPORTED = 3,
  SDRDE_UNDEFINED
};
sdr_deserialize_error sdr_deserialize_str(const std::string &str,
                                          sd_record &rec);

#endif  // SENSOR_DATA_H
