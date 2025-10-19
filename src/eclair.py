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
        self.model_quantization = config['model_quantization']

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

    def _create_model(self):

        #Create the model directories
        os.makedirs(self.model_dir, exist_ok=True)
        os.makedirs(f"{self.model_dir}/firmware", exist_ok=True)

        #Start from the templates
        self._write_defines_h()
        self._write_parameters_h()

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
        quant = f"typedef {self.model_quantization} weight_t;\n"

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

        # 1. Generate the BasisLUT struct based on spline_order.
        # B-splines of order k have k+1 basis functions (B_0, ..., B_k).
        basis_lut_members = []
        for i in range(self.spline_order + 1):
            basis_lut_members.append(f"    weight_t B{i}[LUT_RESOLUTION];")
            basis_lut_members.append(f"    weight_t dB{i}[LUT_RESOLUTION];")

        basis_luts = "struct BasisLUT {\n" + "\n".join(basis_lut_members) + "\n};\n"


        # 2. Generate the final KANParams struct based on the network layers.
        # Create a list of C++ define names for dimensions for easier lookup,
        # e.g., ['INPUT_DIM', 'H1', 'H2', 'OUTPUT_DIM'].
        dim_defines = ['INPUT_DIM']
        dim_defines.extend([f'H{i}' for i in range(1, len(self.layer_sizes) - 1)])
        dim_defines.append('OUTPUT_DIM')

        # Generate each layer instance string.
        model_layers = []
        for i in range(len(self.layer_sizes) - 1):
            in_dim = dim_defines[i]
            out_dim = dim_defines[i+1]
            model_layers.append(f"    LayerKAN<{in_dim}, {out_dim}> L{i};")

        # Add the LUT instance to the parameters.
        model_layers.append("    BasisLUT LUT;")

        model_params = "struct KANParams {\n" + "\n".join(model_layers) + "\n};"

        # 3. Create the insertion map and write to the file.
        insertions = {
            "// BASIS LUTS": basis_luts,
            "// MODEL": model_params
            }

        #write to file
        tools.insert_to_file(template_path, outfile_path, insertions)


