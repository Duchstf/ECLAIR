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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "20"],
		"CDFG" : "eclair",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
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
					{"ID" : "20", "SubInstance" : "grp_forward_layer_2_1_s_fu_83", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "2", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_forward_layer_2_1_s_fu_83", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "2", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "P_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_forward_layer_2_1_s_fu_83", "Port" : "P_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "2", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67", "Port" : "P_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_forward_layer_2_1_s_fu_83", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "2", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_forward_layer_2_1_s_fu_83", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "2", "SubInstance" : "grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "backward_input_2_1_ap_fixed_16_6_4_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
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
			{"Name" : "P_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mul_16s_8ns_24_1_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_8_1_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_10_1_1_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_10_1_1_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_8_1_1_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_8_1_1_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_10_1_1_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_10_1_1_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.sparsemux_513_8_8_1_1_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_8ns_26s_27_4_1_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_10ns_26s_27_4_1_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_10ns_26s_27_4_1_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_8ns_26s_27_4_1_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_8ns_26s_27_4_1_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_10ns_26s_27_4_1_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_10ns_26s_27_4_1_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_2_1_ap_fixed_16_6_4_0_0_s_fu_67.mac_mulsub_16s_8ns_26s_27_4_1_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "forward_layer_2_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
			{"Name" : "P_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_9_3_16_1_1_U31", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_7_2_4_1_1_U32", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_9_3_16_1_1_U33", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_7_2_4_1_1_U34", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_8_1_1_U35", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_10_1_1_U36", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_10_1_1_U37", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_8_1_1_U38", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_8_1_1_U39", "Parent" : "20"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mul_16s_10ns_26_1_1_U40", "Parent" : "20"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_10_1_1_U41", "Parent" : "20"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_10_1_1_U42", "Parent" : "20"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.sparsemux_513_8_8_1_1_U43", "Parent" : "20"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mul_16s_10ns_26_1_1_U44", "Parent" : "20"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mac_muladd_16s_8ns_26s_26_4_1_U45", "Parent" : "20"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mac_muladd_16s_10ns_26s_27_4_1_U46", "Parent" : "20"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mac_muladd_16s_8ns_26s_26_4_1_U47", "Parent" : "20"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mac_muladd_16s_8ns_27s_27_4_1_U48", "Parent" : "20"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mac_muladd_16s_10ns_26s_27_4_1_U49", "Parent" : "20"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_2_1_s_fu_83.mac_muladd_16s_8ns_27s_27_4_1_U50", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	eclair {
		input_0 {Type I LastRead 2 FirstWrite -1}
		input_1 {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}
		feedback {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 {Type IO LastRead -1 FirstWrite -1}
		P_0 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 {Type IO LastRead -1 FirstWrite -1}}
	backward_input_2_1_ap_fixed_16_6_4_0_0_s {
		dL_dy_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 {Type I LastRead 2 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 {Type I LastRead 1 FirstWrite -1}
		P_0 {Type IO LastRead 30 FirstWrite 4}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 {Type I LastRead 18 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 {Type I LastRead 17 FirstWrite -1}}
	forward_layer_2_1_s {
		x_0_val {Type I LastRead 0 FirstWrite -1}
		x_1_val {Type I LastRead 1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 {Type O LastRead -1 FirstWrite 1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 {Type O LastRead -1 FirstWrite 2}
		P_0 {Type I LastRead 6 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 {Type O LastRead -1 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45", "Max" : "45"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "46"}
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
