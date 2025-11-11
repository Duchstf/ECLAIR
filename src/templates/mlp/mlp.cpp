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

    //backward-pass

    //forward-pass

}