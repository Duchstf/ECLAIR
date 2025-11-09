#include "defines.h"
#include "parameters.h"
#include "components.h"

void eclair(const input_t input[INPUT_DIM], output_t output[OUTPUT_DIM], const output_t feedback[OUTPUT_DIM]){

    //Static variables update across eclair function calls
    static Params P;
    static Context C;

    //I/O
    #pragma HLS ARRAY_PARTITION variable=input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=output complete dim=0
    #pragma HLS ARRAY_PARTITION variable=feedback complete dim=0

    #pragma HLS ARRAY_PARTITION variable=LUT complete dim=0
    #pragma HLS ARRAY_PARTITION variable=P complete dim=0
    #pragma HLS ARRAY_PARTITION variable=C complete dim=0
    
    //variable-definitions

    //backward-pass
    backward_input<INPUT_DIM, OUTPUT_DIM, output_t>(P.L0, C.C0, feedback);

    //forward-pass
    forward_layer<INPUT_DIM, OUTPUT_DIM>(input, output, P.L0, C.C0);

}