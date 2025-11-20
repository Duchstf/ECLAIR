"""
This file implements the MLP-ECLAIR algorithm.

Copyright (c) 2025 Duc Hoang

MIT License
"""
import os, shutil
import ctypes
import tools
import numpy as np

class MLP:
    def __init__(self, config):
        self.config = config

        # HLS
        self.model_dir = config['model_name']

        # Network architecture
        self.layer_sizes = config['layer_sizes']
        self.num_layers = len(self.layer_sizes) - 1
        self.model_precision = config['model_precision']
        self.input_precision = config['input_precision']
        self.output_precision = config['output_precision']

        #Others
        self.dim_defines = ['INPUT_DIM']
        self.dim_defines.extend([f'H{i}' for i in range(1, len(self.layer_sizes) - 1)])
        self.dim_defines.append('OUTPUT_DIM')

        self.learning_rate = config['learning_rate']

        #Keep track of the inputs and outputs of the layers
        self.layer_vars_forward = ['input']
        self.layer_vars_forward.extend([f'layer{i}_out' for i in range(1,  len(self.layer_sizes) - 1)])
        self.layer_vars_forward.append('output')

        #HLS API
        self.lib = None
        self.c_update_func = None
        self.input_dim = self.layer_sizes[0]
        self.output_dim = self.layer_sizes[-1]

        #Hardware
        self.fpga_part = config['fpga_part']
        self.clock_period = config['clock_period']

        #Count the number of parameters
        self.num_trainable_params = self._calculate_num_trainable_params()

        #Create the model using HLS backend and compile it to a CPU-loadable shared library
        print("Setting up MLP-ECLAIR framework ...")
        print(f"Number of trainable parameters: {self.num_trainable_params}")
        self._create_model()
    
    #----------------------------HELPERS---------------------------------
    def _calculate_num_trainable_params(self):
        """Calculates the number of trainable parameters in the model."""
        #Weights and biases
        return sum(self.layer_sizes[i] * self.layer_sizes[i+1] + self.layer_sizes[i+1] for i in range(self.num_layers))

    #----------------------------WRITERS---------------------------------
    def _create_model(self):

        #Create the model directories
        os.makedirs(self.model_dir, exist_ok=True)
        os.makedirs(f"{self.model_dir}/firmware", exist_ok=True)

        #Start from the templates
        self._write_defines_h()
        self._write_parameters_h()
        self._write_components_h()
        self._write_mlp_cpp()
        self._write_build_tcl()

    def _write_defines_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/mlp/defines.h")
        outfile_path = f"{self.model_dir}/firmware/defines.h"

        # Model architecture
        arch = []
        arch.append(f"#define INPUT_DIM {self.layer_sizes[0]}\n")
        for i, v in enumerate(self.layer_sizes[1:-1], 1):
            arch.append(f"#define H{i} {v}\n")
        arch.append(f"#define OUTPUT_DIM {self.layer_sizes[-1]}\n")
        model_arch = "".join(arch)

        #Quantization Parameters
        quant = [f"typedef {self.model_precision} weight_t;\n"]
        quant.append(f"typedef {self.input_precision} input_t;\n")
        quant.append(f"typedef {self.output_precision} output_t;\n")
        quant = "".join(quant)    

        #Learning Rate
        learning_rate = f"static const weight_t LR = weight_t({self.learning_rate});\n"

        #Insertion map
        insertions = {
            "// MODEL ARCHITECTURE": model_arch,
            "// QUANTIZATION": quant,
            "// LEARNING RATE": learning_rate
            }

        #write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

    def _write_parameters_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/mlp/parameters.h")
        outfile_path = f"{self.model_dir}/firmware/parameters.h"

        # --- Generate the MLP Parameters struct ---
        # This struct should hold *trainable parameters* (coefficients), 
        # not the read-only LUTs.
        layer_params = []
        layer_context = []
        for i in range(self.num_layers):
            in_dim = self.dim_defines[i]
            out_dim = self.dim_defines[i+1]
            layer_params.append(f"    LayerParams<{in_dim}, {out_dim}> L{i};")
            layer_context.append(f"    LayerContext<{in_dim}, {out_dim}> C{i};")
        
        model_params = "struct Params {\n" + "\n".join(layer_params) + "\n};\n"
        model_context = "struct Context {\n" + "\n".join(layer_context) + "\n};\n"

        layer_init_blocks = []
        
        for i in range(self.num_layers):
            in_dim = self.layer_sizes[i]
            out_dim = self.layer_sizes[i+1]

            #Use kaiming initialization
            std = np.sqrt(1 / in_dim)
            W = np.random.uniform(-std, std, size=(out_dim, in_dim))
            b = np.random.uniform(-std, std, size=out_dim)

            W_cpp = tools.format_cpp_array(W)
            b_cpp = tools.format_cpp_array(b)

            layer_init_blocks.append(f"    {{ {W_cpp}, {b_cpp} }}")

        params_instance_str = "static Params P = {\n" 
        params_instance_str += ",\n".join(layer_init_blocks) 
        params_instance_str += "\n};\n"

        # ---Create the insertion map and write to the file---
        insertions = {
            "//MODEL": model_params,
            "//CONTEXT": model_context,
            "//PARAM-INIT": params_instance_str
            }

        # write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

    def _write_components_h(self):

        # Just copy the file over for now
        template_path = os.path.join(os.path.dirname(__file__), "templates/mlp/components.h")
        outfile_path = f"{self.model_dir}/firmware/components.h"

        shutil.copy(template_path, outfile_path)

    def _write_mlp_cpp(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/mlp/mlp.cpp")
        outfile_path = f"{self.model_dir}/firmware/mlp.cpp"

        #Define the pragmas
        param_pragmas = []
        context_pragmas = []

        for layer_i in range(self.num_layers):
            param_pragmas.append(f"    #pragma HLS ARRAY_PARTITION variable=P.L{layer_i}.W complete\n")
            param_pragmas.append(f"    #pragma HLS ARRAY_PARTITION variable=P.L{layer_i}.b complete\n")

            context_pragmas.append(f"    #pragma HLS ARRAY_PARTITION variable=C.C{layer_i}.x_copy complete\n")
            context_pragmas.append(f"    #pragma HLS ARRAY_PARTITION variable=C.C{layer_i}.z complete\n")

        param_pragmas = "".join(param_pragmas)
        context_pragmas = "".join(context_pragmas)

        #Define forward pass
        forward_pass = []
        variable_definitions = []
        
        for layer_i in range(self.num_layers):
            in_dim = self.dim_defines[layer_i]
            out_dim = self.dim_defines[layer_i+1]

            input_var = self.layer_vars_forward[layer_i]
            output_var = self.layer_vars_forward[layer_i + 1]

            if output_var != 'output': variable_definitions.append(f"    weight_t {output_var}[{out_dim}];\n") 
            if layer_i == self.num_layers - 1:
                forward_pass.append(f"    forward_output_layer<{in_dim}, {out_dim}>({input_var}, {output_var}, P.L{layer_i}, C.C{layer_i});\n")
            else:
                forward_pass.append(f"    forward_layer<{in_dim}, {out_dim}>({input_var}, {output_var}, P.L{layer_i}, C.C{layer_i});\n")

        forward_pass = "".join(forward_pass)

        #Writing the backward pass
        backward_pass = []
        if self.num_layers == 1: #There is only one layer that is connected to both the inputs and outputs
            in_dim = self.dim_defines[0]
            out_dim = self.dim_defines[1]
            backward_pass.append(f"    backward_input<{in_dim}, {out_dim}, output_t>(P.L0, C.C0, feedback);\n")

        elif self.num_layers > 1:
            for layer_i in reversed(range(self.num_layers)): #Looping from the output
                in_dim =  self.dim_defines[layer_i]
                out_dim = self.dim_defines[layer_i + 1]

                #Define the downstream gradient to propagate
                if layer_i > 0:
                    variable_definitions.append(f"    weight_t dL_dx_{layer_i-1}[{in_dim}];\n")

                #Define the backward function calls
                if (layer_i != 0) & ((layer_i == self.num_layers-1)) : #Ouput layer
                    backward_pass.append(f"    backward_output<{in_dim}, {out_dim}, output_t>(P.L{layer_i}, C.C{layer_i}, dL_dx_{self.num_layers-2}, feedback);\n")
                elif layer_i == 0: #Input layer
                    backward_pass.append(f"    backward_input<{in_dim}, {out_dim}, weight_t>(P.L{layer_i}, C.C{layer_i},  dL_dx_0);\n")
                else: #Hideen layer
                    backward_pass.append(f"    backward<{in_dim}, {out_dim}, weight_t>(P.L{layer_i}, C.C{layer_i},  dL_dx_{layer_i-1}, dL_dx_{layer_i});\n")

        variable_definitions = "".join(variable_definitions)
        backward_pass = "".join(backward_pass)

        insertions = {
            "//variable-definitions": variable_definitions,
            "//forward-pass": forward_pass,
            "//backward-pass": backward_pass,

            #Pragmas
            "//param-pragmas": param_pragmas,
            "//context-pragmas": context_pragmas
        }

        # write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

        #Also copy the bridge
        shutil.copy(os.path.join(os.path.dirname(__file__), "templates/mlp/bridge.cpp"), f"{self.model_dir}/firmware/bridge.cpp")
        shutil.copy(os.path.join(os.path.dirname(__file__), "templates/mlp/mlp.h"), f"{self.model_dir}/firmware/mlp.h")

    #----------------------------HLS API---------------------------------
    def compile(self):
        """Compiles the generated HLS C++ files into a 
           shared library for CPU-based testing.
        """

        print("Compiling C++ into shared library...")

        src_dir = os.path.abspath(os.path.dirname(__file__))
        lib_path = os.path.abspath(f"{self.model_dir}/firmware/model.so")
        hls_include_path = os.path.join(src_dir, '../submodule/HLS_arbitrary_Precision_Types/include')
        
        # --- COMPILED COMMAND ---
        compile_cmd = (
            f"g++ -shared -o {lib_path} -fPIC "
            f"{self.model_dir}/firmware/mlp.cpp "           # <-- The HLS logic
            f"{self.model_dir}/firmware/bridge.cpp "  # <-- The Python wrapper
            f"-I. -I {hls_include_path} -std=c++11"
        )
        # ------------------------

        print(f"Running: {compile_cmd}")
        status = os.system(compile_cmd)
        if status != 0:
            raise RuntimeError("C++ compilation failed!")

        print("Loading compiled library and setting up ctypes interface...")
        try:
            self.lib = ctypes.CDLL(f"{self.model_dir}/firmware/model.so")
        except OSError as e:
            print(f"Error loading shared library: {e}")
            raise

        try:
            self.c_update_func = self.lib.mlp_update
        except AttributeError:
            print("Error: Could not find function 'mlp_update' in shared library.")
            raise

        #Set the types
        input_ptr_type = ctypes.POINTER(ctypes.c_float)
        output_ptr_type = ctypes.POINTER(ctypes.c_float)
        feedback_ptr_type = ctypes.POINTER(ctypes.c_float)
        zero_grad_type = ctypes.c_uint

        self.c_update_func.argtypes = [input_ptr_type, output_ptr_type, feedback_ptr_type, zero_grad_type]
        self.c_update_func.restype = None

        print("Compilation successful. Interface is ready.")

    def call(self, input_data, feedback, zero_grad):
        """Updates the model with a new input and feedback."""

        if self.c_update_func is None: raise RuntimeError("Model is not compiled. Call .compile() first.")
        if not isinstance(input_data, np.ndarray): input_data = np.array(input_data)
        if not isinstance(feedback, np.ndarray): feedback = np.array(feedback)
        input_data_flat = input_data.flatten()
        feedback_flat = feedback.flatten()

        if input_data_flat.size != self.input_dim or feedback_flat.size != self.output_dim:
            raise ValueError(f"Input data size ({input_data_flat.size}) does not match model input dim ({self.input_dim}) or feedback size ({feedback_flat.size}) does not match model output dim ({self.output_dim})")


        x_data = input_data_flat.astype(np.float32, copy=False)
        feedback_data = feedback_flat.astype(np.float32, copy=False)

        x_ptr = x_data.ctypes.data_as(ctypes.POINTER(ctypes.c_float))
        feedback_ptr = feedback_data.ctypes.data_as(ctypes.POINTER(ctypes.c_float))

        pred_data = np.zeros(self.output_dim, dtype=np.float32)
        pred_ptr = pred_data.ctypes.data_as(ctypes.POINTER(ctypes.c_float))

        is_zero_grad = ctypes.c_uint(int(zero_grad))

        self.c_update_func(x_ptr, pred_ptr, feedback_ptr, is_zero_grad)

        if self.output_dim == 1: return pred_data[0]
        return pred_data

    #----------------------------HARDWARE---------------------------------
    def _write_build_tcl(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/mlp/build.tcl")
        outfile_path = f"{self.model_dir}/firmware/build.tcl"

        #Replace the variables with user defined
        with open(template_path, 'r') as file:
            template = file.read()
        template = template.replace("{{TARGET_PART}}", self.fpga_part)
        template = template.replace("{{CLOCK_PERIOD}}", self.clock_period)

        with open(outfile_path, 'w') as file:
            file.write(template)

    def build(self):
        """Builds the model for the FPGA."""

        print("Building the model for the FPGA...")

        build_cmd = f"vitis_hls -f {self.model_dir}/firmware/build.tcl"
        status = os.system(build_cmd)
        if status != 0:
            raise RuntimeError("FPGA build failed!")

        print("FPGA build successful.")