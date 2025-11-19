#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "defines.h"

// Layer parameters
template<int IN_DIM, int OUT_DIM>
struct LayerParams {
    weight_t W[OUT_DIM][IN_DIM]; // Weight matrix
    weight_t b[OUT_DIM];         // Bias vector
};

template<int IN_DIM, int OUT_DIM>
struct LayerContext {
    weight_t x_copy[IN_DIM]; // Input copy
    weight_t z[OUT_DIM];      // Pre-activation
};

//MODEL

//CONTEXT

//PARAM-INIT

#endif