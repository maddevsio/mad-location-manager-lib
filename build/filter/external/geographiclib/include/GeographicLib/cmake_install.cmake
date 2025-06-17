# Install script for directory: /home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib

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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/GeographicLib" TYPE FILE FILES
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Accumulator.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AlbersEqualArea.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AuxAngle.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AuxLatitude.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/AzimuthalEquidistant.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/CassiniSoldner.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/CircularEngine.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Constants.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/DAuxLatitude.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/DMS.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/DST.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Ellipsoid.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/EllipticFunction.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GARS.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeoCoords.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geocentric.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geodesic.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeodesicExact.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeodesicLine.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GeodesicLineExact.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geohash.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Geoid.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Georef.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Gnomonic.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GravityCircle.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/GravityModel.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Intersect.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/LambertConformalConic.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/LocalCartesian.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/MGRS.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/MagneticCircle.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/MagneticModel.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Math.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/NearestNeighbor.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/NormalGravity.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/OSGB.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/PolarStereographic.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/PolygonArea.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Rhumb.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalEngine.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalHarmonic.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalHarmonic1.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/SphericalHarmonic2.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/TransverseMercator.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/TransverseMercatorExact.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/UTMUPS.hpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/include/GeographicLib/Utility.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/GeographicLib" TYPE FILE FILES "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/build/filter/external/geographiclib/include/GeographicLib/Config.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/build/filter/external/geographiclib/include/GeographicLib/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
