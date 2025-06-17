# Install script for directory: /home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/GeographicLib-dev" TYPE FILE FILES
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/CMakeLists.txt"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Accumulator.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-AlbersEqualArea.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-AuxAngle.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-AuxLatitude.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-AzimuthalEquidistant.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-CassiniSoldner.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-CircularEngine.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Constants.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-DMS.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-DST.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Ellipsoid.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-EllipticFunction.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GARS.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeoCoords.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geocentric.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geodesic.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geodesic-small.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeodesicExact.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeodesicLine.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeodesicLineExact.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GeographicErr.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geohash.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Geoid.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Georef.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Gnomonic.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GravityCircle.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-GravityModel.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Intersect.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-LambertConformalConic.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-LocalCartesian.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-MGRS.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-MagneticCircle.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-MagneticModel.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Math.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-NearestNeighbor.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-NormalGravity.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-OSGB.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-PolarStereographic.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-PolygonArea.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Rhumb.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-RhumbLine.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalEngine.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalHarmonic.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalHarmonic1.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-SphericalHarmonic2.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-TransverseMercator.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-TransverseMercatorExact.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-UTMUPS.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/example-Utility.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/GeoidToGTX.cpp"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/geographiclib/examples/make-egmcof.cpp"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/build/filter/external/geographiclib/examples/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
