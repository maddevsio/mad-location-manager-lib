# mad-location-manager filter

This repository contains 2 parts:
- C++ library for GPS and Accelerometer data "fusion" with Kalman filter.

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

## Requirements

- cmake
- git
- pkg-config
- gkt4
- libshumate

## Project structure
- Filter contains Kalman filter implementation itself

## How to build filter

Thes is CMake-based project. To build it, use the following commands:

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

Then run `build/filter_unit_tests`

## How to generate documentation

```
cmake -B build
make -C build docs
```

Then find documentation in `build/docs` folder

## How to use filter

See `filter/mlm.h` and `filter/sensor_data.h` for details. But overall, the process looks like this:
1. Create the MLM object `mlm`. 
2. When the accelerometer vector in ENU is ready, feed it to `mlm` (`bool process_acc_data(const enu_accelerometer &acc, double time_sec);`)
3. When the GPS coordinate is ready, feed it to `mlm` (`void process_gps_data(const gps_coordinate &gps, double time_sec);`)
4. After receiving each GPS coordinate, get the filtered coordinate from `mlm` (`gps_coordinate predicted_coordinate() const;`)

An example of all steps described above can be found [here](https://github.com/maddevsio/mad-location-manager-lib/blob/0eccabb8eeadc7d4c2233d1b24285d8a879c68e7/src/main_window.cpp#L906C6-L906C40)
An example of how to build Android is in [wiki](https://github.com/maddevsio/mad-location-manager-lib/wiki/Android)

## The roadmap

- [x] Implement Kalman filter
- [x] Fix bugs
- [ ] Clear and clean documentation, probably doxygen
- [ ] Refactor and optimize
- [ ] Add accelerometer bias into model (probably it's not necessary, because filter shows worse results than without bias in model, but we need to try to tune bias level)  

## License

MIT License

Copyright (c) 2025 Mad Devs

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
