set moduleName forward_layer_4_2_Pipeline_ACCUM_O
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {forward_layer<4, 2>_Pipeline_ACCUM_O}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ k int 3 regular  }
	{ k_1 int 3 regular  }
	{ k_2 int 3 regular  }
	{ k_3 int 3 regular  }
	{ empty_10 int 8 regular  }
	{ empty_11 int 8 regular  }
	{ empty_12 int 8 regular  }
	{ empty int 8 regular  }
	{ output_0 int 32 regular {pointer 1}  }
	{ output_1 int 32 regular {pointer 1}  }
	{ tmp_9 float 32 regular  }
	{ tmp_8 float 32 regular  }
	{ b0 float 32 regular  }
	{ tmp_1 float 32 regular  }
	{ tmp_s float 32 regular  }
	{ b1 float 32 regular  }
	{ tmp_5 float 32 regular  }
	{ tmp_3 float 32 regular  }
	{ b2 float 32 regular  }
	{ tmp_10 float 32 regular  }
	{ tmp_7 float 32 regular  }
	{ b3 float 32 regular  }
	{ tmp_12 float 32 regular  }
	{ tmp_11 float 32 regular  }
	{ b0_1 float 32 regular  }
	{ tmp_14 float 32 regular  }
	{ tmp_13 float 32 regular  }
	{ b1_1 float 32 regular  }
	{ tmp_16 float 32 regular  }
	{ tmp_15 float 32 regular  }
	{ b2_1 float 32 regular  }
	{ tmp_18 float 32 regular  }
	{ tmp_17 float 32 regular  }
	{ b3_1 float 32 regular  }
	{ tmp_20 float 32 regular  }
	{ tmp_19 float 32 regular  }
	{ b0_2 float 32 regular  }
	{ tmp_22 float 32 regular  }
	{ tmp_21 float 32 regular  }
	{ b1_2 float 32 regular  }
	{ tmp_24 float 32 regular  }
	{ tmp_23 float 32 regular  }
	{ b2_2 float 32 regular  }
	{ tmp_26 float 32 regular  }
	{ tmp_25 float 32 regular  }
	{ b3_2 float 32 regular  }
	{ tmp_28 float 32 regular  }
	{ tmp_27 float 32 regular  }
	{ b0_3 float 32 regular  }
	{ tmp_30 float 32 regular  }
	{ tmp_29 float 32 regular  }
	{ b1_3 float 32 regular  }
	{ tmp_32 float 32 regular  }
	{ tmp_31 float 32 regular  }
	{ b2_3 float 32 regular  }
	{ tmp_34 float 32 regular  }
	{ tmp_33 float 32 regular  }
	{ b3_3 float 32 regular  }
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
	{ "Name" : "k", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "k_1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "k_2", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "k_3", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty_10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b3_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b0_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b1_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b2_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b3_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
set portNum 242
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ k sc_in sc_lv 3 signal 0 } 
	{ k_1 sc_in sc_lv 3 signal 1 } 
	{ k_2 sc_in sc_lv 3 signal 2 } 
	{ k_3 sc_in sc_lv 3 signal 3 } 
	{ empty_10 sc_in sc_lv 8 signal 4 } 
	{ empty_11 sc_in sc_lv 8 signal 5 } 
	{ empty_12 sc_in sc_lv 8 signal 6 } 
	{ empty sc_in sc_lv 8 signal 7 } 
	{ output_0 sc_out sc_lv 32 signal 8 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ output_1 sc_out sc_lv 32 signal 9 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ tmp_9 sc_in sc_lv 32 signal 10 } 
	{ tmp_8 sc_in sc_lv 32 signal 11 } 
	{ b0 sc_in sc_lv 32 signal 12 } 
	{ tmp_1 sc_in sc_lv 32 signal 13 } 
	{ tmp_s sc_in sc_lv 32 signal 14 } 
	{ b1 sc_in sc_lv 32 signal 15 } 
	{ tmp_5 sc_in sc_lv 32 signal 16 } 
	{ tmp_3 sc_in sc_lv 32 signal 17 } 
	{ b2 sc_in sc_lv 32 signal 18 } 
	{ tmp_10 sc_in sc_lv 32 signal 19 } 
	{ tmp_7 sc_in sc_lv 32 signal 20 } 
	{ b3 sc_in sc_lv 32 signal 21 } 
	{ tmp_12 sc_in sc_lv 32 signal 22 } 
	{ tmp_11 sc_in sc_lv 32 signal 23 } 
	{ b0_1 sc_in sc_lv 32 signal 24 } 
	{ tmp_14 sc_in sc_lv 32 signal 25 } 
	{ tmp_13 sc_in sc_lv 32 signal 26 } 
	{ b1_1 sc_in sc_lv 32 signal 27 } 
	{ tmp_16 sc_in sc_lv 32 signal 28 } 
	{ tmp_15 sc_in sc_lv 32 signal 29 } 
	{ b2_1 sc_in sc_lv 32 signal 30 } 
	{ tmp_18 sc_in sc_lv 32 signal 31 } 
	{ tmp_17 sc_in sc_lv 32 signal 32 } 
	{ b3_1 sc_in sc_lv 32 signal 33 } 
	{ tmp_20 sc_in sc_lv 32 signal 34 } 
	{ tmp_19 sc_in sc_lv 32 signal 35 } 
	{ b0_2 sc_in sc_lv 32 signal 36 } 
	{ tmp_22 sc_in sc_lv 32 signal 37 } 
	{ tmp_21 sc_in sc_lv 32 signal 38 } 
	{ b1_2 sc_in sc_lv 32 signal 39 } 
	{ tmp_24 sc_in sc_lv 32 signal 40 } 
	{ tmp_23 sc_in sc_lv 32 signal 41 } 
	{ b2_2 sc_in sc_lv 32 signal 42 } 
	{ tmp_26 sc_in sc_lv 32 signal 43 } 
	{ tmp_25 sc_in sc_lv 32 signal 44 } 
	{ b3_2 sc_in sc_lv 32 signal 45 } 
	{ tmp_28 sc_in sc_lv 32 signal 46 } 
	{ tmp_27 sc_in sc_lv 32 signal 47 } 
	{ b0_3 sc_in sc_lv 32 signal 48 } 
	{ tmp_30 sc_in sc_lv 32 signal 49 } 
	{ tmp_29 sc_in sc_lv 32 signal 50 } 
	{ b1_3 sc_in sc_lv 32 signal 51 } 
	{ tmp_32 sc_in sc_lv 32 signal 52 } 
	{ tmp_31 sc_in sc_lv 32 signal 53 } 
	{ b2_3 sc_in sc_lv 32 signal 54 } 
	{ tmp_34 sc_in sc_lv 32 signal 55 } 
	{ tmp_33 sc_in sc_lv 32 signal 56 } 
	{ b3_3 sc_in sc_lv 32 signal 57 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 sc_out sc_lv 3 signal 58 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_0_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 sc_out sc_lv 3 signal 59 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_1_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 sc_out sc_lv 3 signal 60 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_2_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 sc_out sc_lv 3 signal 61 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_0_3_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 sc_out sc_lv 8 signal 62 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 sc_out sc_lv 8 signal 63 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 sc_out sc_lv 8 signal 64 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 sc_out sc_lv 8 signal 65 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 sc_out sc_lv 3 signal 66 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_0_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 sc_out sc_lv 3 signal 67 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_1_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 sc_out sc_lv 3 signal 68 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_2_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 sc_out sc_lv 3 signal 69 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_k_1_3_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 sc_out sc_lv 8 signal 70 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 sc_out sc_lv 8 signal 71 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1_ap_vld sc_out sc_logic 1 outvld 71 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 sc_out sc_lv 8 signal 72 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 sc_out sc_lv 8 signal 73 } 
	{ eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ grp_fu_1905_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1905_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1905_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1905_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1905_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4501_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4501_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4501_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4501_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4501_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4505_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4505_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4505_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4505_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4505_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4509_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4509_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4509_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4509_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4509_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4513_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4513_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4513_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4513_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4513_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4517_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4517_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4517_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4517_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4517_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4521_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4521_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4521_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4521_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4521_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4525_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4525_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4525_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4525_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4525_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4529_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4529_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4529_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4529_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4529_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4533_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4533_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4533_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4533_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4533_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4537_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4537_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4537_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4537_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4537_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4541_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4541_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4541_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4541_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4541_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4545_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4545_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4545_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4545_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4545_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4549_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4549_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4549_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4549_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4549_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4553_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4553_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4553_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4553_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4553_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4557_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4557_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4557_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4557_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4557_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1912_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1912_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1912_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1912_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4561_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4561_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4561_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4561_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4565_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4565_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4565_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4565_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4569_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4569_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4569_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4569_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4573_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4573_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4573_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4573_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4577_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4577_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4577_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4577_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4581_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4581_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4581_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4581_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4585_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4585_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4585_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4585_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4589_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4589_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4589_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4589_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4593_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4593_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4593_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4593_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4597_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4597_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4597_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4597_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4601_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4601_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4601_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4601_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4605_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4605_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4605_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4605_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4609_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4609_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4609_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4609_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4613_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4613_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4613_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4613_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4617_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4617_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4617_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4617_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "k_1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k_1", "role": "default" }} , 
 	{ "name": "k_2", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k_2", "role": "default" }} , 
 	{ "name": "k_3", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k_3", "role": "default" }} , 
 	{ "name": "empty_10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_10", "role": "default" }} , 
 	{ "name": "empty_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_11", "role": "default" }} , 
 	{ "name": "empty_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_12", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "tmp_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_9", "role": "default" }} , 
 	{ "name": "tmp_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_8", "role": "default" }} , 
 	{ "name": "b0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b0", "role": "default" }} , 
 	{ "name": "tmp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_1", "role": "default" }} , 
 	{ "name": "tmp_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_s", "role": "default" }} , 
 	{ "name": "b1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1", "role": "default" }} , 
 	{ "name": "tmp_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_5", "role": "default" }} , 
 	{ "name": "tmp_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_3", "role": "default" }} , 
 	{ "name": "b2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2", "role": "default" }} , 
 	{ "name": "tmp_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_10", "role": "default" }} , 
 	{ "name": "tmp_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_7", "role": "default" }} , 
 	{ "name": "b3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b3", "role": "default" }} , 
 	{ "name": "tmp_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_12", "role": "default" }} , 
 	{ "name": "tmp_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_11", "role": "default" }} , 
 	{ "name": "b0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b0_1", "role": "default" }} , 
 	{ "name": "tmp_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_14", "role": "default" }} , 
 	{ "name": "tmp_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_13", "role": "default" }} , 
 	{ "name": "b1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_1", "role": "default" }} , 
 	{ "name": "tmp_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_16", "role": "default" }} , 
 	{ "name": "tmp_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_15", "role": "default" }} , 
 	{ "name": "b2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_1", "role": "default" }} , 
 	{ "name": "tmp_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_18", "role": "default" }} , 
 	{ "name": "tmp_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_17", "role": "default" }} , 
 	{ "name": "b3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b3_1", "role": "default" }} , 
 	{ "name": "tmp_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_20", "role": "default" }} , 
 	{ "name": "tmp_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_19", "role": "default" }} , 
 	{ "name": "b0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b0_2", "role": "default" }} , 
 	{ "name": "tmp_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_22", "role": "default" }} , 
 	{ "name": "tmp_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_21", "role": "default" }} , 
 	{ "name": "b1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_2", "role": "default" }} , 
 	{ "name": "tmp_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_24", "role": "default" }} , 
 	{ "name": "tmp_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_23", "role": "default" }} , 
 	{ "name": "b2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_2", "role": "default" }} , 
 	{ "name": "tmp_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_26", "role": "default" }} , 
 	{ "name": "tmp_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_25", "role": "default" }} , 
 	{ "name": "b3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b3_2", "role": "default" }} , 
 	{ "name": "tmp_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_28", "role": "default" }} , 
 	{ "name": "tmp_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_27", "role": "default" }} , 
 	{ "name": "b0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b0_3", "role": "default" }} , 
 	{ "name": "tmp_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_30", "role": "default" }} , 
 	{ "name": "tmp_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_29", "role": "default" }} , 
 	{ "name": "b1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b1_3", "role": "default" }} , 
 	{ "name": "tmp_32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_32", "role": "default" }} , 
 	{ "name": "tmp_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_31", "role": "default" }} , 
 	{ "name": "b2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_3", "role": "default" }} , 
 	{ "name": "tmp_34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_34", "role": "default" }} , 
 	{ "name": "tmp_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_33", "role": "default" }} , 
 	{ "name": "b3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b3_3", "role": "default" }} , 
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
 	{ "name": "grp_fu_1905_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1905_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1905_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1905_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1905_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1905_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1905_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1905_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1905_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1905_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4501_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4501_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4501_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4501_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4501_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4501_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4501_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4501_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4501_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4501_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4505_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4505_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4505_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4505_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4505_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4505_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4505_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4505_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4505_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4505_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4509_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4509_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4509_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4509_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4509_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4509_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4509_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4509_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4509_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4509_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4513_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4513_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4513_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4513_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4513_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4513_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4513_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4513_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4513_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4513_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4517_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4517_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4517_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4517_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4517_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4517_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4517_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4517_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4517_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4517_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4521_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4521_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4521_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4521_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4521_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4521_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4521_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4521_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4521_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4521_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4525_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4525_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4525_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4525_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4525_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4525_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4525_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4525_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4525_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4525_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4529_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4529_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4529_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4529_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4529_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4529_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4529_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4529_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4529_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4529_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4533_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4533_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4533_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4533_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4533_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4533_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4533_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4533_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4533_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4533_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4537_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4537_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4537_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4537_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4537_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4537_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4537_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4537_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4537_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4537_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4541_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4541_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4541_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4541_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4541_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4541_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4541_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4541_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4541_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4541_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4545_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4545_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4545_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4545_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4545_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4545_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4545_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4545_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4545_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4545_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4549_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4549_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4549_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4549_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4549_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4549_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4549_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4549_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4549_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4549_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4553_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4553_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4553_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4553_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4553_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4553_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4553_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4553_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4553_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4553_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4557_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4557_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4557_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4557_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4557_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4557_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4557_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4557_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4557_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4557_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1912_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1912_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1912_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1912_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1912_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1912_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1912_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1912_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4561_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4561_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4561_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4561_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4561_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4561_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4561_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4561_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4565_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4565_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4565_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4565_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4565_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4565_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4565_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4565_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4569_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4569_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4569_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4569_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4569_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4569_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4569_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4569_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4573_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4573_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4573_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4573_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4573_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4573_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4573_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4573_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4577_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4577_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4577_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4577_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4577_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4577_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4577_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4577_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4581_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4581_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4581_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4581_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4581_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4581_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4581_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4581_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4585_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4585_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4585_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4585_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4585_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4585_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4585_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4585_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4589_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4589_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4589_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4589_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4589_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4589_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4589_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4589_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4593_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4593_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4593_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4593_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4593_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4593_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4593_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4593_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4597_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4597_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4597_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4597_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4597_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4597_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4597_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4597_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4601_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4601_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4601_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4601_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4601_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4601_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4601_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4601_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4605_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4605_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4605_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4605_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4605_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4605_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4605_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4605_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4609_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4609_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4609_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4609_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4609_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4609_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4609_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4609_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4613_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4613_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4613_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4613_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4613_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4613_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4613_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4613_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4617_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4617_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4617_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4617_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4617_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4617_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4617_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4617_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	k { ap_none {  { k in_data 0 3 } } }
	k_1 { ap_none {  { k_1 in_data 0 3 } } }
	k_2 { ap_none {  { k_2 in_data 0 3 } } }
	k_3 { ap_none {  { k_3 in_data 0 3 } } }
	empty_10 { ap_none {  { empty_10 in_data 0 8 } } }
	empty_11 { ap_none {  { empty_11 in_data 0 8 } } }
	empty_12 { ap_none {  { empty_12 in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 8 } } }
	output_0 { ap_vld {  { output_0 out_data 1 32 }  { output_0_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 32 }  { output_1_ap_vld out_vld 1 1 } } }
	tmp_9 { ap_none {  { tmp_9 in_data 0 32 } } }
	tmp_8 { ap_none {  { tmp_8 in_data 0 32 } } }
	b0 { ap_none {  { b0 in_data 0 32 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 32 } } }
	tmp_s { ap_none {  { tmp_s in_data 0 32 } } }
	b1 { ap_none {  { b1 in_data 0 32 } } }
	tmp_5 { ap_none {  { tmp_5 in_data 0 32 } } }
	tmp_3 { ap_none {  { tmp_3 in_data 0 32 } } }
	b2 { ap_none {  { b2 in_data 0 32 } } }
	tmp_10 { ap_none {  { tmp_10 in_data 0 32 } } }
	tmp_7 { ap_none {  { tmp_7 in_data 0 32 } } }
	b3 { ap_none {  { b3 in_data 0 32 } } }
	tmp_12 { ap_none {  { tmp_12 in_data 0 32 } } }
	tmp_11 { ap_none {  { tmp_11 in_data 0 32 } } }
	b0_1 { ap_none {  { b0_1 in_data 0 32 } } }
	tmp_14 { ap_none {  { tmp_14 in_data 0 32 } } }
	tmp_13 { ap_none {  { tmp_13 in_data 0 32 } } }
	b1_1 { ap_none {  { b1_1 in_data 0 32 } } }
	tmp_16 { ap_none {  { tmp_16 in_data 0 32 } } }
	tmp_15 { ap_none {  { tmp_15 in_data 0 32 } } }
	b2_1 { ap_none {  { b2_1 in_data 0 32 } } }
	tmp_18 { ap_none {  { tmp_18 in_data 0 32 } } }
	tmp_17 { ap_none {  { tmp_17 in_data 0 32 } } }
	b3_1 { ap_none {  { b3_1 in_data 0 32 } } }
	tmp_20 { ap_none {  { tmp_20 in_data 0 32 } } }
	tmp_19 { ap_none {  { tmp_19 in_data 0 32 } } }
	b0_2 { ap_none {  { b0_2 in_data 0 32 } } }
	tmp_22 { ap_none {  { tmp_22 in_data 0 32 } } }
	tmp_21 { ap_none {  { tmp_21 in_data 0 32 } } }
	b1_2 { ap_none {  { b1_2 in_data 0 32 } } }
	tmp_24 { ap_none {  { tmp_24 in_data 0 32 } } }
	tmp_23 { ap_none {  { tmp_23 in_data 0 32 } } }
	b2_2 { ap_none {  { b2_2 in_data 0 32 } } }
	tmp_26 { ap_none {  { tmp_26 in_data 0 32 } } }
	tmp_25 { ap_none {  { tmp_25 in_data 0 32 } } }
	b3_2 { ap_none {  { b3_2 in_data 0 32 } } }
	tmp_28 { ap_none {  { tmp_28 in_data 0 32 } } }
	tmp_27 { ap_none {  { tmp_27 in_data 0 32 } } }
	b0_3 { ap_none {  { b0_3 in_data 0 32 } } }
	tmp_30 { ap_none {  { tmp_30 in_data 0 32 } } }
	tmp_29 { ap_none {  { tmp_29 in_data 0 32 } } }
	b1_3 { ap_none {  { b1_3 in_data 0 32 } } }
	tmp_32 { ap_none {  { tmp_32 in_data 0 32 } } }
	tmp_31 { ap_none {  { tmp_31 in_data 0 32 } } }
	b2_3 { ap_none {  { b2_3 in_data 0 32 } } }
	tmp_34 { ap_none {  { tmp_34 in_data 0 32 } } }
	tmp_33 { ap_none {  { tmp_33 in_data 0 32 } } }
	b3_3 { ap_none {  { b3_3 in_data 0 32 } } }
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
