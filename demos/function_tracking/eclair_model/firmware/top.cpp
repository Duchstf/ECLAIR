#include "defines.h"
#include "paramters.h"
#include "components.h"

void eclair(const input_t input, output_t output){
    #pragma HLS DATAFLOW
    
    static KANParams P;

    //forward-pass
    forward<INPUT_DIM, H1>(input, layer1_out, P.L0)
    forward<H1, OUTPUT_DIM>(layer1_out, output, P.L1)

}