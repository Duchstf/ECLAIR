#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"

// MODEL ARCHITECTURE
#define INPUT_DIM 1
#define H1 20
#define OUTPUT_DIM 1

// QUANTIZATION
typedef ap_fixed<16, 6, AP_RND_CONV, AP_SAT> weight_t;
typedef ap_fixed<16, 6, AP_RND_CONV, AP_SAT> input_t;
typedef ap_fixed<16, 6, AP_RND_CONV, AP_SAT> output_t;

// LEARNING RATE
static const weight_t LR = weight_t(0.15);

#endif