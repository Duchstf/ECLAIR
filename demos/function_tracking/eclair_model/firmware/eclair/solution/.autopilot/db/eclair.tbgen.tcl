set moduleName eclair
set isTopModule 1
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
set C_modelName {eclair}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_0 int 16 regular {pointer 0}  }
	{ input_1 int 16 regular {pointer 0}  }
	{ output_r int 16 regular {pointer 1}  }
	{ feedback int 16 regular {pointer 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feedback", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0 sc_in sc_lv 16 signal 0 } 
	{ input_1 sc_in sc_lv 16 signal 1 } 
	{ output_r sc_out sc_lv 16 signal 2 } 
	{ output_r_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ feedback sc_in sc_lv 16 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_0", "role": "default" }} , 
 	{ "name": "input_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1", "role": "default" }} , 
 	{ "name": "output_r", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "default" }} , 
 	{ "name": "output_r_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_r", "role": "ap_vld" }} , 
 	{ "name": "feedback", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feedback", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "27"],
		"CDFG" : "eclair",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "feedback", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "Inst_start_state" : "8", "Inst_end_state" : "16"}]},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "Inst_start_state" : "1", "Inst_end_state" : "7"},
					{"ID" : "27", "SubInstance" : "grp_forward_layer_2_1_s_fu_143", "Port" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "Inst_start_state" : "8", "Inst_end_state" : "16"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_16s_8ns_24_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_8_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_16s_8ns_24_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_10_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_10ns_16s_26_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_8_1_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_8ns_16s_24_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_17_3_16_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_10_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_10ns_16s_26_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_17_3_16_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_10_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_10ns_16s_26_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_10_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_10ns_16s_26_1_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_15_3_16_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_8_1_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_8ns_16s_24_1_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_15_3_16_1_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_513_8_8_1_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.mul_8ns_16s_24_1_1_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_13_3_16_1_1_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_13_3_16_1_1_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_11_3_16_1_1_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_97.sparsemux_11_3_16_1_1_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143", "Parent" : "0", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "forward_layer_2_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
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
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_9_3_16_1_1_U58", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_7_2_6_1_1_U59", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_9_3_16_1_1_U60", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_7_2_6_1_1_U61", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_8_1_1_U62", "Parent" : "27"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_13_3_16_1_1_U63", "Parent" : "27"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_13_3_16_1_1_U64", "Parent" : "27"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_13_3_16_1_1_U65", "Parent" : "27"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_11_3_16_1_1_U66", "Parent" : "27"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_8_1_1_U67", "Parent" : "27"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_13_3_16_1_1_U68", "Parent" : "27"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_13_3_16_1_1_U69", "Parent" : "27"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_13_3_16_1_1_U70", "Parent" : "27"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_11_3_16_1_1_U71", "Parent" : "27"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_10_1_1_U72", "Parent" : "27"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_10_1_1_U73", "Parent" : "27"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_10_1_1_U74", "Parent" : "27"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_10_1_1_U75", "Parent" : "27"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_8_1_1_U76", "Parent" : "27"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mul_16s_10ns_26_1_1_U77", "Parent" : "27"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.sparsemux_513_8_8_1_1_U78", "Parent" : "27"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mul_16s_10ns_26_1_1_U79", "Parent" : "27"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mac_muladd_16s_8ns_26s_26_4_1_U80", "Parent" : "27"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mac_muladd_16s_8ns_26s_26_4_1_U81", "Parent" : "27"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mac_muladd_16s_10ns_26s_27_4_1_U82", "Parent" : "27"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mac_muladd_16s_10ns_26s_27_4_1_U83", "Parent" : "27"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mac_muladd_16s_8ns_27s_27_4_1_U84", "Parent" : "27"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_143.mac_muladd_16s_8ns_27s_27_4_1_U85", "Parent" : "27"}]}


set ArgLastReadFirstWriteLatency {
	eclair {
		input_0 {Type I LastRead 7 FirstWrite -1}
		input_1 {Type I LastRead 7 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 15}
		feedback {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7 {Type IO LastRead -1 FirstWrite -1}}
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
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7 {Type IO LastRead 2 FirstWrite 6}}
	forward_layer_2_1_s {
		x_0_val {Type I LastRead 0 FirstWrite -1}
		x_1_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 {Type O LastRead -1 FirstWrite 1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 {Type O LastRead -1 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_4 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_5 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_6 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_7 {Type I LastRead 2 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 {Type O LastRead -1 FirstWrite 1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 {Type O LastRead -1 FirstWrite 2}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_4 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_5 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_6 {Type I LastRead 2 FirstWrite -1}
		p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_7 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0 { ap_none {  { input_0 in_data 0 16 } } }
	input_1 { ap_none {  { input_1 in_data 0 16 } } }
	output_r { ap_vld {  { output_r out_data 1 16 }  { output_r_ap_vld out_vld 1 1 } } }
	feedback { ap_none {  { feedback in_data 0 16 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
