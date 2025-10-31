#include "defines.h"
#include "parameters.h"
#include "components.h"

void eclair(const input_t input[INPUT_DIM], output_t output[OUTPUT_DIM], const output_t feedback[OUTPUT_DIM]){
    #pragma HLS DATAFLOW
    
    static Params P;
    static Context C;

    //backward-pass
    backward_input_output<INPUT_DIM, OUTPUT_DIM>(P.L0, C.C0, feedback);

    //variable-definitions

    //forward-pass
    forward_layer<INPUT_DIM, OUTPUT_DIM>(input, output, P.L0, C.C0);

}