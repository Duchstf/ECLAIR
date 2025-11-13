/*
* This file is the C-PYTHON BRIDGE for CPU SIMULATION.
*
* It provides a hard-coded 'float' interface for Python.
* It internally casts to the HLS types and calls the 'top' function.
*/

#include <iostream>
#include "defines.h"
#include "parameters.h"
#include "eclair.h"        

// --- Create static buffers for casting ---
// These hold the data in the HLS-specific types
static input_t hls_input[INPUT_DIM];
static output_t hls_output[OUTPUT_DIM];
static output_t hls_feedback[OUTPUT_DIM];
static ap_uint<2> hls_zero_grad;

// ---  C-style wrapper for Python ctypes ---
extern "C" {
    void bridge(
        const float* in,     
        float* out,    
        const float* feedback,
        const uint zero_grad
    ) {
        
        // --- Cast and copy input data ---
        for (int i = 0; i < INPUT_DIM; ++i) {
            hls_input[i] = (input_t)in[i];
        }

        // --- Cast feedback ---
        for (int o = 0; o < OUTPUT_DIM; ++o){
            hls_feedback[o] = output_t(feedback ? feedback[o] : 0.0f);
        }

        //Cast and copy zero grad mode
        hls_zero_grad =  ap_uint<2>(zero_grad);

        // --- Call the HLS function ---
        eclair(hls_input, hls_output, hls_feedback, hls_zero_grad);
        
        // --- Cast and copy output data back ---
        for (int i = 0; i < OUTPUT_DIM; ++i) {
            out[i] = (float)hls_output[i];
        }
    }
}