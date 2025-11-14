#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "defines.h"

//BASIS-LUTS

//FORWARD-CONTEXT
template<int IN_DIM, int OUT_DIM>
struct LayerContext {
    int k[OUT_DIM][IN_DIM];
    int u_index[OUT_DIM][IN_DIM];
};

//LAYER 
template<int IN_DIM, int OUT_DIM>
struct LayerParams {
    weight_t Ws[OUT_DIM][IN_DIM][COEFF];
};

//MODEL

//CONTEXT

//PARAM-INIT

#endif