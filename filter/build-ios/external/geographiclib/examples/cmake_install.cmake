# Install script for directory: /Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/GeographicLib-dev" TYPE FILE FILES
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/CMakeLists.txt"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Accumulator.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-AlbersEqualArea.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-AuxAngle.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-AuxLatitude.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-AzimuthalEquidistant.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-CassiniSoldner.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-CircularEngine.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Constants.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-DMS.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-DST.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Ellipsoid.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-EllipticFunction.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GARS.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeoCoords.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geocentric.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geodesic.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geodesic-small.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeodesicExact.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeodesicLine.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeodesicLineExact.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeographicErr.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geohash.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geoid.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Georef.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Gnomonic.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GravityCircle.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-GravityModel.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Intersect.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-LambertConformalConic.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-LocalCartesian.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-MGRS.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-MagneticCircle.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-MagneticModel.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Math.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-NearestNeighbor.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-NormalGravity.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-OSGB.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-PolarStereographic.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-PolygonArea.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Rhumb.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-RhumbLine.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalEngine.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalHarmonic.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalHarmonic1.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalHarmonic2.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-TransverseMercator.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-TransverseMercatorExact.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-UTMUPS.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/example-Utility.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/GeoidToGTX.cpp"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/examples/make-egmcof.cpp"
    )
endif()

