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

    //lut-pragmas
    #pragma HLS BIND_STORAGE variable=LUT.B0 type=rom_1p impl=lutram
    #pragma HLS BIND_STORAGE variable=LUT.dB0 type=rom_1p impl=lutram
    #pragma HLS BIND_STORAGE variable=LUT.B1 type=rom_1p impl=lutram
    #pragma HLS BIND_STORAGE variable=LUT.dB1 type=rom_1p impl=lutram
    #pragma HLS BIND_STORAGE variable=LUT.B2 type=rom_1p impl=lutram
    #pragma HLS BIND_STORAGE variable=LUT.dB2 type=rom_1p impl=lutram
    #pragma HLS BIND_STORAGE variable=LUT.B3 type=rom_1p impl=lutram
    #pragma HLS BIND_STORAGE variable=LUT.dB3 type=rom_1p impl=lutram

    //param-pragmas
    #pragma HLS BIND_STORAGE variable=P.L0.Ws type=ram_2p impl=lutram
    #pragma HLS ARRAY_PARTITION variable=P.L0.Ws complete dim=1
    #pragma HLS ARRAY_PARTITION variable=P.L0.Ws complete dim=2
    #pragma HLS ARRAY_PARTITION variable=P.L0.Ws cyclic factor=4 dim=3
    #pragma HLS BIND_STORAGE variable=P.L1.Ws type=ram_2p impl=lutram
    #pragma HLS ARRAY_PARTITION variable=P.L1.Ws complete dim=1
    #pragma HLS ARRAY_PARTITION variable=P.L1.Ws complete dim=2
    #pragma HLS ARRAY_PARTITION variable=P.L1.Ws cyclic factor=4 dim=3

    //context-pragmas
    #pragma HLS ARRAY_PARTITION variable=C.C0.k complete
    #pragma HLS ARRAY_PARTITION variable=C.C0.u_index complete
    #pragma HLS ARRAY_PARTITION variable=C.C1.k complete
    #pragma HLS ARRAY_PARTITION variable=C.C1.u_index complete
    
    //variable-definitions
    weight_t layer1_out[H1];
    weight_t dL_dx_0[H1];

    //backward-pass
    backward<H1, OUTPUT_DIM, output_t>(P.L1, C.C1, dL_dx_0, feedback);
    backward_input<INPUT_DIM, H1, weight_t>(P.L0, C.C0,  dL_dx_0);

    //forward-pass
    forward_layer<INPUT_DIM, H1>(input, layer1_out, P.L0, C.C0);
    forward_layer<H1, OUTPUT_DIM>(layer1_out, output, P.L1, C.C1);

}