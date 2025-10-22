#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"

// MODEL ARCHITECTURE
#define INPUT_DIM 1
#define OUTPUT_DIM 1
#define SPLINE_ORDER 3
#define GRID_SIZE 5
#define COEFF 8

// LUT RESOLUTION
#define LUT_RESOLUTION 256

// QUANTIZATION
typedef ap_fixed<16, 6, AP_RND_CONV, AP_SAT> weight_t;
typedef ap_fixed<16, 6, AP_RND_CONV, AP_SAT> input_t;
typedef ap_fixed<16, 6, AP_RND_CONV, AP_SAT> output_t;

// GRID
static const weight_t GRID_MIN = weight_t(-1);
static const weight_t GRID_MAX = weight_t(1);
static const weight_t H = weight_t(0.4);

#endif