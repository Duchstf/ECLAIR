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
	{ input_r int 16 regular {pointer 0}  }
	{ output_r int 16 regular {pointer 1}  }
	{ feedback int 16 regular {pointer 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feedback", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r sc_in sc_lv 16 signal 0 } 
	{ output_r sc_out sc_lv 16 signal 1 } 
	{ output_r_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ feedback sc_in sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "output_r", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "default" }} , 
 	{ "name": "output_r_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_r", "role": "ap_vld" }} , 
 	{ "name": "feedback", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feedback", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "19"],
		"CDFG" : "eclair",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "feedback", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "LUT_B0", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "LUT_B0", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "LUT_B1", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "LUT_B1", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "LUT_B2", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "LUT_B2", "Inst_start_state" : "1", "Inst_end_state" : "5"}]},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_forward_layer_1_1_s_fu_105", "Port" : "LUT_B3", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "9", "SubInstance" : "grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Port" : "LUT_B3", "Inst_start_state" : "1", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.mul_16s_9ns_25_1_1_U1", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.mul_16s_8ns_24_1_1_U2", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.mul_10ns_16s_26_1_1_U3", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.sparsemux_9_2_16_1_1_U4", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.sparsemux_9_2_16_1_1_U5", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.mul_10ns_16s_26_1_1_U6", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.sparsemux_9_2_16_1_1_U7", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.mul_8ns_16s_24_1_1_U8", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_1_1_ap_fixed_16_6_4_0_0_s_fu_79.sparsemux_9_2_16_1_1_U9", "Parent" : "9"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "forward_layer_1_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.sparsemux_9_3_16_1_1_U29", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.sparsemux_7_2_3_1_1_U30", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.sparsemux_9_2_16_1_1_U31", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.sparsemux_9_2_16_1_1_U32", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.sparsemux_9_2_16_1_1_U33", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.mul_16s_10ns_26_1_1_U34", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.sparsemux_9_2_16_1_1_U35", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.mac_muladd_16s_8ns_26s_26_4_1_U36", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.mac_muladd_16s_10ns_26s_27_4_1_U37", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_1_1_s_fu_105.mac_muladd_16s_8ns_27s_27_4_1_U38", "Parent" : "19"}]}


set ArgLastReadFirstWriteLatency {
	eclair {
		input_r {Type I LastRead 5 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 6}
		feedback {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52 {Type IO LastRead -1 FirstWrite -1}
		LUT_B0 {Type I LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1 {Type IO LastRead -1 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P {Type IO LastRead -1 FirstWrite -1}
		LUT_B1 {Type I LastRead -1 FirstWrite -1}
		LUT_B2 {Type I LastRead -1 FirstWrite -1}
		LUT_B3 {Type I LastRead -1 FirstWrite -1}}
	backward_input_1_1_ap_fixed_16_6_4_0_0_s {
		dL_dy_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53 {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52 {Type I LastRead 0 FirstWrite -1}
		LUT_B0 {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3 {Type IO LastRead 2 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2 {Type IO LastRead 2 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1 {Type IO LastRead 2 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P {Type IO LastRead 2 FirstWrite 2}
		LUT_B1 {Type I LastRead 0 FirstWrite -1}
		LUT_B2 {Type I LastRead 0 FirstWrite -1}
		LUT_B3 {Type I LastRead 0 FirstWrite -1}}
	forward_layer_1_1_s {
		x_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_53 {Type O LastRead -1 FirstWrite 2}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_52 {Type O LastRead -1 FirstWrite 2}
		LUT_B0 {Type I LastRead 2 FirstWrite -1}
		LUT_B1 {Type I LastRead 2 FirstWrite -1}
		LUT_B2 {Type I LastRead 2 FirstWrite -1}
		LUT_B3 {Type I LastRead 2 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_3 {Type I LastRead 5 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_2 {Type I LastRead 5 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P_1 {Type I LastRead 5 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_P {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "15", "Max" : "15"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_none {  { input_r in_data 0 16 } } }
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
