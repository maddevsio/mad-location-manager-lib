# Install script for directory: /Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/AdolcForward"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/AlignedVector3"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/ArpackSupport"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/AutoDiff"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/BVH"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/EulerAngles"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/FFT"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/IterativeSolvers"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/KroneckerProduct"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/MatrixFunctions"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/MPRealSupport"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/NNLS"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/NonLinearOptimization"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/NumericalDiff"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/OpenGLSupport"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/Polynomials"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/SparseExtra"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/SpecialFunctions"
    "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/Splines"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/pavel/Desktop/work/MLM/mad-location-manager-lib/filter/build-ios/external/eigen/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

