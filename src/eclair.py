"""
This file implements the ECLAIR algorithm.

Copyright (c) 2025 Duc Hoang

MIT License
"""
import os, shutil
import ctypes
import tools

class EclairKAN:
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

        # Grid
        self.grid_range = config['grid_range']
        self.grid_size = config['grid_size']

        #Spline
        self.spline_order = config['spline_order']

        #Others
        self.lut_resolution = config['lut_resolution']
        self.dim_defines = ['INPUT_DIM']
        self.dim_defines.extend([f'H{i}' for i in range(1, len(self.layer_sizes) - 1)])
        self.dim_defines.append('OUTPUT_DIM')

        self.learning_rate = config['learning_rate']

        #Keep track of the inputs and outputs of the layers
        self.layer_vars = ['input']
        self.layer_vars.extend([f'layer{i}_out' for i in range(1,  len(self.layer_sizes) - 1)])
        self.layer_vars.append('output')

        #HLS API
        self.lib = None
        self.c_update_func = None
        self.input_dim = self.layer_sizes[0]
        self.output_dim = self.layer_sizes[-1]

        #Create the model using HLS backend and compile it to a CPU-loadable shared library
        print("Setting up ECLAIR framework ...")
        self._create_model()

    #----------------------------HELPERS---------------------------------
    def _format_cpp_array(self, arr):
        """Helper to format a 1D numpy array into a C++ initializer list."""
        if arr.ndim != 1:
            raise ValueError(f"Array must be 1D for formatting, but got {arr.ndim} dims")
        # Format as "{ weight_t(val1), weight_t(val2), ... }"
        # Using scientific notation (e.g., .8e) ensures precision is kept
        vals = ", ".join([f"weight_t({x:.8e})" for x in arr])
        return f"{{ {vals} }}"
    
    #----------------------------WRITERS---------------------------------
    def _create_model(self):

        #Create the model directories
        os.makedirs(self.model_dir, exist_ok=True)
        os.makedirs(f"{self.model_dir}/firmware", exist_ok=True)

        #Start from the templates
        self._write_defines_h()
        self._write_parameters_h()
        self._write_components_h()
        self._write_eclair_cpp()

        pass

    def _write_defines_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/defines.h")
        outfile_path = f"{self.model_dir}/firmware/defines.h"

        # Model architecture
        arch = []
        arch.append(f"#define INPUT_DIM {self.layer_sizes[0]}\n")
        for i, v in enumerate(self.layer_sizes[1:-1], 1):
            arch.append(f"#define H{i} {v}\n")
        arch.append(f"#define OUTPUT_DIM {self.layer_sizes[-1]}\n")
        arch.append(f"#define SPLINE_ORDER {self.spline_order}\n")
        arch.append(f"#define NUM_BASIS {self.spline_order + 1}\n")
        arch.append(f"#define GRID_SIZE {self.grid_size}\n")
        arch.append(f"#define COEFF {self.grid_size + self.spline_order}\n")
        model_arch = "".join(arch)

        #Lut Resolution
        lut_res = f"#define LUT_RESOLUTION {self.lut_resolution}\n"

        #Quantization Parameters
        quant = [f"typedef {self.model_precision} weight_t;\n"]
        quant.append(f"typedef {self.input_precision} input_t;\n")
        quant.append(f"typedef {self.output_precision} output_t;\n")
        quant = "".join(quant)

        #Grid
        h_step = (self.grid_range[1] - self.grid_range[0]) / self.grid_size
        grid = (
            f"static const weight_t GRID_MIN = weight_t({self.grid_range[0]});\n"
            f"static const weight_t GRID_MAX = weight_t({self.grid_range[1]});\n"
            f"static const weight_t H = weight_t({h_step});\n"
            f"static const weight_t INV_H = weight_t({1/h_step});\n"
        )

        #Learning Rate
        learning_rate = f"static const weight_t LR = weight_t({self.learning_rate});\n"

        #Insertion map
        insertions = {
            "// MODEL ARCHITECTURE": model_arch,
            "// LUT RESOLUTION": lut_res,
            "// QUANTIZATION": quant,
            "// GRID": grid,
            "// LEARNING RATE": learning_rate
            }

        #write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

    def _write_parameters_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/parameters.h")
        outfile_path = f"{self.model_dir}/firmware/parameters.h"

        # --- Generate the BasisLUT struct definition ---
        # (This defines the *type*)
        basis_lut_members = []
        for i in range(self.spline_order + 1):
            basis_lut_members.append(f"    weight_t B{i}[LUT_RESOLUTION];")
            basis_lut_members.append(f"    weight_t dB{i}[LUT_RESOLUTION];")
        
        basis_lut_struct = "struct BasisLUT {\n" + "\n".join(basis_lut_members) + "\n};\n"

        # --- Generate the numerical values for the global LUT instance ---
        # (This defines the actual *data*)
        
        # Call the function from tools.py to get the numerical data
        basis_lut, derivative_lut = tools.generate_spline_luts(
            self.spline_order,
            self.lut_resolution,
            self.grid_range,
            self.grid_size
        )
        # The returned arrays have shape (lut_resolution, spline_order + 1)
        
        lut_initializers = []
        for i in range(self.spline_order + 1):
            # Get the i-th basis function array (column)
            b_vals = self._format_cpp_array(basis_lut[:, i])
            lut_initializers.append(f"    {b_vals},")

            # Get the i-th derivative array (column)
            db_vals = self._format_cpp_array(derivative_lut[:, i])
            # Add a comma unless it's the very last element
            if i < self.spline_order:
                lut_initializers.append(f"    {db_vals},")
            else:
                lut_initializers.append(f"    {db_vals}")

        # Create the C++ string for the global constant instance
        # This instance will live in the header file as read-only data
        lut_instance_str = "static const BasisLUT LUT = {\n"
        lut_instance_str += "\n".join(lut_initializers)
        lut_instance_str += "\n};\n"
        lut_instance_str += "#pragma HLS ARRAY_PARTITION variable=LUT complete dim=0\n"

        # Combine the struct *definition* and the *instance*
        basis_luts_all = basis_lut_struct + "\n" + lut_instance_str

        # --- Generate the KANParams struct ---
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


        # ---Create the insertion map and write to the file---
        insertions = {
            "//BASIS-LUTS": basis_luts_all, # Insert both struct and instance
            "//MODEL": model_params,
            "//CONTEXT": model_context
            }

        # write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

    def _write_components_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/components.h")
        outfile_path = f"{self.model_dir}/firmware/components.h"

        # Write out the look up and addition explicitly
        basis_lookup = []
        accumulation = ["            o_sum +="]

        weight_update_input_output = []
       
        for spline_i in range(0, self.spline_order + 1):

            #Forward
            basis_lookup.append(f"            weight_t b{spline_i} = LUT.B{spline_i}[ui];\n")

            if spline_i != 0: accumulation.append(f" + L.Ws[o][i][k + {spline_i}] * b{spline_i}") 
            else: accumulation.append(f" L.Ws[o][i][k] * b{spline_i}") 

            #Backprop
            weight_update_input_output.append(f"            L.Ws[o][i][k] -= delta * LUT.B{spline_i}[u_index];\n")

        #Join them all into strings
        basis_lookup = "".join(basis_lookup)
        accumulation = "".join(accumulation) + ";"
        weight_update_input_output = "".join(weight_update_input_output)

        insertions = {
            
            #Forward
            "//spline-lookup": basis_lookup,
            "//spline-accumulation":accumulation,

            #Backprop
            "//weight-update-input-output": weight_update_input_output
        }

        # write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

    def _write_eclair_cpp(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/eclair.cpp")
        outfile_path = f"{self.model_dir}/firmware/eclair.cpp"

        #Define forward pass
        forward_pass = []
        variable_definitions = []
        
        for layer_i in range(self.num_layers):
            in_dim = self.dim_defines[layer_i]
            out_dim = self.dim_defines[layer_i+1]

            input_var = self.layer_vars[layer_i]
            output_var = self.layer_vars[layer_i + 1]

            if output_var != 'output': variable_definitions.append(f"    weight_t {output_var}[{out_dim}];\n") 
            forward_pass.append(f"    forward_layer<{in_dim}, {out_dim}>({input_var}, {output_var}, P.L{layer_i});\n")

        variable_definitions = "".join(variable_definitions)
        forward_pass = "".join(forward_pass)

        #Writing the backward pass
        backward_pass = []
        if self.num_layers == 1: #There is only one layer that is connected to both the inputs and outputs
            in_dim = self.dim_defines[0]
            out_dim = self.dim_defines[1]

            backward_pass.append(f"    backward_input_output<{in_dim}, {out_dim}>(P.L0, C.C0, feedback);\n")
        else:
            raise ValueError("Only one layer is supported for now")

        backward_pass = "".join(backward_pass)

        insertions = {
            "//variable-definitions": variable_definitions,
            "//forward-pass": forward_pass,
            "//backward-pass": backward_pass
        }

        # write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

        #Also copy the bridge
        shutil.copy(os.path.join(os.path.dirname(__file__), "templates/bridge.cpp"), f"{self.model_dir}/firmware/bridge.cpp")
        shutil.copy(os.path.join(os.path.dirname(__file__), "templates/eclair.h"), f"{self.model_dir}/firmware/eclair.h")

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
            f"{self.model_dir}/firmware/eclair.cpp "           # <-- The HLS logic
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

        

        print("Compilation successful.")

    def update(self, x, t, feedback):
        """Updates the model with a new input and feedback."""

        if self.c_update_func is None:
            raise RuntimeError("Model is not compiled. Call .compile() first.")

        # Create a numpy array to hold the C++ output
        pred_data = np.zeros(self.output_dim, dtype=np.float32)

        if self.output_dim == 1: return pred_data[0]
        return pred_data