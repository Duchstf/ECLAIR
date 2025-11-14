set moduleName forward_layer_4_2_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {forward_layer<4, 2>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict LUT_B0 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict LUT_B1 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict LUT_B2 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict LUT_B3 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_0_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_0_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_0_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_0_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_0_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_0_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_0_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_0_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_1_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_1_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_1_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_1_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_1_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_1_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_1_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_1_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_2_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_2_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_2_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_2_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_2_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_2_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_2_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_2_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_3_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_3_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_3_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_0_3_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_3_0 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_3_1 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_3_2 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZL1P_1_3_3 { MEM_WIDTH 32 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ x_0_val float 32 regular  }
	{ x_1_val float 32 regular  }
	{ x_2_val float 32 regular  }
	{ x_3_val float 32 regular  }
	{ output_0 int 32 regular {pointer 1}  }
	{ output_1 int 32 regular {pointer 1}  }
	{ LUT_B0 float 32 regular {array 256 { 1 } 1 1 } {global 0}  }
	{ LUT_B1 float 32 regular {array 256 { 1 } 1 1 } {global 0}  }
	{ LUT_B2 float 32 regular {array 256 { 1 } 1 1 } {global 0}  }
	{ LUT_B3 float 32 regular {array 256 { 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_0_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_0_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_0_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_0_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_0_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_0_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_0_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_0_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_1_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_1_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_1_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_1_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_1_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_1_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_1_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_1_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_2_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_2_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_2_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_2_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_2_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_2_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_2_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_2_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_3_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_3_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_3_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_0_3_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_3_0 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_3_1 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_3_2 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ p_ZL1P_1_3_3 float 32 regular {array 2 { 1 1 } 1 1 } {global 0}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 int 8 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 int 8 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 int 8 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 int 8 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 int 3 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 int 8 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 int 8 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 int 8 regular {pointer 1} {global 1}  }
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 int 8 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x_0_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "LUT_B0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "LUT_B1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "LUT_B2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "LUT_B3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_0_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_0_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_0_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_0_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_3_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_3_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_3_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_0_3_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_3_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_3_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_3_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL1P_1_3_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 394
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_0_val sc_in sc_lv 32 signal 0 } 
	{ x_1_val sc_in sc_lv 32 signal 1 } 
	{ x_2_val sc_in sc_lv 32 signal 2 } 
	{ x_3_val sc_in sc_lv 32 signal 3 } 
	{ output_0 sc_out sc_lv 32 signal 4 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ output_1 sc_out sc_lv 32 signal 5 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ LUT_B0_address0 sc_out sc_lv 8 signal 6 } 
	{ LUT_B0_ce0 sc_out sc_logic 1 signal 6 } 
	{ LUT_B0_q0 sc_in sc_lv 32 signal 6 } 
	{ LUT_B1_address0 sc_out sc_lv 8 signal 7 } 
	{ LUT_B1_ce0 sc_out sc_logic 1 signal 7 } 
	{ LUT_B1_q0 sc_in sc_lv 32 signal 7 } 
	{ LUT_B2_address0 sc_out sc_lv 8 signal 8 } 
	{ LUT_B2_ce0 sc_out sc_logic 1 signal 8 } 
	{ LUT_B2_q0 sc_in sc_lv 32 signal 8 } 
	{ LUT_B3_address0 sc_out sc_lv 8 signal 9 } 
	{ LUT_B3_ce0 sc_out sc_logic 1 signal 9 } 
	{ LUT_B3_q0 sc_in sc_lv 32 signal 9 } 
	{ p_ZL1P_0_0_0_address0 sc_out sc_lv 1 signal 10 } 
	{ p_ZL1P_0_0_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZL1P_0_0_0_q0 sc_in sc_lv 32 signal 10 } 
	{ p_ZL1P_0_0_0_address1 sc_out sc_lv 1 signal 10 } 
	{ p_ZL1P_0_0_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ p_ZL1P_0_0_0_q1 sc_in sc_lv 32 signal 10 } 
	{ p_ZL1P_0_0_1_address0 sc_out sc_lv 1 signal 11 } 
	{ p_ZL1P_0_0_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_ZL1P_0_0_1_q0 sc_in sc_lv 32 signal 11 } 
	{ p_ZL1P_0_0_1_address1 sc_out sc_lv 1 signal 11 } 
	{ p_ZL1P_0_0_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ p_ZL1P_0_0_1_q1 sc_in sc_lv 32 signal 11 } 
	{ p_ZL1P_0_0_2_address0 sc_out sc_lv 1 signal 12 } 
	{ p_ZL1P_0_0_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_ZL1P_0_0_2_q0 sc_in sc_lv 32 signal 12 } 
	{ p_ZL1P_0_0_2_address1 sc_out sc_lv 1 signal 12 } 
	{ p_ZL1P_0_0_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ p_ZL1P_0_0_2_q1 sc_in sc_lv 32 signal 12 } 
	{ p_ZL1P_0_0_3_address0 sc_out sc_lv 1 signal 13 } 
	{ p_ZL1P_0_0_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_ZL1P_0_0_3_q0 sc_in sc_lv 32 signal 13 } 
	{ p_ZL1P_0_0_3_address1 sc_out sc_lv 1 signal 13 } 
	{ p_ZL1P_0_0_3_ce1 sc_out sc_logic 1 signal 13 } 
	{ p_ZL1P_0_0_3_q1 sc_in sc_lv 32 signal 13 } 
	{ p_ZL1P_1_0_0_address0 sc_out sc_lv 1 signal 14 } 
	{ p_ZL1P_1_0_0_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_ZL1P_1_0_0_q0 sc_in sc_lv 32 signal 14 } 
	{ p_ZL1P_1_0_0_address1 sc_out sc_lv 1 signal 14 } 
	{ p_ZL1P_1_0_0_ce1 sc_out sc_logic 1 signal 14 } 
	{ p_ZL1P_1_0_0_q1 sc_in sc_lv 32 signal 14 } 
	{ p_ZL1P_1_0_1_address0 sc_out sc_lv 1 signal 15 } 
	{ p_ZL1P_1_0_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_ZL1P_1_0_1_q0 sc_in sc_lv 32 signal 15 } 
	{ p_ZL1P_1_0_1_address1 sc_out sc_lv 1 signal 15 } 
	{ p_ZL1P_1_0_1_ce1 sc_out sc_logic 1 signal 15 } 
	{ p_ZL1P_1_0_1_q1 sc_in sc_lv 32 signal 15 } 
	{ p_ZL1P_1_0_2_address0 sc_out sc_lv 1 signal 16 } 
	{ p_ZL1P_1_0_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_ZL1P_1_0_2_q0 sc_in sc_lv 32 signal 16 } 
	{ p_ZL1P_1_0_2_address1 sc_out sc_lv 1 signal 16 } 
	{ p_ZL1P_1_0_2_ce1 sc_out sc_logic 1 signal 16 } 
	{ p_ZL1P_1_0_2_q1 sc_in sc_lv 32 signal 16 } 
	{ p_ZL1P_1_0_3_address0 sc_out sc_lv 1 signal 17 } 
	{ p_ZL1P_1_0_3_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_ZL1P_1_0_3_q0 sc_in sc_lv 32 signal 17 } 
	{ p_ZL1P_1_0_3_address1 sc_out sc_lv 1 signal 17 } 
	{ p_ZL1P_1_0_3_ce1 sc_out sc_logic 1 signal 17 } 
	{ p_ZL1P_1_0_3_q1 sc_in sc_lv 32 signal 17 } 
	{ p_ZL1P_0_1_0_address0 sc_out sc_lv 1 signal 18 } 
	{ p_ZL1P_0_1_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_ZL1P_0_1_0_q0 sc_in sc_lv 32 signal 18 } 
	{ p_ZL1P_0_1_0_address1 sc_out sc_lv 1 signal 18 } 
	{ p_ZL1P_0_1_0_ce1 sc_out sc_logic 1 signal 18 } 
	{ p_ZL1P_0_1_0_q1 sc_in sc_lv 32 signal 18 } 
	{ p_ZL1P_0_1_1_address0 sc_out sc_lv 1 signal 19 } 
	{ p_ZL1P_0_1_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_ZL1P_0_1_1_q0 sc_in sc_lv 32 signal 19 } 
	{ p_ZL1P_0_1_1_address1 sc_out sc_lv 1 signal 19 } 
	{ p_ZL1P_0_1_1_ce1 sc_out sc_logic 1 signal 19 } 
	{ p_ZL1P_0_1_1_q1 sc_in sc_lv 32 signal 19 } 
	{ p_ZL1P_0_1_2_address0 sc_out sc_lv 1 signal 20 } 
	{ p_ZL1P_0_1_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_ZL1P_0_1_2_q0 sc_in sc_lv 32 signal 20 } 
	{ p_ZL1P_0_1_2_address1 sc_out sc_lv 1 signal 20 } 
	{ p_ZL1P_0_1_2_ce1 sc_out sc_logic 1 signal 20 } 
	{ p_ZL1P_0_1_2_q1 sc_in sc_lv 32 signal 20 } 
	{ p_ZL1P_0_1_3_address0 sc_out sc_lv 1 signal 21 } 
	{ p_ZL1P_0_1_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_ZL1P_0_1_3_q0 sc_in sc_lv 32 signal 21 } 
	{ p_ZL1P_0_1_3_address1 sc_out sc_lv 1 signal 21 } 
	{ p_ZL1P_0_1_3_ce1 sc_out sc_logic 1 signal 21 } 
	{ p_ZL1P_0_1_3_q1 sc_in sc_lv 32 signal 21 } 
	{ p_ZL1P_1_1_0_address0 sc_out sc_lv 1 signal 22 } 
	{ p_ZL1P_1_1_0_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_ZL1P_1_1_0_q0 sc_in sc_lv 32 signal 22 } 
	{ p_ZL1P_1_1_0_address1 sc_out sc_lv 1 signal 22 } 
	{ p_ZL1P_1_1_0_ce1 sc_out sc_logic 1 signal 22 } 
	{ p_ZL1P_1_1_0_q1 sc_in sc_lv 32 signal 22 } 
	{ p_ZL1P_1_1_1_address0 sc_out sc_lv 1 signal 23 } 
	{ p_ZL1P_1_1_1_ce0 sc_out sc_logic 1 signal 23 } 
	{ p_ZL1P_1_1_1_q0 sc_in sc_lv 32 signal 23 } 
	{ p_ZL1P_1_1_1_address1 sc_out sc_lv 1 signal 23 } 
	{ p_ZL1P_1_1_1_ce1 sc_out sc_logic 1 signal 23 } 
	{ p_ZL1P_1_1_1_q1 sc_in sc_lv 32 signal 23 } 
	{ p_ZL1P_1_1_2_address0 sc_out sc_lv 1 signal 24 } 
	{ p_ZL1P_1_1_2_ce0 sc_out sc_logic 1 signal 24 } 
	{ p_ZL1P_1_1_2_q0 sc_in sc_lv 32 signal 24 } 
	{ p_ZL1P_1_1_2_address1 sc_out sc_lv 1 signal 24 } 
	{ p_ZL1P_1_1_2_ce1 sc_out sc_logic 1 signal 24 } 
	{ p_ZL1P_1_1_2_q1 sc_in sc_lv 32 signal 24 } 
	{ p_ZL1P_1_1_3_address0 sc_out sc_lv 1 signal 25 } 
	{ p_ZL1P_1_1_3_ce0 sc_out sc_logic 1 signal 25 } 
	{ p_ZL1P_1_1_3_q0 sc_in sc_lv 32 signal 25 } 
	{ p_ZL1P_1_1_3_address1 sc_out sc_lv 1 signal 25 } 
	{ p_ZL1P_1_1_3_ce1 sc_out sc_logic 1 signal 25 } 
	{ p_ZL1P_1_1_3_q1 sc_in sc_lv 32 signal 25 } 
	{ p_ZL1P_0_2_0_address0 sc_out sc_lv 1 signal 26 } 
	{ p_ZL1P_0_2_0_ce0 sc_out sc_logic 1 signal 26 } 
	{ p_ZL1P_0_2_0_q0 sc_in sc_lv 32 signal 26 } 
	{ p_ZL1P_0_2_0_address1 sc_out sc_lv 1 signal 26 } 
	{ p_ZL1P_0_2_0_ce1 sc_out sc_logic 1 signal 26 } 
	{ p_ZL1P_0_2_0_q1 sc_in sc_lv 32 signal 26 } 
	{ p_ZL1P_0_2_1_address0 sc_out sc_lv 1 signal 27 } 
	{ p_ZL1P_0_2_1_ce0 sc_out sc_logic 1 signal 27 } 
	{ p_ZL1P_0_2_1_q0 sc_in sc_lv 32 signal 27 } 
	{ p_ZL1P_0_2_1_address1 sc_out sc_lv 1 signal 27 } 
	{ p_ZL1P_0_2_1_ce1 sc_out sc_logic 1 signal 27 } 
	{ p_ZL1P_0_2_1_q1 sc_in sc_lv 32 signal 27 } 
	{ p_ZL1P_0_2_2_address0 sc_out sc_lv 1 signal 28 } 
	{ p_ZL1P_0_2_2_ce0 sc_out sc_logic 1 signal 28 } 
	{ p_ZL1P_0_2_2_q0 sc_in sc_lv 32 signal 28 } 
	{ p_ZL1P_0_2_2_address1 sc_out sc_lv 1 signal 28 } 
	{ p_ZL1P_0_2_2_ce1 sc_out sc_logic 1 signal 28 } 
	{ p_ZL1P_0_2_2_q1 sc_in sc_lv 32 signal 28 } 
	{ p_ZL1P_0_2_3_address0 sc_out sc_lv 1 signal 29 } 
	{ p_ZL1P_0_2_3_ce0 sc_out sc_logic 1 signal 29 } 
	{ p_ZL1P_0_2_3_q0 sc_in sc_lv 32 signal 29 } 
	{ p_ZL1P_0_2_3_address1 sc_out sc_lv 1 signal 29 } 
	{ p_ZL1P_0_2_3_ce1 sc_out sc_logic 1 signal 29 } 
	{ p_ZL1P_0_2_3_q1 sc_in sc_lv 32 signal 29 } 
	{ p_ZL1P_1_2_0_address0 sc_out sc_lv 1 signal 30 } 
	{ p_ZL1P_1_2_0_ce0 sc_out sc_logic 1 signal 30 } 
	{ p_ZL1P_1_2_0_q0 sc_in sc_lv 32 signal 30 } 
	{ p_ZL1P_1_2_0_address1 sc_out sc_lv 1 signal 30 } 
	{ p_ZL1P_1_2_0_ce1 sc_out sc_logic 1 signal 30 } 
	{ p_ZL1P_1_2_0_q1 sc_in sc_lv 32 signal 30 } 
	{ p_ZL1P_1_2_1_address0 sc_out sc_lv 1 signal 31 } 
	{ p_ZL1P_1_2_1_ce0 sc_out sc_logic 1 signal 31 } 
	{ p_ZL1P_1_2_1_q0 sc_in sc_lv 32 signal 31 } 
	{ p_ZL1P_1_2_1_address1 sc_out sc_lv 1 signal 31 } 
	{ p_ZL1P_1_2_1_ce1 sc_out sc_logic 1 signal 31 } 
	{ p_ZL1P_1_2_1_q1 sc_in sc_lv 32 signal 31 } 
	{ p_ZL1P_1_2_2_address0 sc_out sc_lv 1 signal 32 } 
	{ p_ZL1P_1_2_2_ce0 sc_out sc_logic 1 signal 32 } 
	{ p_ZL1P_1_2_2_q0 sc_in sc_lv 32 signal 32 } 
	{ p_ZL1P_1_2_2_address1 sc_out sc_lv 1 signal 32 } 
	{ p_ZL1P_1_2_2_ce1 sc_out sc_logic 1 signal 32 } 
	{ p_ZL1P_1_2_2_q1 sc_in sc_lv 32 signal 32 } 
	{ p_ZL1P_1_2_3_address0 sc_out sc_lv 1 signal 33 } 
	{ p_ZL1P_1_2_3_ce0 sc_out sc_logic 1 signal 33 } 
	{ p_ZL1P_1_2_3_q0 sc_in sc_lv 32 signal 33 } 
	{ p_ZL1P_1_2_3_address1 sc_out sc_lv 1 signal 33 } 
	{ p_ZL1P_1_2_3_ce1 sc_out sc_logic 1 signal 33 } 
	{ p_ZL1P_1_2_3_q1 sc_in sc_lv 32 signal 33 } 
	{ p_ZL1P_0_3_0_address0 sc_out sc_lv 1 signal 34 } 
	{ p_ZL1P_0_3_0_ce0 sc_out sc_logic 1 signal 34 } 
	{ p_ZL1P_0_3_0_q0 sc_in sc_lv 32 signal 34 } 
	{ p_ZL1P_0_3_0_address1 sc_out sc_lv 1 signal 34 } 
	{ p_ZL1P_0_3_0_ce1 sc_out sc_logic 1 signal 34 } 
	{ p_ZL1P_0_3_0_q1 sc_in sc_lv 32 signal 34 } 
	{ p_ZL1P_0_3_1_address0 sc_out sc_lv 1 signal 35 } 
	{ p_ZL1P_0_3_1_ce0 sc_out sc_logic 1 signal 35 } 
	{ p_ZL1P_0_3_1_q0 sc_in sc_lv 32 signal 35 } 
	{ p_ZL1P_0_3_1_address1 sc_out sc_lv 1 signal 35 } 
	{ p_ZL1P_0_3_1_ce1 sc_out sc_logic 1 signal 35 } 
	{ p_ZL1P_0_3_1_q1 sc_in sc_lv 32 signal 35 } 
	{ p_ZL1P_0_3_2_address0 sc_out sc_lv 1 signal 36 } 
	{ p_ZL1P_0_3_2_ce0 sc_out sc_logic 1 signal 36 } 
	{ p_ZL1P_0_3_2_q0 sc_in sc_lv 32 signal 36 } 
	{ p_ZL1P_0_3_2_address1 sc_out sc_lv 1 signal 36 } 
	{ p_ZL1P_0_3_2_ce1 sc_out sc_logic 1 signal 36 } 
	{ p_ZL1P_0_3_2_q1 sc_in sc_lv 32 signal 36 } 
	{ p_ZL1P_0_3_3_address0 sc_out sc_lv 1 signal 37 } 
	{ p_ZL1P_0_3_3_ce0 sc_out sc_logic 1 signal 37 } 
	{ p_ZL1P_0_3_3_q0 sc_in sc_lv 32 signal 37 } 
	{ p_ZL1P_0_3_3_address1 sc_out sc_lv 1 signal 37 } 
	{ p_ZL1P_0_3_3_ce1 sc_out sc_logic 1 signal 37 } 
	{ p_ZL1P_0_3_3_q1 sc_in sc_lv 32 signal 37 } 
	{ p_ZL1P_1_3_0_address0 sc_out sc_lv 1 signal 38 } 
	{ p_ZL1P_1_3_0_ce0 sc_out sc_logic 1 signal 38 } 
	{ p_ZL1P_1_3_0_q0 sc_in sc_lv 32 signal 38 } 
	{ p_ZL1P_1_3_0_address1 sc_out sc_lv 1 signal 38 } 
	{ p_ZL1P_1_3_0_ce1 sc_out sc_logic 1 signal 38 } 
	{ p_ZL1P_1_3_0_q1 sc_in sc_lv 32 signal 38 } 
	{ p_ZL1P_1_3_1_address0 sc_out sc_lv 1 signal 39 } 
	{ p_ZL1P_1_3_1_ce0 sc_out sc_logic 1 signal 39 } 
	{ p_ZL1P_1_3_1_q0 sc_in sc_lv 32 signal 39 } 
	{ p_ZL1P_1_3_1_address1 sc_out sc_lv 1 signal 39 } 
	{ p_ZL1P_1_3_1_ce1 sc_out sc_logic 1 signal 39 } 
	{ p_ZL1P_1_3_1_q1 sc_in sc_lv 32 signal 39 } 
	{ p_ZL1P_1_3_2_address0 sc_out sc_lv 1 signal 40 } 
	{ p_ZL1P_1_3_2_ce0 sc_out sc_logic 1 signal 40 } 
	{ p_ZL1P_1_3_2_q0 sc_in sc_lv 32 signal 40 } 
	{ p_ZL1P_1_3_2_address1 sc_out sc_lv 1 signal 40 } 
	{ p_ZL1P_1_3_2_ce1 sc_out sc_logic 1 signal 40 } 
	{ p_ZL1P_1_3_2_q1 sc_in sc_lv 32 signal 40 } 
	{ p_ZL1P_1_3_3_address0 sc_out sc_lv 1 signal 41 } 
	{ p_ZL1P_1_3_3_ce0 sc_out sc_logic 1 signal 41 } 
	{ p_ZL1P_1_3_3_q0 sc_in sc_lv 32 signal 41 } 
	{ p_ZL1P_1_3_3_address1 sc_out sc_lv 1 signal 41 } 
	{ p_ZL1P_1_3_3_ce1 sc_out sc_logic 1 signal 41 } 
	{ p_ZL1P_1_3_3_q1 sc_in sc_lv 32 signal 41 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 sc_out sc_lv 3 signal 42 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_0_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 sc_out sc_lv 3 signal 43 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_1_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 sc_out sc_lv 3 signal 44 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_2_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 sc_out sc_lv 3 signal 45 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_3_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 sc_out sc_lv 8 signal 46 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 sc_out sc_lv 8 signal 47 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 sc_out sc_lv 8 signal 48 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 sc_out sc_lv 8 signal 49 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 sc_out sc_lv 3 signal 50 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_0_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 sc_out sc_lv 3 signal 51 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_1_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 sc_out sc_lv 3 signal 52 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_2_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 sc_out sc_lv 3 signal 53 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_3_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 sc_out sc_lv 8 signal 54 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 sc_out sc_lv 8 signal 55 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 sc_out sc_lv 8 signal 56 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 sc_out sc_lv 8 signal 57 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ grp_fu_486_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_486_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_486_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_486_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_486_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_490_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_490_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_490_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_490_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_494_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_494_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_494_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_494_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_494_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_498_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_498_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_498_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_498_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_498_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_502_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_502_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_502_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_502_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_502_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_506_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_506_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_506_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_506_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_506_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_510_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_510_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_510_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_510_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_510_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_514_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_514_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_514_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_514_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_514_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_518_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_518_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_518_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_518_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_518_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_522_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_522_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_522_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_522_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_522_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_526_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_526_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_526_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_526_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_526_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_530_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_530_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_530_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_530_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_530_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_534_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_534_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_534_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_534_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_534_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_538_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_538_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_538_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_538_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_538_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_542_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_542_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_542_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_542_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_542_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_546_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_546_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_546_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_546_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_546_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_550_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_550_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_550_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_550_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_550_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_554_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_554_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_554_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_554_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_558_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_558_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_558_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_558_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_562_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_562_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_562_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_562_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_566_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_566_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_566_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_566_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_570_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_570_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_570_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_570_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_574_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_574_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_574_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_574_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_578_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_578_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_578_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_578_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_582_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_582_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_582_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_582_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_586_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_586_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_586_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_586_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_590_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_590_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_590_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_590_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_594_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_594_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_594_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_594_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_598_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_598_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_598_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_598_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_602_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_602_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_602_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_602_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_606_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_606_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_606_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_606_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_610_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_610_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_610_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_610_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0_val", "role": "default" }} , 
 	{ "name": "x_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1_val", "role": "default" }} , 
 	{ "name": "x_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2_val", "role": "default" }} , 
 	{ "name": "x_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3_val", "role": "default" }} , 
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "LUT_B0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B0", "role": "address0" }} , 
 	{ "name": "LUT_B0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B0", "role": "ce0" }} , 
 	{ "name": "LUT_B0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LUT_B0", "role": "q0" }} , 
 	{ "name": "LUT_B1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B1", "role": "address0" }} , 
 	{ "name": "LUT_B1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B1", "role": "ce0" }} , 
 	{ "name": "LUT_B1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LUT_B1", "role": "q0" }} , 
 	{ "name": "LUT_B2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B2", "role": "address0" }} , 
 	{ "name": "LUT_B2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B2", "role": "ce0" }} , 
 	{ "name": "LUT_B2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LUT_B2", "role": "q0" }} , 
 	{ "name": "LUT_B3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B3", "role": "address0" }} , 
 	{ "name": "LUT_B3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B3", "role": "ce0" }} , 
 	{ "name": "LUT_B3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LUT_B3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_0_3", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_0_3", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_1_3", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_1_3", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_2_3", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_2_3", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_0_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_0_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_0_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_0_3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_0_3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_0_3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_0_3_3", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_0", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_0", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_0", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_0", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_0", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_0", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_1", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_1", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_1", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_1", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_1", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_1", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_2", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_2", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_2", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_2", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_2", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_2", "role": "q1" }} , 
 	{ "name": "p_ZL1P_1_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_3", "role": "address0" }} , 
 	{ "name": "p_ZL1P_1_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_3", "role": "ce0" }} , 
 	{ "name": "p_ZL1P_1_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_3", "role": "q0" }} , 
 	{ "name": "p_ZL1P_1_3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_3", "role": "address1" }} , 
 	{ "name": "p_ZL1P_1_3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_3", "role": "ce1" }} , 
 	{ "name": "p_ZL1P_1_3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZL1P_1_3_3", "role": "q1" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "role": "ap_vld" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "role": "default" }} , 
 	{ "name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_486_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_486_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_486_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_486_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_486_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_490_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_490_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_490_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_494_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_494_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_494_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_494_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_498_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_498_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_498_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_498_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_502_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_502_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_502_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_502_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_506_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_506_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_506_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_506_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_510_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_510_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_510_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_510_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_514_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_514_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_514_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_514_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_518_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_518_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_518_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_518_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_522_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_522_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_522_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_522_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_526_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_526_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_526_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_526_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_526_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_526_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_526_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_526_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_526_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_526_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_530_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_530_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_530_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_530_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_530_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_530_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_530_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_530_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_530_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_530_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_534_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_534_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_534_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_534_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_534_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_534_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_534_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_534_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_534_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_534_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_538_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_538_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_538_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_538_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_538_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_538_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_538_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_538_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_538_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_538_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_542_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_542_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_542_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_542_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_542_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_542_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_542_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_542_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_542_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_542_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_546_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_546_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_546_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_546_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_546_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_546_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_546_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_546_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_546_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_546_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_550_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_550_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_550_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_550_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_550_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_550_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_554_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_554_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_554_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_554_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_554_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_554_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_554_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_554_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_558_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_558_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_558_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_558_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_558_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_558_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_558_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_558_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_562_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_562_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_562_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_562_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_562_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_566_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_566_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_566_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_566_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_566_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_566_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_566_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_566_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_570_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_570_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_570_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_570_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_570_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_570_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_570_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_570_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_574_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_574_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_574_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_574_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_574_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_574_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_574_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_574_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_578_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_578_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_578_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_578_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_578_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_578_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_578_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_578_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_582_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_582_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_582_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_582_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_582_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_582_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_582_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_582_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_586_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_586_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_586_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_586_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_586_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_586_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_586_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_586_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_590_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_590_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_590_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_590_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_590_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_590_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_590_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_590_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_594_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_594_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_594_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_594_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_594_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_594_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_594_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_594_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_598_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_598_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_598_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_598_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_598_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_598_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_598_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_598_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_602_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_602_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_602_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_602_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_602_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_602_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_602_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_602_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_606_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_606_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_606_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_606_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_606_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_606_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_606_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_606_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_610_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_610_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_610_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_610_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_610_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_610_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_610_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_610_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "forward_layer_4_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "90", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "output_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "output_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_1_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i32_fu_1792", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "forward_layer_4_2_Pipeline_ACCUM_O",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "k_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "k_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b3", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "b3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "b3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "b3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ACCUM_O", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter38", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter38", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_3_no_dsp_1_U110", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U111", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U112", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U113", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U114", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U115", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U116", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U117", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U118", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U119", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U120", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U121", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U122", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U123", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U124", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U125", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U126", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U127", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U128", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U129", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U130", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U131", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U132", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U133", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U134", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U135", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U136", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U137", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U138", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U139", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U140", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U141", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U142", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U143", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	forward_layer_4_2_s {
		x_0_val {Type I LastRead 0 FirstWrite -1}
		x_1_val {Type I LastRead 10 FirstWrite -1}
		x_2_val {Type I LastRead 10 FirstWrite -1}
		x_3_val {Type I LastRead 10 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 38}
		output_1 {Type O LastRead -1 FirstWrite 38}
		LUT_B0 {Type I LastRead 119 FirstWrite -1}
		LUT_B1 {Type I LastRead 119 FirstWrite -1}
		LUT_B2 {Type I LastRead 119 FirstWrite -1}
		LUT_B3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_0_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_0_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_0_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_0_3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_0_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_0_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_0_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_0_3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_1_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_1_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_1_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_1_3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_1_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_1_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_1_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_1_3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_2_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_2_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_2_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_2_3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_2_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_2_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_2_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_2_3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_3_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_3_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_3_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_0_3_3 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_3_0 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_3_1 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_3_2 {Type I LastRead 119 FirstWrite -1}
		p_ZL1P_1_3_3 {Type I LastRead 119 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 {Type O LastRead -1 FirstWrite 0}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	forward_layer_4_2_Pipeline_ACCUM_O {
		k {Type I LastRead 0 FirstWrite -1}
		k_1 {Type I LastRead 0 FirstWrite -1}
		k_2 {Type I LastRead 0 FirstWrite -1}
		k_3 {Type I LastRead 0 FirstWrite -1}
		empty_10 {Type I LastRead 0 FirstWrite -1}
		empty_11 {Type I LastRead 0 FirstWrite -1}
		empty_12 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 38}
		output_1 {Type O LastRead -1 FirstWrite 38}
		tmp_9 {Type I LastRead 0 FirstWrite -1}
		tmp_8 {Type I LastRead 0 FirstWrite -1}
		b0 {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		tmp_s {Type I LastRead 0 FirstWrite -1}
		b1 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		b2 {Type I LastRead 0 FirstWrite -1}
		tmp_10 {Type I LastRead 0 FirstWrite -1}
		tmp_7 {Type I LastRead 0 FirstWrite -1}
		b3 {Type I LastRead 0 FirstWrite -1}
		tmp_12 {Type I LastRead 0 FirstWrite -1}
		tmp_11 {Type I LastRead 0 FirstWrite -1}
		b0_1 {Type I LastRead 0 FirstWrite -1}
		tmp_14 {Type I LastRead 0 FirstWrite -1}
		tmp_13 {Type I LastRead 0 FirstWrite -1}
		b1_1 {Type I LastRead 0 FirstWrite -1}
		tmp_16 {Type I LastRead 0 FirstWrite -1}
		tmp_15 {Type I LastRead 0 FirstWrite -1}
		b2_1 {Type I LastRead 0 FirstWrite -1}
		tmp_18 {Type I LastRead 0 FirstWrite -1}
		tmp_17 {Type I LastRead 0 FirstWrite -1}
		b3_1 {Type I LastRead 0 FirstWrite -1}
		tmp_20 {Type I LastRead 0 FirstWrite -1}
		tmp_19 {Type I LastRead 0 FirstWrite -1}
		b0_2 {Type I LastRead 0 FirstWrite -1}
		tmp_22 {Type I LastRead 0 FirstWrite -1}
		tmp_21 {Type I LastRead 0 FirstWrite -1}
		b1_2 {Type I LastRead 0 FirstWrite -1}
		tmp_24 {Type I LastRead 0 FirstWrite -1}
		tmp_23 {Type I LastRead 0 FirstWrite -1}
		b2_2 {Type I LastRead 0 FirstWrite -1}
		tmp_26 {Type I LastRead 0 FirstWrite -1}
		tmp_25 {Type I LastRead 0 FirstWrite -1}
		b3_2 {Type I LastRead 0 FirstWrite -1}
		tmp_28 {Type I LastRead 0 FirstWrite -1}
		tmp_27 {Type I LastRead 0 FirstWrite -1}
		b0_3 {Type I LastRead 0 FirstWrite -1}
		tmp_30 {Type I LastRead 0 FirstWrite -1}
		tmp_29 {Type I LastRead 0 FirstWrite -1}
		b1_3 {Type I LastRead 0 FirstWrite -1}
		tmp_32 {Type I LastRead 0 FirstWrite -1}
		tmp_31 {Type I LastRead 0 FirstWrite -1}
		b2_3 {Type I LastRead 0 FirstWrite -1}
		tmp_34 {Type I LastRead 0 FirstWrite -1}
		tmp_33 {Type I LastRead 0 FirstWrite -1}
		b3_3 {Type I LastRead 0 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 {Type O LastRead -1 FirstWrite 0}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "90", "Max" : "162"}
	, {"Name" : "Interval", "Min" : "90", "Max" : "162"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_0_val { ap_none {  { x_0_val in_data 0 32 } } }
	x_1_val { ap_none {  { x_1_val in_data 0 32 } } }
	x_2_val { ap_none {  { x_2_val in_data 0 32 } } }
	x_3_val { ap_none {  { x_3_val in_data 0 32 } } }
	output_0 { ap_vld {  { output_0 out_data 1 32 }  { output_0_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 32 }  { output_1_ap_vld out_vld 1 1 } } }
	LUT_B0 { ap_memory {  { LUT_B0_address0 mem_address 1 8 }  { LUT_B0_ce0 mem_ce 1 1 }  { LUT_B0_q0 mem_dout 0 32 } } }
	LUT_B1 { ap_memory {  { LUT_B1_address0 mem_address 1 8 }  { LUT_B1_ce0 mem_ce 1 1 }  { LUT_B1_q0 mem_dout 0 32 } } }
	LUT_B2 { ap_memory {  { LUT_B2_address0 mem_address 1 8 }  { LUT_B2_ce0 mem_ce 1 1 }  { LUT_B2_q0 mem_dout 0 32 } } }
	LUT_B3 { ap_memory {  { LUT_B3_address0 mem_address 1 8 }  { LUT_B3_ce0 mem_ce 1 1 }  { LUT_B3_q0 mem_dout 0 32 } } }
	p_ZL1P_0_0_0 { ap_memory {  { p_ZL1P_0_0_0_address0 mem_address 1 1 }  { p_ZL1P_0_0_0_ce0 mem_ce 1 1 }  { p_ZL1P_0_0_0_q0 mem_dout 0 32 }  { p_ZL1P_0_0_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_0_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_0_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_0_1 { ap_memory {  { p_ZL1P_0_0_1_address0 mem_address 1 1 }  { p_ZL1P_0_0_1_ce0 mem_ce 1 1 }  { p_ZL1P_0_0_1_q0 mem_dout 0 32 }  { p_ZL1P_0_0_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_0_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_0_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_0_2 { ap_memory {  { p_ZL1P_0_0_2_address0 mem_address 1 1 }  { p_ZL1P_0_0_2_ce0 mem_ce 1 1 }  { p_ZL1P_0_0_2_q0 mem_dout 0 32 }  { p_ZL1P_0_0_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_0_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_0_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_0_3 { ap_memory {  { p_ZL1P_0_0_3_address0 mem_address 1 1 }  { p_ZL1P_0_0_3_ce0 mem_ce 1 1 }  { p_ZL1P_0_0_3_q0 mem_dout 0 32 }  { p_ZL1P_0_0_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_0_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_0_3_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_0_0 { ap_memory {  { p_ZL1P_1_0_0_address0 mem_address 1 1 }  { p_ZL1P_1_0_0_ce0 mem_ce 1 1 }  { p_ZL1P_1_0_0_q0 mem_dout 0 32 }  { p_ZL1P_1_0_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_0_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_0_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_0_1 { ap_memory {  { p_ZL1P_1_0_1_address0 mem_address 1 1 }  { p_ZL1P_1_0_1_ce0 mem_ce 1 1 }  { p_ZL1P_1_0_1_q0 mem_dout 0 32 }  { p_ZL1P_1_0_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_0_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_0_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_0_2 { ap_memory {  { p_ZL1P_1_0_2_address0 mem_address 1 1 }  { p_ZL1P_1_0_2_ce0 mem_ce 1 1 }  { p_ZL1P_1_0_2_q0 mem_dout 0 32 }  { p_ZL1P_1_0_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_0_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_0_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_0_3 { ap_memory {  { p_ZL1P_1_0_3_address0 mem_address 1 1 }  { p_ZL1P_1_0_3_ce0 mem_ce 1 1 }  { p_ZL1P_1_0_3_q0 mem_dout 0 32 }  { p_ZL1P_1_0_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_0_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_0_3_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_1_0 { ap_memory {  { p_ZL1P_0_1_0_address0 mem_address 1 1 }  { p_ZL1P_0_1_0_ce0 mem_ce 1 1 }  { p_ZL1P_0_1_0_q0 mem_dout 0 32 }  { p_ZL1P_0_1_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_1_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_1_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_1_1 { ap_memory {  { p_ZL1P_0_1_1_address0 mem_address 1 1 }  { p_ZL1P_0_1_1_ce0 mem_ce 1 1 }  { p_ZL1P_0_1_1_q0 mem_dout 0 32 }  { p_ZL1P_0_1_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_1_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_1_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_1_2 { ap_memory {  { p_ZL1P_0_1_2_address0 mem_address 1 1 }  { p_ZL1P_0_1_2_ce0 mem_ce 1 1 }  { p_ZL1P_0_1_2_q0 mem_dout 0 32 }  { p_ZL1P_0_1_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_1_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_1_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_1_3 { ap_memory {  { p_ZL1P_0_1_3_address0 mem_address 1 1 }  { p_ZL1P_0_1_3_ce0 mem_ce 1 1 }  { p_ZL1P_0_1_3_q0 mem_dout 0 32 }  { p_ZL1P_0_1_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_1_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_1_3_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_1_0 { ap_memory {  { p_ZL1P_1_1_0_address0 mem_address 1 1 }  { p_ZL1P_1_1_0_ce0 mem_ce 1 1 }  { p_ZL1P_1_1_0_q0 mem_dout 0 32 }  { p_ZL1P_1_1_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_1_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_1_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_1_1 { ap_memory {  { p_ZL1P_1_1_1_address0 mem_address 1 1 }  { p_ZL1P_1_1_1_ce0 mem_ce 1 1 }  { p_ZL1P_1_1_1_q0 mem_dout 0 32 }  { p_ZL1P_1_1_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_1_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_1_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_1_2 { ap_memory {  { p_ZL1P_1_1_2_address0 mem_address 1 1 }  { p_ZL1P_1_1_2_ce0 mem_ce 1 1 }  { p_ZL1P_1_1_2_q0 mem_dout 0 32 }  { p_ZL1P_1_1_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_1_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_1_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_1_3 { ap_memory {  { p_ZL1P_1_1_3_address0 mem_address 1 1 }  { p_ZL1P_1_1_3_ce0 mem_ce 1 1 }  { p_ZL1P_1_1_3_q0 mem_dout 0 32 }  { p_ZL1P_1_1_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_1_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_1_3_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_2_0 { ap_memory {  { p_ZL1P_0_2_0_address0 mem_address 1 1 }  { p_ZL1P_0_2_0_ce0 mem_ce 1 1 }  { p_ZL1P_0_2_0_q0 mem_dout 0 32 }  { p_ZL1P_0_2_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_2_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_2_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_2_1 { ap_memory {  { p_ZL1P_0_2_1_address0 mem_address 1 1 }  { p_ZL1P_0_2_1_ce0 mem_ce 1 1 }  { p_ZL1P_0_2_1_q0 mem_dout 0 32 }  { p_ZL1P_0_2_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_2_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_2_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_2_2 { ap_memory {  { p_ZL1P_0_2_2_address0 mem_address 1 1 }  { p_ZL1P_0_2_2_ce0 mem_ce 1 1 }  { p_ZL1P_0_2_2_q0 mem_dout 0 32 }  { p_ZL1P_0_2_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_2_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_2_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_2_3 { ap_memory {  { p_ZL1P_0_2_3_address0 mem_address 1 1 }  { p_ZL1P_0_2_3_ce0 mem_ce 1 1 }  { p_ZL1P_0_2_3_q0 mem_dout 0 32 }  { p_ZL1P_0_2_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_2_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_2_3_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_2_0 { ap_memory {  { p_ZL1P_1_2_0_address0 mem_address 1 1 }  { p_ZL1P_1_2_0_ce0 mem_ce 1 1 }  { p_ZL1P_1_2_0_q0 mem_dout 0 32 }  { p_ZL1P_1_2_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_2_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_2_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_2_1 { ap_memory {  { p_ZL1P_1_2_1_address0 mem_address 1 1 }  { p_ZL1P_1_2_1_ce0 mem_ce 1 1 }  { p_ZL1P_1_2_1_q0 mem_dout 0 32 }  { p_ZL1P_1_2_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_2_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_2_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_2_2 { ap_memory {  { p_ZL1P_1_2_2_address0 mem_address 1 1 }  { p_ZL1P_1_2_2_ce0 mem_ce 1 1 }  { p_ZL1P_1_2_2_q0 mem_dout 0 32 }  { p_ZL1P_1_2_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_2_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_2_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_2_3 { ap_memory {  { p_ZL1P_1_2_3_address0 mem_address 1 1 }  { p_ZL1P_1_2_3_ce0 mem_ce 1 1 }  { p_ZL1P_1_2_3_q0 mem_dout 0 32 }  { p_ZL1P_1_2_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_2_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_2_3_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_3_0 { ap_memory {  { p_ZL1P_0_3_0_address0 mem_address 1 1 }  { p_ZL1P_0_3_0_ce0 mem_ce 1 1 }  { p_ZL1P_0_3_0_q0 mem_dout 0 32 }  { p_ZL1P_0_3_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_3_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_3_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_3_1 { ap_memory {  { p_ZL1P_0_3_1_address0 mem_address 1 1 }  { p_ZL1P_0_3_1_ce0 mem_ce 1 1 }  { p_ZL1P_0_3_1_q0 mem_dout 0 32 }  { p_ZL1P_0_3_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_3_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_3_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_3_2 { ap_memory {  { p_ZL1P_0_3_2_address0 mem_address 1 1 }  { p_ZL1P_0_3_2_ce0 mem_ce 1 1 }  { p_ZL1P_0_3_2_q0 mem_dout 0 32 }  { p_ZL1P_0_3_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_3_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_3_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_0_3_3 { ap_memory {  { p_ZL1P_0_3_3_address0 mem_address 1 1 }  { p_ZL1P_0_3_3_ce0 mem_ce 1 1 }  { p_ZL1P_0_3_3_q0 mem_dout 0 32 }  { p_ZL1P_0_3_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_0_3_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_0_3_3_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_3_0 { ap_memory {  { p_ZL1P_1_3_0_address0 mem_address 1 1 }  { p_ZL1P_1_3_0_ce0 mem_ce 1 1 }  { p_ZL1P_1_3_0_q0 mem_dout 0 32 }  { p_ZL1P_1_3_0_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_3_0_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_3_0_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_3_1 { ap_memory {  { p_ZL1P_1_3_1_address0 mem_address 1 1 }  { p_ZL1P_1_3_1_ce0 mem_ce 1 1 }  { p_ZL1P_1_3_1_q0 mem_dout 0 32 }  { p_ZL1P_1_3_1_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_3_1_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_3_1_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_3_2 { ap_memory {  { p_ZL1P_1_3_2_address0 mem_address 1 1 }  { p_ZL1P_1_3_2_ce0 mem_ce 1 1 }  { p_ZL1P_1_3_2_q0 mem_dout 0 32 }  { p_ZL1P_1_3_2_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_3_2_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_3_2_q1 MemPortDOUT2 0 32 } } }
	p_ZL1P_1_3_3 { ap_memory {  { p_ZL1P_1_3_3_address0 mem_address 1 1 }  { p_ZL1P_1_3_3_ce0 mem_ce 1 1 }  { p_ZL1P_1_3_3_q0 mem_dout 0 32 }  { p_ZL1P_1_3_3_address1 MemPortADDR2 1 1 }  { p_ZL1P_1_3_3_ce1 MemPortCE2 1 1 }  { p_ZL1P_1_3_3_q1 MemPortDOUT2 0 32 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_0_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_1_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_2_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_0_3_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_0_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_1_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_2_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 out_data 1 3 }  { eclair_float_const_float_float_const_ap_uint_2_C_k_1_3_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2_ap_vld out_vld 1 1 } } }
	eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 { ap_vld {  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 out_data 1 8 }  { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3_ap_vld out_vld 1 1 } } }
}
