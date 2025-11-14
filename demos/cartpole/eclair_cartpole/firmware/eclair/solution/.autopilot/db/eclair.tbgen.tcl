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
	{ input_0 int 32 regular {pointer 0}  }
	{ input_1 int 32 regular {pointer 0}  }
	{ input_2 int 32 regular {pointer 0}  }
	{ input_3 int 32 regular {pointer 0}  }
	{ output_0 int 32 regular {pointer 1}  }
	{ output_1 int 32 regular {pointer 1}  }
	{ feedback_0 int 32 regular {pointer 0}  }
	{ feedback_1 int 32 regular {pointer 0}  }
	{ zero_grad int 2 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feedback_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "feedback_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zero_grad", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0 sc_in sc_lv 32 signal 0 } 
	{ input_1 sc_in sc_lv 32 signal 1 } 
	{ input_2 sc_in sc_lv 32 signal 2 } 
	{ input_3 sc_in sc_lv 32 signal 3 } 
	{ output_0 sc_out sc_lv 32 signal 4 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ output_1 sc_out sc_lv 32 signal 5 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ feedback_0 sc_in sc_lv 32 signal 6 } 
	{ feedback_1 sc_in sc_lv 32 signal 7 } 
	{ zero_grad sc_in sc_lv 2 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_0", "role": "default" }} , 
 	{ "name": "input_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_1", "role": "default" }} , 
 	{ "name": "input_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_2", "role": "default" }} , 
 	{ "name": "input_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_3", "role": "default" }} , 
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "feedback_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feedback_0", "role": "default" }} , 
 	{ "name": "feedback_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feedback_1", "role": "default" }} , 
 	{ "name": "zero_grad", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zero_grad", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "75", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139"],
		"CDFG" : "eclair",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "164",
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
			{"Name" : "input_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "output_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "output_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "feedback_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "feedback_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zero_grad", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "LUT_B0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "LUT_B0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_0_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_0_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_0_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_0_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_0_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "LUT_B1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "LUT_B1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "LUT_B2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "LUT_B2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "LUT_B3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "LUT_B3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_1_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_1_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_1_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_1_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_2_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_2_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_2_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_2_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_2_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_2_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_2_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_3_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_3_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_3_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_3_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_3_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_3_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_3_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_0_3_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_0_3_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_0_3_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_0_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_0_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_0_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_0_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_0_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_1_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_1_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_1_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_1_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_2_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_2_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_2_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_2_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_2_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_2_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_2_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_3_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_3_0", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_3_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_3_1", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_3_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_3_2", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_3_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZL1P_1_3_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_backward_input_4_2_float_s_fu_316", "Port" : "p_ZL1P_1_3_3", "Inst_start_state" : "10", "Inst_end_state" : "27"},
					{"ID" : "37", "SubInstance" : "grp_forward_layer_4_2_s_fu_200", "Port" : "p_ZL1P_1_3_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_0_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_0_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_0_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_0_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LUT_B3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_1_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_1_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_1_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_1_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_2_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_2_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_2_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_2_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_3_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_3_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_3_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_0_3_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_0_0_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_0_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_0_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_0_3_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_1_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_1_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_1_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_1_3_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_2_0_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_2_1_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_2_2_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_2_3_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_3_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_3_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_3_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL1P_1_3_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200", "Parent" : "0", "Child" : ["38", "39", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
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
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "output_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "output_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
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
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Inst_start_state" : "121", "Inst_end_state" : "122"}]},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Port" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Inst_start_state" : "121", "Inst_end_state" : "122"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.grp_p_hls_fptosi_float_i32_fu_1792", "Parent" : "37",
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801", "Parent" : "37", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sitofp_32ns_32_3_no_dsp_1_U110", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.fcmp_32ns_32ns_1_2_no_dsp_1_U111", "Parent" : "37"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U112", "Parent" : "37"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U113", "Parent" : "37"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U114", "Parent" : "37"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U115", "Parent" : "37"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U116", "Parent" : "37"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U117", "Parent" : "37"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U118", "Parent" : "37"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U119", "Parent" : "37"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U120", "Parent" : "37"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U121", "Parent" : "37"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U122", "Parent" : "37"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U123", "Parent" : "37"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U124", "Parent" : "37"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U125", "Parent" : "37"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U126", "Parent" : "37"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U127", "Parent" : "37"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U128", "Parent" : "37"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U129", "Parent" : "37"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U130", "Parent" : "37"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U131", "Parent" : "37"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U132", "Parent" : "37"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U133", "Parent" : "37"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U134", "Parent" : "37"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U135", "Parent" : "37"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U136", "Parent" : "37"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U137", "Parent" : "37"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U138", "Parent" : "37"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U139", "Parent" : "37"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U140", "Parent" : "37"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U141", "Parent" : "37"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U142", "Parent" : "37"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_layer_4_2_s_fu_200.sparsemux_9_2_32_1_1_U143", "Parent" : "37"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316", "Parent" : "0", "Child" : ["76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107"],
		"CDFG" : "backward_input_4_2_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dL_dy_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dL_dy_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "LUT_B0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LUT_B1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LUT_B3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_k_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZL1P_0_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_1_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_2_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_2_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_2_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_3_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_3_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_3_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_0_3_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_1_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_2_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_2_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_2_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_3_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_3_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_3_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_ZL1P_1_3_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U270", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U271", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U272", "Parent" : "75"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U273", "Parent" : "75"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U274", "Parent" : "75"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U275", "Parent" : "75"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U276", "Parent" : "75"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U277", "Parent" : "75"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U278", "Parent" : "75"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U279", "Parent" : "75"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U280", "Parent" : "75"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U281", "Parent" : "75"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U282", "Parent" : "75"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U283", "Parent" : "75"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U284", "Parent" : "75"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U285", "Parent" : "75"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U286", "Parent" : "75"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U287", "Parent" : "75"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U288", "Parent" : "75"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U289", "Parent" : "75"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U290", "Parent" : "75"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U291", "Parent" : "75"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U292", "Parent" : "75"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U293", "Parent" : "75"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U294", "Parent" : "75"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U295", "Parent" : "75"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U296", "Parent" : "75"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U297", "Parent" : "75"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U298", "Parent" : "75"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U299", "Parent" : "75"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U300", "Parent" : "75"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_input_4_2_float_s_fu_316.sparsemux_9_2_32_1_1_U301", "Parent" : "75"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U356", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U357", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U358", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U359", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U360", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U361", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U362", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U363", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U364", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U365", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U366", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U367", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U368", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U369", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U370", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U371", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U372", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U373", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U374", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U375", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U376", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U377", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U378", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U379", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U380", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U381", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U382", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U383", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U384", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U385", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U386", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U387", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	eclair {
		input_0 {Type I LastRead 0 FirstWrite -1}
		input_1 {Type I LastRead 0 FirstWrite -1}
		input_2 {Type I LastRead 0 FirstWrite -1}
		input_3 {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 38}
		output_1 {Type O LastRead -1 FirstWrite 38}
		feedback_0 {Type I LastRead 8 FirstWrite -1}
		feedback_1 {Type I LastRead 8 FirstWrite -1}
		zero_grad {Type I LastRead 0 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 {Type IO LastRead -1 FirstWrite -1}
		LUT_B0 {Type I LastRead -1 FirstWrite -1}
		p_ZL1P_0_0_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_0_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_0_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_0_3 {Type IO LastRead -1 FirstWrite -1}
		LUT_B1 {Type I LastRead -1 FirstWrite -1}
		LUT_B2 {Type I LastRead -1 FirstWrite -1}
		LUT_B3 {Type I LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 {Type IO LastRead -1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_1_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_1_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_1_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_1_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_2_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_2_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_2_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_2_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_3_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_3_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_3_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_0_3_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_1_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_2_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_2_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_2_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_2_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_3_0 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_3_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_3_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1P_1_3_3 {Type IO LastRead -1 FirstWrite -1}}
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
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 {Type O LastRead -1 FirstWrite 0}}
	backward_input_4_2_float_s {
		dL_dy_0_val {Type I LastRead 0 FirstWrite -1}
		dL_dy_1_val {Type I LastRead 0 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 {Type I LastRead 5 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 {Type I LastRead 0 FirstWrite -1}
		LUT_B0 {Type I LastRead 7 FirstWrite -1}
		p_ZL1P_0_0_0 {Type IO LastRead 7 FirstWrite 13}
		p_ZL1P_0_0_1 {Type IO LastRead 7 FirstWrite 13}
		p_ZL1P_0_0_2 {Type IO LastRead 7 FirstWrite 13}
		p_ZL1P_0_0_3 {Type IO LastRead 7 FirstWrite 13}
		LUT_B1 {Type I LastRead 7 FirstWrite -1}
		LUT_B2 {Type I LastRead 7 FirstWrite -1}
		LUT_B3 {Type I LastRead 7 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 {Type I LastRead 5 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 {Type I LastRead 5 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 {Type I LastRead 5 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 {Type I LastRead 6 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 {Type I LastRead 6 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 {Type I LastRead 6 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 {Type I LastRead 6 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 {Type I LastRead 1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 {Type I LastRead 2 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 {Type I LastRead 3 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 {Type I LastRead 4 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 {Type I LastRead 2 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 {Type I LastRead 1 FirstWrite -1}
		eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 {Type I LastRead 0 FirstWrite -1}
		p_ZL1P_0_1_0 {Type IO LastRead 8 FirstWrite 13}
		p_ZL1P_0_1_1 {Type IO LastRead 8 FirstWrite 13}
		p_ZL1P_0_1_2 {Type IO LastRead 8 FirstWrite 13}
		p_ZL1P_0_1_3 {Type IO LastRead 8 FirstWrite 13}
		p_ZL1P_0_2_0 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_0_2_1 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_0_2_2 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_0_2_3 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_0_3_0 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_0_3_1 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_0_3_2 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_0_3_3 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_1_0_0 {Type IO LastRead 11 FirstWrite 14}
		p_ZL1P_1_0_1 {Type IO LastRead 11 FirstWrite 14}
		p_ZL1P_1_0_2 {Type IO LastRead 11 FirstWrite 14}
		p_ZL1P_1_0_3 {Type IO LastRead 11 FirstWrite 14}
		p_ZL1P_1_1_0 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_1_1_1 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_1_1_2 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_1_1_3 {Type IO LastRead 9 FirstWrite 13}
		p_ZL1P_1_2_0 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_1_2_1 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_1_2_2 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_1_2_3 {Type IO LastRead 10 FirstWrite 13}
		p_ZL1P_1_3_0 {Type IO LastRead 11 FirstWrite 13}
		p_ZL1P_1_3_1 {Type IO LastRead 11 FirstWrite 13}
		p_ZL1P_1_3_2 {Type IO LastRead 11 FirstWrite 13}
		p_ZL1P_1_3_3 {Type IO LastRead 11 FirstWrite 13}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "164"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "165"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0 { ap_none {  { input_0 in_data 0 32 } } }
	input_1 { ap_none {  { input_1 in_data 0 32 } } }
	input_2 { ap_none {  { input_2 in_data 0 32 } } }
	input_3 { ap_none {  { input_3 in_data 0 32 } } }
	output_0 { ap_vld {  { output_0 out_data 1 32 }  { output_0_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 32 }  { output_1_ap_vld out_vld 1 1 } } }
	feedback_0 { ap_none {  { feedback_0 in_data 0 32 } } }
	feedback_1 { ap_none {  { feedback_1 in_data 0 32 } } }
	zero_grad { ap_none {  { zero_grad in_data 0 2 } } }
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
