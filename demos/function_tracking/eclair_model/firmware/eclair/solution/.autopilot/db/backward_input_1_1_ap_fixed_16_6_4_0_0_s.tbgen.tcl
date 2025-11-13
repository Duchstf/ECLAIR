set moduleName backward_input_1_1_ap_fixed_16_6_4_0_0_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {backward_input<1, 1, ap_fixed<16, 6, 4, 0, 0> >}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict LUT_B0 { MEM_WIDTH 8 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict LUT_B1 { MEM_WIDTH 10 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict LUT_B2 { MEM_WIDTH 10 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict LUT_B3 { MEM_WIDTH 8 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ dL_dy_val int 16 regular  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 int 3 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 int 8 regular {pointer 0} {global 0}  }
	{ LUT_B0 int 8 regular {array 256 { 1 } 1 1 } {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ LUT_B1 int 10 regular {array 256 { 1 } 1 1 } {global 0}  }
	{ LUT_B2 int 10 regular {array 256 { 1 } 1 1 } {global 0}  }
	{ LUT_B3 int 8 regular {array 256 { 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "dL_dy_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "LUT_B0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "LUT_B1", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "LUT_B2", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "LUT_B3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dL_dy_val sc_in sc_lv 16 signal 0 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 sc_in sc_lv 3 signal 1 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 sc_in sc_lv 8 signal 2 } 
	{ LUT_B0_address0 sc_out sc_lv 8 signal 3 } 
	{ LUT_B0_ce0 sc_out sc_logic 1 signal 3 } 
	{ LUT_B0_q0 sc_in sc_lv 8 signal 3 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address0 sc_out sc_lv 1 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_q0 sc_in sc_lv 16 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address1 sc_out sc_lv 1 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_we1 sc_out sc_logic 1 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_d1 sc_out sc_lv 16 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address0 sc_out sc_lv 1 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_q0 sc_in sc_lv 16 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address1 sc_out sc_lv 1 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_we1 sc_out sc_logic 1 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_d1 sc_out sc_lv 16 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address0 sc_out sc_lv 1 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_q0 sc_in sc_lv 16 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address1 sc_out sc_lv 1 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_we1 sc_out sc_logic 1 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_d1 sc_out sc_lv 16 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address0 sc_out sc_lv 1 signal 7 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce0 sc_out sc_logic 1 signal 7 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_q0 sc_in sc_lv 16 signal 7 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address1 sc_out sc_lv 1 signal 7 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce1 sc_out sc_logic 1 signal 7 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_we1 sc_out sc_logic 1 signal 7 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_d1 sc_out sc_lv 16 signal 7 } 
	{ LUT_B1_address0 sc_out sc_lv 8 signal 8 } 
	{ LUT_B1_ce0 sc_out sc_logic 1 signal 8 } 
	{ LUT_B1_q0 sc_in sc_lv 10 signal 8 } 
	{ LUT_B2_address0 sc_out sc_lv 8 signal 9 } 
	{ LUT_B2_ce0 sc_out sc_logic 1 signal 9 } 
	{ LUT_B2_q0 sc_in sc_lv 10 signal 9 } 
	{ LUT_B3_address0 sc_out sc_lv 8 signal 10 } 
	{ LUT_B3_ce0 sc_out sc_logic 1 signal 10 } 
	{ LUT_B3_q0 sc_in sc_lv 8 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dL_dy_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dL_dy_val", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53", "role": "default" }} , 
 	{ "name": "LUT_B0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B0", "role": "address0" }} , 
 	{ "name": "LUT_B0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B0", "role": "ce0" }} , 
 	{ "name": "LUT_B0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B0", "role": "q0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "role": "address0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "role": "ce0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "role": "q0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "role": "address1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "role": "ce1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "role": "we1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "role": "d1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "role": "address0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "role": "ce0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "role": "q0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "role": "address1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "role": "ce1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "role": "we1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "role": "d1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "role": "address0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "role": "ce0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "role": "q0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "role": "address1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "role": "ce1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "role": "we1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "role": "d1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "role": "address0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "role": "ce0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "role": "q0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "role": "address1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "role": "ce1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "role": "we1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "role": "d1" }} , 
 	{ "name": "LUT_B1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B1", "role": "address0" }} , 
 	{ "name": "LUT_B1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B1", "role": "ce0" }} , 
 	{ "name": "LUT_B1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "LUT_B1", "role": "q0" }} , 
 	{ "name": "LUT_B2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B2", "role": "address0" }} , 
 	{ "name": "LUT_B2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B2", "role": "ce0" }} , 
 	{ "name": "LUT_B2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "LUT_B2", "role": "q0" }} , 
 	{ "name": "LUT_B3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B3", "role": "address0" }} , 
 	{ "name": "LUT_B3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LUT_B3", "role": "ce0" }} , 
 	{ "name": "LUT_B3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "LUT_B3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "backward_input_1_1_ap_fixed_16_6_4_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dL_dy_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_9ns_25_1_1_U32", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_1_1_U33", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10ns_16s_26_1_1_U34", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U35", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U36", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10ns_16s_26_1_1_U37", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U38", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U39", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_16_1_1_U40", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backward_input_1_1_ap_fixed_16_6_4_0_0_s {
		dL_dy_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 {Type I LastRead 0 FirstWrite -1}
		LUT_B0 {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3 {Type IO LastRead 2 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2 {Type IO LastRead 2 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1 {Type IO LastRead 2 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P {Type IO LastRead 2 FirstWrite 2}
		LUT_B1 {Type I LastRead 0 FirstWrite -1}
		LUT_B2 {Type I LastRead 0 FirstWrite -1}
		LUT_B3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dL_dy_val { ap_none {  { dL_dy_val in_data 0 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 in_data 0 3 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 in_data 0 8 } } }
	LUT_B0 { ap_memory {  { LUT_B0_address0 mem_address 1 8 }  { LUT_B0_ce0 mem_ce 1 1 }  { LUT_B0_q0 mem_dout 0 8 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3 { ap_memory {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address0 mem_address 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce0 mem_ce 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_q0 mem_dout 0 16 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address1 MemPortADDR2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce1 MemPortCE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_we1 MemPortWE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_d1 MemPortDIN2 1 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2 { ap_memory {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address0 mem_address 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce0 mem_ce 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_q0 mem_dout 0 16 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address1 MemPortADDR2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce1 MemPortCE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_we1 MemPortWE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_d1 MemPortDIN2 1 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1 { ap_memory {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address0 mem_address 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce0 mem_ce 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_q0 mem_dout 0 16 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address1 MemPortADDR2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce1 MemPortCE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_we1 MemPortWE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_d1 MemPortDIN2 1 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P { ap_memory {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address0 mem_address 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce0 mem_ce 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_q0 mem_dout 0 16 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address1 MemPortADDR2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce1 MemPortCE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_we1 MemPortWE2 1 1 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_d1 MemPortDIN2 1 16 } } }
	LUT_B1 { ap_memory {  { LUT_B1_address0 mem_address 1 8 }  { LUT_B1_ce0 mem_ce 1 1 }  { LUT_B1_q0 mem_dout 0 10 } } }
	LUT_B2 { ap_memory {  { LUT_B2_address0 mem_address 1 8 }  { LUT_B2_ce0 mem_ce 1 1 }  { LUT_B2_q0 mem_dout 0 10 } } }
	LUT_B3 { ap_memory {  { LUT_B3_address0 mem_address 1 8 }  { LUT_B3_ce0 mem_ce 1 1 }  { LUT_B3_q0 mem_dout 0 8 } } }
}
