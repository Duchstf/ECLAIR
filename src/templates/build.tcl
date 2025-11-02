# Usage:
#   vitis_hls build.tcl

#If Eclair directory exists remove it
if {[file exists "Eclair"]} {
    file delete -force "Eclair"
}

open_project -reset Eclair

set_top Eclair
add_files eclair.cpp

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