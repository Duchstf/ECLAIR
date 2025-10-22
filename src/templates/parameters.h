#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "defines.h"

// BASIS LUTS

// LAYER 
template<int IN_DIM, int OUT_DIM>
struct LayerKAN {
    weight_t Ws[OUT_DIM][IN_DIM][COEFF];
};

// MODEL



#endif