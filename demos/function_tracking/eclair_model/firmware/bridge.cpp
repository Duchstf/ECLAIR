/*
* This file is the C-PYTHON BRIDGE for CPU SIMULATION.
*
* It provides a hard-coded 'float' interface for Python.
* It internally casts to the HLS types and calls the 'top' function.
*/

#include "firmware/defines.h"
#include "firmware/parameters.h"
#include "firmware/eclair.h"        

// --- Define the global model state ---
Params P;
Context C;

// --- Create static buffers for casting ---
// These hold the data in the HLS-specific types
static input_t hls_input[INPUT_DIM];
static output_t hls_output[OUTPUT_DIM];

// ---  C-style wrapper for Python ctypes ---
extern "C" {
    void eclair_update(
        float* input_py,     
        float* output_py,    
        float feedback_py
    ) {
        
        // --- Cast and copy input data ---
        for (int i = 0; i < INPUT_DIM; ++i) {
            hls_input[i] = (input_t)input_py[i];
        }

        // --- Cast feedback ---
        weight_t hls_feedback = (weight_t)feedback_py;

        // --- Call the HLS function ---
        // This runs the forward/backward pass.
        // It writes its result into 'hls_output'.
        eclair(hls_input, hls_output, hls_feedback);
        
        // --- Cast and copy output data back ---
        for (int i = 0; i < OUTPUT_DIM; ++i) {
            output_py[i] = (float)hls_output[i];
        }
    }
}