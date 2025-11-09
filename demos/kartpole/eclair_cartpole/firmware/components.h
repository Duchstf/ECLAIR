#ifndef COMPONENTS_H_
#define COMPONENTS_H_

#include <iostream>
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
inline void forward_layer(
    const weight_t x[IN_DIM], 
    weight_t y[OUT_DIM], 
    const LayerParams<IN_DIM, OUT_DIM> &L,
    LayerContext<IN_DIM, OUT_DIM> &C
){
    #pragma HLS PIPELINE

    // Compute for each output node
    ACCUM_O:
    for (int o=0; o<OUT_DIM; o++){
        #pragma HLS UNROLL

        //Partial sums for each input dimension
        weight_t partial_sums[IN_DIM];
        #pragma HLS ARRAY_PARTITION variable=partial_sums complete dim=0
        
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
            
            //store the context
            C.k[o][i] = k;
            C.u_index[o][i] = ui;

            //spline-lookup
            weight_t b0 = LUT.B0[ui];
            weight_t b1 = LUT.B1[ui];
            weight_t b2 = LUT.B2[ui];
            weight_t b3 = LUT.B3[ui];
            
            //spline-accumulation
            partial_sums[i] = L.Ws[o][i][k] * b0 + L.Ws[o][i][k + 1] * b1 + L.Ws[o][i][k + 2] * b2 + L.Ws[o][i][k + 3] * b3;
        }

        weight_t o_sum = 0; 
        REDUCTION_LOOP: for(int i=0; i < IN_DIM; i++){
            #pragma HLS UNROLL
            o_sum += partial_sums[i];
        }

        y[o] = o_sum;
    }

}

template<int IN_DIM, int OUT_DIM, typename up_grad_t>
inline void backward_input( //When the layer is connected to the input
    LayerParams<IN_DIM, OUT_DIM> &L,
    const LayerContext<IN_DIM, OUT_DIM> &C, // Forward-pass context for this layer's input
    const up_grad_t dL_dy[OUT_DIM] // Upstream gradie
){
    #pragma HLS PIPELINE

    BWD_O: for (int o = 0; o < OUT_DIM; o++) {
        #pragma HLS UNROLL

        // Get upstream grad for this output
        weight_t dL_dy_o = dL_dy[o]; 
        weight_t delta = LR * dL_dy_o;

        BWD_I: for (int i = 0; i < IN_DIM; i++){
            #pragma HLS UNROLL

            // Grads for Ws: dL/dWs = dL/dy * dy/dWs = dL/dy * B(x)
            int k = C.k[o][i];
            int u_index = C.u_index[o][i];
            
            //weight-update
            L.Ws[o][i][k + 0] -= delta * LUT.B0[u_index];
            L.Ws[o][i][k + 1] -= delta * LUT.B1[u_index];
            L.Ws[o][i][k + 2] -= delta * LUT.B2[u_index];
            L.Ws[o][i][k + 3] -= delta * LUT.B3[u_index];
        }
    }

}

template<int IN_DIM, int OUT_DIM, typename up_grad_t>
inline void backward( //When the layer is connected to only the output
    LayerParams<IN_DIM, OUT_DIM> &L,
    const LayerContext<IN_DIM, OUT_DIM> &C,
    weight_t dL_dx[IN_DIM], // Downstream gradient
    const up_grad_t dL_dy[OUT_DIM] //Upstream gradient
){  

    #pragma HLS PIPELINE

    INIT_DX: for (int i = 0; i < IN_DIM; i++) {
        #pragma HLS UNROLL
        dL_dx[i] = 0;
    }

    BWD_O: for (int o = 0; o < OUT_DIM; o++) {
        #pragma HLS UNROLL

        // Get upstream grad for this output
        weight_t dL_dy_o = dL_dy[o];
        weight_t delta = LR * dL_dy_o;

        BWD_I: for (int i = 0; i < IN_DIM; i++){
            #pragma HLS UNROLL

            // Grads for Ws: dL/dWs = dL/dy * dy/dWs = dL/dy * B(x)
            int k = C.k[o][i];
            int u_index = C.u_index[o][i];
            weight_t gx = 0; //for downstream calculcation

            //calculate-downstream-grad
            gx += L.Ws[o][i][k + 0] * LUT.dB0[u_index];
            gx += L.Ws[o][i][k + 1] * LUT.dB1[u_index];
            gx += L.Ws[o][i][k + 2] * LUT.dB2[u_index];
            gx += L.Ws[o][i][k + 3] * LUT.dB3[u_index];

            dL_dx[i] += dL_dy_o * gx * INV_H;
            
            //weight-update
            L.Ws[o][i][k + 0] -= delta * LUT.B0[u_index];
            L.Ws[o][i][k + 1] -= delta * LUT.B1[u_index];
            L.Ws[o][i][k + 2] -= delta * LUT.B2[u_index];
            L.Ws[o][i][k + 3] -= delta * LUT.B3[u_index];
        }
    }
}
#endif