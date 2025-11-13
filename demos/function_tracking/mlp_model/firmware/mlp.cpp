#include "defines.h"
#include "parameters.h"
#include "components.h"

void mlp(const input_t input[INPUT_DIM], output_t output[OUTPUT_DIM], const output_t feedback[OUTPUT_DIM]){

    //Static variables update across mlp function calls
    static Params P;
    static Context C;

    //I/O
    #pragma HLS ARRAY_PARTITION variable=input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=output complete dim=0
    #pragma HLS ARRAY_PARTITION variable=feedback complete dim=0
    
    //variable-definitions
    weight_t layer1_out[H1];
    weight_t dL_dx_0[H1];

    //backward-pass
    backward_output<H1, OUTPUT_DIM, output_t>(P.L1, C.C1, dL_dx_0, feedback);
    backward_input<INPUT_DIM, H1, weight_t>(P.L0, C.C0,  dL_dx_0);

    //forward-pass
    forward_layer<INPUT_DIM, H1>(input, layer1_out, P.L0, C.C0);
    forward_output_layer<H1, OUTPUT_DIM>(layer1_out, output, P.L1, C.C1);

}