# Install script for directory: /home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/AdolcForward"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/AlignedVector3"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/ArpackSupport"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/AutoDiff"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/BVH"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/EulerAngles"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/FFT"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/IterativeSolvers"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/KroneckerProduct"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/MatrixFunctions"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/MPRealSupport"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/NNLS"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/NonLinearOptimization"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/NumericalDiff"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/OpenGLSupport"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/Polynomials"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/SparseExtra"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/SpecialFunctions"
    "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/Splines"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/filter/external/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/build/filter/external/eigen/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/lezh1k/SRC/work/MDPet/mad-location-manager-lib/build/filter/external/eigen/unsupported/Eigen/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
