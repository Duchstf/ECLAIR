#ifndef COMPONENTS_H_
#define COMPONENTS_H_

#include <iostream>
#include "parameters.h" // Assuming weight_t and LR are defined here
#include "defines.h"    // Assuming any other shared constants are here

// --- Activation Function ---
static inline weight_t relu(weight_t z) {
    #pragma HLS INLINE
    return (z > weight_t(0)) ? z : weight_t(0);
}

static inline weight_t relu_grad(weight_t z) {
    #pragma HLS INLINE
    return (z > weight_t(0)) ? weight_t(1) : weight_t(0);
}


template<int IN_DIM, int OUT_DIM>
inline void forward_layer(
    const weight_t x[IN_DIM], 
    weight_t y[OUT_DIM], 
    const LayerParams<IN_DIM, OUT_DIM> &L,
    LayerContext<IN_DIM, OUT_DIM> &C
){

    // Save input 'x' to context for use in backward pass (dL/dW)
    COPY_X:
    for (int i = 0; i < IN_DIM; i++) {
        #pragma HLS UNROLL
        C.x_copy[i] = x[i];
    }

    // Compute for each output node
    FWD_O:
    for (int o=0; o<OUT_DIM; o++){
        #pragma HLS PIPELINE

        // 1. Affine Transform: z[o] = sum(W[o][i] * x[i]) + b[o]
        weight_t z_o = L.b[o];
        
        FWD_I:
        for (int i=0; i<IN_DIM; i++){
            #pragma HLS UNROLL
            z_o += L.W[o][i] * x[i];
        }

        // Save pre-activation 'z' to context for backward pass (f'(z))
        C.z[o] = z_o;    
        
        // 2. Activation: y[o] = f(z[o])
        y[o] = relu(z_o); 
    }
}


// --- MLP Backward Function (Input Layer) ---
/**
 * Performs the backward pass for the *first* layer (connected to input).
 * This function only updates weights (W) and biases (b).
 * It does *not* compute the downstream gradient dL/dx.
 */
template<int IN_DIM, int OUT_DIM, typename up_grad_t>
inline void backward_input( //When the layer is connected to the input
    LayerParams<IN_DIM, OUT_DIM> &L,
    const LayerContext<IN_DIM, OUT_DIM> &C, // Forward-pass context
    const up_grad_t dL_dy[OUT_DIM] // Upstream gradient (dL/dy)
){
    BWD_O: for (int o = 0; o < OUT_DIM; o++) {
        #pragma HLS PIPELINE

        weight_t z_o     = C.z[o];     // Get pre-activation z
        weight_t dL_dy_o = dL_dy[o]; // Get upstream gradient

        // Gradient of loss w.r.t. pre-activation z
        // dL/dz = dL/dy * f'(z)
        weight_t dL_dz_o = dL_dy_o * relu_grad(z_o);

        // Scaled delta for updates
        weight_t delta = LR * dL_dz_o;

        // Update bias: b = b - LR * dL/db
        // dL/db = dL/dz * dz/db = dL/dz * 1
        L.b[o] -= delta;

        // Update weights: W = W - LR * dL/dW
        // dL/dW[o][i] = dL/dz[o] * dz/dW[o][i] = dL/dz[o] * x[i]
        BWD_I_UPD: for (int i = 0; i < IN_DIM; i++){
            #pragma HLS UNROLL
            L.W[o][i] -= delta * C.x_copy[i];
        }
    }
}


// --- MLP Backward Function (Hidden/Output Layer) ---
/**
 * Performs the full backward pass for a hidden or output layer.
 * This function:
 * 1. Updates weights (W) and biases (b).
 * 2. Computes the downstream gradient dL/dx to pass to the previous layer.
 */
template<int IN_DIM, int OUT_DIM, typename up_grad_t>
inline void backward( //When the layer is connected to only the output
    LayerParams<IN_DIM, OUT_DIM> &L,
    const LayerContext<IN_DIM, OUT_DIM> &C,
    weight_t dL_dx[IN_DIM], // Downstream gradient (dL/dx)
    const up_grad_t dL_dy[OUT_DIM] //Upstream gradient (dL/dy)
){  

    // Initialize downstream gradient to zero
    INIT_DX: for (int i = 0; i < IN_DIM; i++) {
        #pragma HLS UNROLL
        dL_dx[i] = 0;
    }

    // Loop over all outputs (neurons) in this layer
    BWD_O: for (int o = 0; o < OUT_DIM; o++) {
        #pragma HLS PIPELINE 

        weight_t z_o     = C.z[o];
        weight_t dL_dy_o = dL_dy[o];

        // Gradient term: dL/dz[o] = dL/dy[o] * f'(z[o])
        weight_t dL_dz_o = dL_dy_o * relu_grad(z_o);
        
        // Update term: delta = LR * dL/dz[o]
        weight_t delta = LR * dL_dz_o;

        // --- Update bias ---
        // dL/db[o] = dL/dz[o]
        L.b[o] -= delta;

        // Loop over all inputs to this layer
        BWD_I: for (int i = 0; i < IN_DIM; i++){
            #pragma HLS UNROLL

            // Get the weight *before* the update for the dL/dx calculation
            weight_t W_oi_old = L.W[o][i];

            // --- Downstream gradient calculation ---
            // dL/dx[i] = sum_over_o( dL/dz[o] * dz[o]/dx[i] )
            // dz[o]/dx[i] = W[o][i]
            // So, dL/dx[i] += dL_dz_o * W[o][i]
            dL_dx[i] += dL_dz_o * W_oi_old;

            // --- Weight update ---
            // dL/dW[o][i] = dL/dz[o] * dz[o]/dW[o][i] = dL/dz[o] * x[i]
            L.W[o][i] -= delta * C.x_copy[i];
        }
    }
}

#endif