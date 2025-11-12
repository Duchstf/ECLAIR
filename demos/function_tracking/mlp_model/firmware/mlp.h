#ifndef MLP_H
#define MLP_H

#include "defines.h"

void mlp(const input_t input[INPUT_DIM], 
            output_t output[OUTPUT_DIM], 
            const output_t feedback[OUTPUT_DIM]);

#endif