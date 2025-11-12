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
struct Params {
    LayerParams<INPUT_DIM, H1> L0;
    LayerParams<H1, OUTPUT_DIM> L1;
};

//CONTEXT
struct Context {
    LayerContext<INPUT_DIM, H1> C0;
    LayerContext<H1, OUTPUT_DIM> C1;
};

#endif