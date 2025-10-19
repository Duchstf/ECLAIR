#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "defines.h"

// BASIS LUTS

// LAYER 
template<int IN_DIM, int OUT_DIM>
struct LayerKAN {
    // base (dense) weights Wb[out][in]
    weight_t Wb[OUT_DIM][IN_DIM];
    // spline weights Ws[out][in][COEFF]
    weight_t Ws[OUT_DIM][IN_DIM][COEFF];
};

// MODEL



#endif