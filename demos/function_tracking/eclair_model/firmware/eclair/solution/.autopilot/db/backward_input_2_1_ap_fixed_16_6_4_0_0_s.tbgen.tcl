set moduleName backward_input_2_1_ap_fixed_16_6_4_0_0_s
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
set C_modelName {backward_input<2, 1, ap_fixed<16, 6, 4, 0, 0> >}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ dL_dy_val int 16 regular  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 int 6 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 int 8 regular {pointer 0} {global 0}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7 int 16 regular {pointer 2} {global 2}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 int 6 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 int 8 regular {pointer 0} {global 0}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6 int 16 regular {pointer 2} {global 2}  }
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7 int 16 regular {pointer 2} {global 2}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "dL_dy_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dL_dy_val sc_in sc_lv 16 signal 0 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 sc_in sc_lv 6 signal 1 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 sc_in sc_lv 8 signal 2 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_i sc_in sc_lv 16 signal 3 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_o sc_out sc_lv 16 signal 3 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_i sc_in sc_lv 16 signal 4 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_o sc_out sc_lv 16 signal 4 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_i sc_in sc_lv 16 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_o sc_out sc_lv 16 signal 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_i sc_in sc_lv 16 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_o sc_out sc_lv 16 signal 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_i sc_in sc_lv 16 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_o sc_out sc_lv 16 signal 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_i sc_in sc_lv 16 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_o sc_out sc_lv 16 signal 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_i sc_in sc_lv 16 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_o sc_out sc_lv 16 signal 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_i sc_in sc_lv 16 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_o sc_out sc_lv 16 signal 10 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 sc_in sc_lv 6 signal 11 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 sc_in sc_lv 8 signal 12 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_i sc_in sc_lv 16 signal 13 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_o sc_out sc_lv 16 signal 13 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_i sc_in sc_lv 16 signal 14 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_o sc_out sc_lv 16 signal 14 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_i sc_in sc_lv 16 signal 15 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_o sc_out sc_lv 16 signal 15 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_i sc_in sc_lv 16 signal 16 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_o sc_out sc_lv 16 signal 16 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_i sc_in sc_lv 16 signal 17 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_o sc_out sc_lv 16 signal 17 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_i sc_in sc_lv 16 signal 18 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_o sc_out sc_lv 16 signal 18 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_i sc_in sc_lv 16 signal 19 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_o sc_out sc_lv 16 signal 19 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_i sc_in sc_lv 16 signal 20 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_o sc_out sc_lv 16 signal 20 } 
	{ p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_o_ap_vld sc_out sc_logic 1 outvld 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dL_dy_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dL_dy_val", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "role": "default" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "role": "o_ap_vld" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "role": "default" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "role": "o_ap_vld" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "role": "i" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "role": "o" }} , 
 	{ "name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "backward_input_2_1_ap_fixed_16_6_4_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dL_dy_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10ns_16s_26_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10ns_16s_26_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10ns_16s_26_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10ns_16s_26_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_16_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_16_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_16s_24_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_16_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_16_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_16_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_16_1_1_U25", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backward_input_2_1_ap_fixed_16_6_4_0_0_s {
		dL_dy_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 {Type I LastRead 2 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 {Type I LastRead 1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 {Type IO LastRead 2 FirstWrite 4}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 {Type IO LastRead 2 FirstWrite 5}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 {Type IO LastRead 2 FirstWrite 5}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7 {Type IO LastRead 2 FirstWrite 6}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 {Type I LastRead 2 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 {Type I LastRead 1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 {Type IO LastRead 2 FirstWrite 4}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 {Type IO LastRead 2 FirstWrite 5}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 {Type IO LastRead 2 FirstWrite 5}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6 {Type IO LastRead 2 FirstWrite 6}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7 {Type IO LastRead 2 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dL_dy_val { ap_none {  { dL_dy_val in_data 0 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 in_data 0 6 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 in_data 0 8 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7_o_ap_vld out_vld 1 1 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 in_data 0 6 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 in_data 0 8 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6_o_ap_vld out_vld 1 1 } } }
	p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7 { ap_ovld {  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_i in_data 0 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_o out_data 1 16 }  { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7_o_ap_vld out_vld 1 1 } } }
}
