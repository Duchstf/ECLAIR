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
dict set ap_memory_interface_dict P_0 { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ dL_dy_val int 16 regular  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 int 4 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 int 8 regular {pointer 0} {global 0}  }
	{ P_0 int 16 regular {array 16 { 2 3 } 1 1 } {global 2}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 int 4 regular {pointer 0} {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 int 8 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "dL_dy_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "P_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dL_dy_val sc_in sc_lv 16 signal 0 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 sc_in sc_lv 4 signal 1 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 sc_in sc_lv 8 signal 2 } 
	{ P_0_address0 sc_out sc_lv 4 signal 3 } 
	{ P_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ P_0_we0 sc_out sc_logic 1 signal 3 } 
	{ P_0_d0 sc_out sc_lv 16 signal 3 } 
	{ P_0_q0 sc_in sc_lv 16 signal 3 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 sc_in sc_lv 4 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 sc_in sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dL_dy_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dL_dy_val", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "role": "default" }} , 
 	{ "name": "P_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P_0", "role": "address0" }} , 
 	{ "name": "P_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_0", "role": "ce0" }} , 
 	{ "name": "P_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_0", "role": "we0" }} , 
 	{ "name": "P_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_0", "role": "d0" }} , 
 	{ "name": "P_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_0", "role": "q0" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_8ns_26s_27_4_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_10ns_26s_27_4_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_10ns_26s_27_4_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_8ns_26s_27_4_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_8ns_26s_27_4_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_10ns_26s_27_4_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_10ns_26s_27_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_8ns_26s_27_4_1_U17", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backward_input_2_1_ap_fixed_16_6_4_0_0_s {
		dL_dy_val {Type I LastRead 0 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 {Type I LastRead 2 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 {Type I LastRead 1 FirstWrite -1}
		P_0 {Type IO LastRead 30 FirstWrite 4}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 {Type I LastRead 18 FirstWrite -1}
		eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 {Type I LastRead 17 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "33", "Max" : "33"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dL_dy_val { ap_none {  { dL_dy_val in_data 0 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 in_data 0 4 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 in_data 0 8 } } }
	P_0 { ap_memory {  { P_0_address0 mem_address 1 4 }  { P_0_ce0 mem_ce 1 1 }  { P_0_we0 mem_we 1 1 }  { P_0_d0 mem_din 1 16 }  { P_0_q0 mem_dout 0 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 in_data 0 4 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 { ap_none {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 in_data 0 8 } } }
}
