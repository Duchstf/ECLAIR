#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "defines.h"

// BASIS LUTS
struct BasisLUT {
    weight_t B0[LUT_RESOLUTION];
    weight_t dB0[LUT_RESOLUTION];
    weight_t B1[LUT_RESOLUTION];
    weight_t dB1[LUT_RESOLUTION];
    weight_t B2[LUT_RESOLUTION];
    weight_t dB2[LUT_RESOLUTION];
    weight_t B3[LUT_RESOLUTION];
    weight_t dB3[LUT_RESOLUTION];
};

// LAYER 
template<int IN_DIM, int OUT_DIM>
struct LayerKAN {
    // base (dense) weights Wb[out][in]
    weight_t Wb[OUT_DIM][IN_DIM];
    // spline weights Ws[out][in][COEFF]
    weight_t Ws[OUT_DIM][IN_DIM][COEFF];
};

// MODEL
struct KANParams {
    LayerKAN<INPUT_DIM, H1> L0;
    LayerKAN<H1, OUTPUT_DIM> L1;
    BasisLUT LUT;
};


#endif