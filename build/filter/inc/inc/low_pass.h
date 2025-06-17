#ifndef LOW_PASS_H
#define LOW_PASS_H

#include <math.h>

#include <cstddef>
#include <cstring>

/**
 * @brief Digital low-pass filter for arrays of data
 * @tparam T Data type (must support arithmetic operations)
 * @tparam N Array size
 */
template <class T, size_t N>
class low_pass_filter
{
 private:
  double fc;       ///< Cutoff frequency [Hz]  T y[N];
  T y[N];          ///< Filtered output buffer
  bool has_init;   ///< Initialization flag
  double last_ts;  ///< Previous timestamp

 public:
  low_pass_filter(double cutoff_hz)
      : fc(cutoff_hz), has_init(false), last_ts(0.0)
  {
    for (size_t i = 0; i < N; ++i) {
      y[i] = T();
    }
  }

  T* filter(const T (&src)[N], double ts)
  {
    if (!has_init) {
      std::memcpy(y, src, sizeof(T) * N);
      has_init = true;
    } else {
      double dt = ts - last_ts;
      double alpha = dt / ((1.0 / (2.0 * M_PI * fc)) + dt);

      for (size_t i = 0; i < N; ++i) {
        y[i] += alpha * (src[i] - y[i]);
      }
    }
    last_ts = ts;
    return y;
  }
};

#endif
