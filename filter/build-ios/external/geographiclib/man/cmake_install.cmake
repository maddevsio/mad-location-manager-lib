# Install script for directory: /Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/geographiclib/man

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/CartConvert.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/ConicProj.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/GeodesicProj.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/GeoConvert.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/GeodSolve.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/GeoidEval.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/Gravity.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/IntersectTool.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/MagneticField.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/Planimeter.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/RhumbSolve.1"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/TransverseMercatorProj.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man8" TYPE FILE FILES
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/geographiclib-get-geoids.8"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/geographiclib-get-gravity.8"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/geographiclib/man/geographiclib-get-magnetic.8"
    )
endif()

