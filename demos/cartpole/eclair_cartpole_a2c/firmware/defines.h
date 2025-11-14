#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"

// MODEL ARCHITECTURE
#define INPUT_DIM 4
#define OUTPUT_DIM 3
#define SPLINE_ORDER 3
#define NUM_BASIS 4
#define GRID_SIZE 5
#define COEFF 8

// LUT RESOLUTION
#define LUT_RESOLUTION 256

// QUANTIZATION
typedef float weight_t;
typedef float input_t;
typedef float output_t;

// GRID
static const weight_t GRID_MIN = weight_t(-1);
static const weight_t GRID_MAX = weight_t(1);
static const weight_t H = weight_t(0.4);
static const weight_t INV_H = weight_t(2.5);

// LEARNING RATE
static const weight_t LR = weight_t(0.001);

#endif