#include "defines.h"
#include "parameters.h"
#include "components.h"

void eclair(const input_t input[INPUT_DIM], output_t output[OUTPUT_DIM], const output_t feedback[OUTPUT_DIM]){
    #pragma HLS DATAFLOW
    
    static Params P;
    static Context C;

    //variable-definitions
    weight_t layer1_out[H1];
    weight_t layer2_out[H2];
    weight_t dL_dx_1[H2];
    weight_t dL_dx_0[H1];

    //backward-pass
    backward<H2, OUTPUT_DIM, output_t>(P.L2, C.C2, dL_dx_1, feedback);
    backward<H1, H2, weight_t>(P.L1, C.C1,  dL_dx_0, dL_dx_1);
    backward_input<INPUT_DIM, H1, weight_t>(P.L0, C.C0,  dL_dx_0);

    //forward-pass
    forward_layer<INPUT_DIM, H1>(input, layer1_out, P.L0, C.C0);
    forward_layer<H1, H2>(layer1_out, layer2_out, P.L1, C.C1);
    forward_layer<H2, OUTPUT_DIM>(layer2_out, output, P.L2, C.C2);

}