"""
This file implements the ECLAIR algorithm.

Copyright (c) 2025 Duc Hoang

MIT License
"""
import os

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
        self._write_define_h()


        pass

    def _write_define_h(self):

        # Path to template
        template_path = os.path.join(os.path.dirname(__file__), "templates/defines.h")
        output_path = f"{self.model_dir}/firmware/defines.h"

        # Read the template content
        with open(template_path, "r") as f: lines = f.readlines()

        # Model architecture
        arch = []
        arch.append(f"#define INPUT_DIM {self.layer_sizes[0]}\n")
        for i, v in enumerate(self.layer_sizes[1:-1], 1):
            arch.append(f"#define H{i} {v}\n")
        arch.append(f"#define OUTPUT_DIM {self.layer_sizes[-1]}\n")
        model_arch = "".join(arch)

        lut_res = f"#define LUT_RESOLUTION {self.lut_resolution}\n"
        quant = f"typedef {self.model_quantization} weight_t;\n"
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
            "// GRID": grid,
        }

        # Insert generated content below comments
        new_lines = []
        for line in lines:
            new_lines.append(line)
            for key, content in insertions.items():
                if key in line:
                    new_lines.append(content)

        # Write final header file
        with open(output_path, "w") as f:
            f.writelines(new_lines)

