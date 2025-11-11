# Usage:
#   vitis_hls build.tcl

#If MLP directory exists remove it
if {[file exists "mlp"]} {
    file delete -force "mlp"
}

open_project -reset mlp

set_top mlp
add_files mlp.cpp

#Reset solution
open_solution -reset "solution"

#Specify FPGA and clock constraints
config_compile -name_max_length 80
set_part {{TARGET_PART}}
create_clock -period {{CLOCK_PERIOD}} -name default

#Synthethize
puts "***** C/RTL SYNTHESIS *****"
csynth_design

exit