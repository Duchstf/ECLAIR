set moduleName backward_input_2_1_ap_fixed_16_6_4_0_0_s
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
set C_modelName {backward_input<2, 1, ap_fixed<16, 6, 4, 0, 0> >}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ dL_dy_val int 16 regular  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 int 3 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 int 3 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 int 8 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 int 8 regular {pointer 0} {global 0}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 int 16 regular {array 2 { 1 0 } 1 1 } {global 2}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "dL_dy_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dL_dy_val sc_in sc_lv 16 signal 0 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 sc_in sc_lv 3 signal 1 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 sc_in sc_lv 3 signal 2 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 sc_in sc_lv 8 signal 3 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 sc_in sc_lv 8 signal 4 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address0 sc_out sc_lv 1 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_q0 sc_in sc_lv 16 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address1 sc_out sc_lv 1 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_we1 sc_out sc_logic 1 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_d1 sc_out sc_lv 16 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address0 sc_out sc_lv 1 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_q0 sc_in sc_lv 16 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address1 sc_out sc_lv 1 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_we1 sc_out sc_logic 1 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_d1 sc_out sc_lv 16 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address0 sc_out sc_lv 1 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_q0 sc_in sc_lv 16 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address1 sc_out sc_lv 1 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_we1 sc_out sc_logic 1 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_d1 sc_out sc_lv 16 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address0 sc_out sc_lv 1 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_q0 sc_in sc_lv 16 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address1 sc_out sc_lv 1 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_we1 sc_out sc_logic 1 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_d1 sc_out sc_lv 16 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address0 sc_out sc_lv 1 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_q0 sc_in sc_lv 16 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address1 sc_out sc_lv 1 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce1 sc_out sc_logic 1 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_we1 sc_out sc_logic 1 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_d1 sc_out sc_lv 16 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address0 sc_out sc_lv 1 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_q0 sc_in sc_lv 16 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address1 sc_out sc_lv 1 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_we1 sc_out sc_logic 1 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_d1 sc_out sc_lv 16 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address0 sc_out sc_lv 1 signal 11 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_q0 sc_in sc_lv 16 signal 11 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address1 sc_out sc_lv 1 signal 11 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce1 sc_out sc_logic 1 signal 11 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_we1 sc_out sc_logic 1 signal 11 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_d1 sc_out sc_lv 16 signal 11 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address0 sc_out sc_lv 1 signal 12 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_q0 sc_in sc_lv 16 signal 12 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address1 sc_out sc_lv 1 signal 12 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce1 sc_out sc_logic 1 signal 12 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_we1 sc_out sc_logic 1 signal 12 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_d1 sc_out sc_lv 16 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dL_dy_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dL_dy_val", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1", "role": "default" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "d1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "d1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "d1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "d1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "d1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "d1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "d1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "address0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "ce0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "q0" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "address1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "ce1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "we1" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "19"],
		"CDFG" : "backward_input_2_1_ap_fixed_16_6_4_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dL_dy_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "LUT_B3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "LUT_B2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "LUT_B1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Port" : "LUT_B0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "delta_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_2_cast2", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "BWD_I", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.LUT_B3_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.LUT_B2_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.LUT_B1_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.LUT_B0_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.mul_8ns_16s_24_1_1_U1", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.mul_10ns_16s_26_1_1_U2", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U3", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U4", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U5", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U6", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.mul_10ns_16s_26_1_1_U7", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U8", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U9", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.mul_8ns_16s_24_1_1_U10", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U11", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.sparsemux_9_2_16_1_1_U12", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_1_1_U37", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backward_input_2_1_ap_fixed_16_6_4_0_0_s {
		dL_dy_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 {Type I LastRead 1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 {Type I LastRead 1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 {Type I LastRead 1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 {Type I LastRead 1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 {Type IO LastRead 2 FirstWrite 2}
		LUT_B3 {Type I LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 {Type IO LastRead 2 FirstWrite 2}
		LUT_B2 {Type I LastRead -1 FirstWrite -1}
		LUT_B1 {Type I LastRead -1 FirstWrite -1}
		LUT_B0 {Type I LastRead -1 FirstWrite -1}}
	backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I {
		delta_2_cast {Type I LastRead 0 FirstWrite -1}
		delta_2_cast2 {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1_load {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0_load {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1_load {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 {Type IO LastRead 2 FirstWrite 2}
		LUT_B3 {Type I LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 {Type IO LastRead 2 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 {Type IO LastRead 2 FirstWrite 2}
		LUT_B2 {Type I LastRead -1 FirstWrite -1}
		LUT_B1 {Type I LastRead -1 FirstWrite -1}
		LUT_B0 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dL_dy_val { ap_none {  { dL_dy_val in_data 0 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 in_data 0 3 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 in_data 0 3 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 in_data 0 8 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 in_data 0 8 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_d1 MemPortDIN2 1 16 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_d1 MemPortDIN2 1 16 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_d1 MemPortDIN2 1 16 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_d1 MemPortDIN2 1 16 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_d1 MemPortDIN2 1 16 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_d1 MemPortDIN2 1 16 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_d1 MemPortDIN2 1 16 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 { ap_memory {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address0 mem_address 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce0 mem_ce 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_q0 mem_dout 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address1 MemPortADDR2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce1 MemPortCE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_we1 MemPortWE2 1 1 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_d1 MemPortDIN2 1 16 } } }
}
