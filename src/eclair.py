"""
This file implements the ECLAIR algorithm.

Copyright (c) 2025 Duc Hoang

MIT License
"""
import os
import tools

class EclairKAN:
    def __init__(self, config):
        self.config = config

        # HLS
        self.model_dir = config['model_name']

        # Network architecture
        self.layer_sizes = config['layer_sizes']
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

        self.last_inputs = [] # Stores inputs to layers for the update pass

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
        )

        #Insertion map
        insertions = {
            "// MODEL ARCHITECTURE": model_arch,
            "// LUT RESOLUTION": lut_res,
            "// QUANTIZATION": quant,
            "// GRID": grid
            }

        #write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

    def _write_parameters_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/parameters.h")
        outfile_path = f"{self.model_dir}/firmware/parameters.h"

        # --- 1. Generate the BasisLUT struct definition ---
        # (This defines the *type*)
        basis_lut_members = []
        for i in range(self.spline_order + 1):
            basis_lut_members.append(f"    weight_t B{i}[LUT_RESOLUTION];")
            basis_lut_members.append(f"    weight_t dB{i}[LUT_RESOLUTION];")
        
        basis_lut_struct = "struct BasisLUT {\n" + "\n".join(basis_lut_members) + "\n};\n"

        # --- 2. Generate the numerical values for the global LUT instance ---
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

        # --- 3. Generate the KANParams struct ---
        # This struct should hold *trainable parameters* (coefficients), 
        # not the read-only LUTs.
        dim_defines = ['INPUT_DIM']
        dim_defines.extend([f'H{i}' for i in range(1, len(self.layer_sizes) - 1)])
        dim_defines.append('OUTPUT_DIM')

        model_layers = []
        for i in range(len(self.layer_sizes) - 1):
            in_dim = dim_defines[i]
            out_dim = dim_defines[i+1]
            model_layers.append(f"    LayerKAN<{in_dim}, {out_dim}> L{i};")

        # NOTE: We no longer add "BasisLUT LUT;" here.
        # Your LayerKAN C++ implementation should be written to 
        # use the 'GLOBAL_LUT' instance directly.
        
        model_params = "struct KANParams {\n" + "\n".join(model_layers) + "\n};"

        # --- 4. Create the insertion map and write to the file. ---
        insertions = {
            "// BASIS LUTS": basis_luts_all, # Insert both struct and instance
            "// MODEL": model_params
            }

        # write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

    def _write_components_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/components.h")
        outfile_path = f"{self.model_dir}/firmware/components.h"

        accumulation = ["            o_sum += layer.Ws[o][i][k] * b0"]
        for spline_i in range(1, self.spline_order + 1):
            accumulation.append(f" + layer.Ws[o][i][k + {spline_i}] * b{spline_i}")
        accumulation = "".join(accumulation) + ";"

        insertions = {
            "//spline-accumulation":accumulation
        }

        # write to file
        tools.insert_to_file(template_path, outfile_path, insertions)

        pass