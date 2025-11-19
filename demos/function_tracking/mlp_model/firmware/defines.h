#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"

// MODEL ARCHITECTURE
#define INPUT_DIM 1
#define H1 128
#define OUTPUT_DIM 1

// QUANTIZATION
typedef float weight_t;
typedef float input_t;
typedef float output_t;

// LEARNING RATE
static const weight_t LR = weight_t(0.01);

#endif