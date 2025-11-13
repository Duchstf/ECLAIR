#include "defines.h"
#include "parameters.h"
#include "components.h"

void eclair(const input_t input[INPUT_DIM],
            output_t output[OUTPUT_DIM],
            const output_t feedback[OUTPUT_DIM],
            const ap_uint<2> zero_grad ){

    //Static variables update across eclair function calls
    static Params P;
    static Context C;

    //I/O
    #pragma HLS ARRAY_PARTITION variable=input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=output complete dim=0
    #pragma HLS ARRAY_PARTITION variable=feedback complete dim=0

    //lut-pragmas

    //param-pragmas

    //context-pragmas
    
    //variable-definitions
    
    if (zero_grad == 0){
    //backward-pass
    }
    else{
    //forward-pass
    }

}