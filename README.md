# mad-location-manager filter

This is a library for GPS and Accelerometer data "fusion" with a Kalman filter. All code is written in C++. It helps to improve position accuracy and GPS distance calculation on mobile devices for drivers' and couriers' apps. Additionally, it can be used for precise tracking in on-demand services.


This repository contains 2 parts:
- C++ library for GPS and Accelerometer data "fusion" with Kalman filter.
- Generator/visualizer - a GTK-based application to test this filter

[Blog (English version)](https://maddevs.io/blog/reduce-gps-data-error-on-android-with-kalman-filter-and-accelerometer/)

[Blog (Russian version)](https://medium.com/maddevs-io/ru-reduce-gps-data-error-on-android-with-kalman-filter-and-accelerometer-b81f1026e06c)


[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Developed by Mad Devs](https://maddevs.io/badge-light.svg)](https://maddevs.io)

## Key differences from the [old version](https://github.com/maddevsio/mad-location-manager)

- Rewrote filter using C++ from scratch
- All matrix operations are implemented with [libeigen](https://eigen.tuxfamily.org/)
- All geographic operations, distance calculations, etc., are made with [GeographicLib](https://geographiclib.sourceforge.io/)
- Changed process noise matrix (Q). See the math behind it [here](https://github.com/rlabbe/Kalman-and-Bayesian-Filters-in-Python/blob/master/07-Kalman-Filter-Math.ipynb)
- Fixed bug related to `estimate covariance matrix` (P)
- Changed the method of how ENU (east-north-up) acceleration is calculated. Migrated from the rotation matrix to quaternions

## What can "Mad Location Manager" do?

This module helps to increase GPS coordinates accuracy and also:
* reduces the errors in route tracking;
* decreases the noise from Low-class smartphones;
* excludes sharp «jumps» to the points remote from a real route;
* eliminates additional distance when the object is motionless;
* filters errors duу to the short-term loss of GPS-signal.

## Requirements

- cmake
- git
- pkg-config
- gkt4
- libshumate

## Project structure
- Root contains CMakeLists.txt for building visualizer
- Filter contains Kalman filter implementation itself

## How to build filter/visualizer

These are CMake-based projects. To build them, use the following commands:

```
cmake -B build
cmake --build build -j12
```

Then run `build/mlm_visualizer`

## How to run tests

```
cmake -B build
cmake --build build -j12
```

Then run `build/filter/filter_unit_tests`

## How to use filter

See `filter/mlm.h` and `filter/sensor_data.h` for details. But overall, the process looks like this:
1. Create the MLM object `mlm`. 
2. When the accelerometer vector in ENU is ready, feed it to `mlm` (`bool process_acc_data(const enu_accelerometer &acc, double time_sec);`)
3. When the GPS coordinate is ready, feed it to `mlm` (`void process_gps_data(const gps_coordinate &gps, double time_sec);`)
4. After receiving each GPS coordinate, get the filtered coordinate from `mlm` (`gps_coordinate predicted_coordinate() const;`)

An example of all steps described above can be found [here](https://github.com/maddevsio/mad-location-manager-lib/blob/0eccabb8eeadc7d4c2233d1b24285d8a879c68e7/src/main_window.cpp#L906C6-L906C40)

An example of how to build **Android** is in [wiki](https://github.com/maddevsio/mad-location-manager-lib/wiki/Android)

## How to use the visualizer

- Build ideal route (Ctrl + mouse left click on a map)
  ![image](https://github.com/user-attachments/assets/14b6305f-202f-49d0-bd0a-44db34fe98f5)
- Set the noise level for the GPS and accelerometer and push the "generate" button in "Generator settings" section
  ![image](https://github.com/user-attachments/assets/cbe9bb97-7e8c-472d-b9e7-ec6314c847ab)
- Set sigmas for MLM filter and push the "generate" button in "MLM filter" section
  ![image](https://github.com/user-attachments/assets/3a952ac0-5c1f-4780-a2b6-1390a0f8a7b7)  
- After this, there will be three layers available: ideal data, generated (noisy) data, and filtered route.
  ![image](https://github.com/user-attachments/assets/fe738066-dc17-43f8-aa93-12cceb4cb919)

## The roadmap

### Filter
- [x] Implement Kalman filter
- [x] Fix bugs
- [ ] Clear and clean documentation, probably doxygen
- [ ] Refactor and optimize
- [ ] Add accelerometer bias into model (probably it's not necessary, because filter shows worse results than without bias in model, but we need to try to tune bias level)  

### Visualizer 

- [x] Implement a route visualizer as a desktop application
- [ ] Implement a method to pick the best filter parameters
- [ ] Maybe it's better to rewrite the main window using gtkmm (C++ gtk binding)
- [ ] Rewrite UI using [Cambalache](https://gitlab.gnome.org/jpu/cambalache) + Gtk builder

## Theory

Kalman filtering, also known as linear quadratic estimation (LQE), is an algorithm that uses a series of measurements observed over time, containing statistical noise and other inaccuracies, and produces estimates of unknown variables that tend to be more accurate than those based on a single measurement alone, by estimating a joint probability distribution over the variables for each timeframe.

You can get more details about the filter [here](https://en.wikipedia.org/wiki/Kalman_filter).

The filter is a de facto standard solution in navigation systems. The project simply defines the given data and implements some math.

The project uses 2 data sources: GPS and accelerometer. GPS coordinates are not very accurate, but each of them doesn't depend on previous values. So, there is no accumulation error in this case. On the other hand, the accelerometer has very accurate readings, but it accumulates error related to sensor noise. Therefore, it is necessary to "fuse" these two sources. Kalman is one of the best solutions here.

## License

MIT License

Copyright (c) 2025 Mad Devs

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
