#ifndef COMPONENTS_H_
#define COMPONENTS_H_

#include "parameters.h"
#include "defines.h"

static inline void cell_index_and_local_u(weight_t x, int &k, weight_t &u){
    #pragma HLS INLINE

    // Find what cell the input x is in
    weight_t t = (x - GRID_MIN) * INV_H;

    // Clamping logic
    if (t < weight_t(0)) {
        k = 0;
        u = weight_t(0);
    }
    else if (t >= (weight_t)GRID_SIZE) {
        k = GRID_SIZE - 1;
        u = weight_t(1);
    }
    else {
        k = (int)t; 
        u = t - (weight_t)k;
    }
}

template<int IN_DIM, int OUT_DIM>
inline void forward_layer(const weight_t x[IN_DIM], weight_t y[OUT_DIM], const LayerKAN<IN_DIM, OUT_DIM> &L){

    // Compute for each output node
    ACCUM_O:
    for (int o=0, o<OUT_DIM, o++){
        #pragma HLS UNROLL
        weight_t o_sum = 0; 
        
        ACCUM_I:
        for (int i=0; i<IN_DIM; i++){
            #pragma HLS UNROLL

            //Figure out which part of the grid x lies in
            const weight_t xi = x[i];
            int k;        // 0..GRID_SIZE-1
            weight_t u;   // [0,1]
            cell_index_and_local_u(xi, k, u);

            //Get the index for the activation function look up
            const int ui = u * (weight_t)(LUT_RESOLUTION - 1) + weight_t(0.5);

            //spline-accumulation
            o_sum += L.Ws[o][i][k] * b0 + L.Ws[o][i][k + 1] * b1 + L.Ws[o][i][k + 2] * b2 + L.Ws[o][i][k + 3] * b3;
        }

        y[o] = o_sum;
    }

}

#endif