#include "defines.h"
#include "paramters.h"
#include "components.h"

void eclair(const input_t input[INPUT_DIM], output_t output[OUTPUT_DIM]){
    #pragma HLS DATAFLOW
    
    static KANParams P;

    //variable-definitions
    weight_t layer1_out[H1];

    //forward-pass
    forward<INPUT_DIM, H1>(input, layer1_out, P.L0);
    forward<H1, OUTPUT_DIM>(layer1_out, output, P.L1);

}