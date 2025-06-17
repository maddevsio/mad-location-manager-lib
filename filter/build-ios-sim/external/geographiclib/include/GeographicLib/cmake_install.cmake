# Install script for directory: /Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/GeographicLib" TYPE FILE FILES
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Accumulator.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AlbersEqualArea.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AuxAngle.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AuxLatitude.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AzimuthalEquidistant.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/CassiniSoldner.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/CircularEngine.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Constants.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/DAuxLatitude.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/DMS.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/DST.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Ellipsoid.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/EllipticFunction.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GARS.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeoCoords.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geocentric.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geodesic.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeodesicExact.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeodesicLine.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeodesicLineExact.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geohash.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geoid.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Georef.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Gnomonic.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GravityCircle.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GravityModel.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Intersect.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/LambertConformalConic.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/LocalCartesian.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/MGRS.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/MagneticCircle.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/MagneticModel.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Math.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/NearestNeighbor.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/NormalGravity.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/OSGB.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/PolarStereographic.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/PolygonArea.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Rhumb.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalEngine.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalHarmonic.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalHarmonic1.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalHarmonic2.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/TransverseMercator.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/TransverseMercatorExact.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/UTMUPS.hpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Utility.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/GeographicLib" TYPE FILE FILES "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios-sim/external/geographiclib/include/GeographicLib/Config.h")
endif()

