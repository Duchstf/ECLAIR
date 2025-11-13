#ifndef ECLAIR_H
#define ECLAIR_H

#include "defines.h"

void eclair(const input_t input[INPUT_DIM], 
            output_t output[OUTPUT_DIM], 
            const output_t feedback[OUTPUT_DIM],
            const ap_uint<2> zero_grad);

#endif