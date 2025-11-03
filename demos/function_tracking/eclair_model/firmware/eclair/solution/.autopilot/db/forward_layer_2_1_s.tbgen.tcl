set moduleName forward_layer_2_1_s
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
set C_modelName {forward_layer<2, 1>}
set C_modelType { int 16 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict P_0 { MEM_WIDTH 16 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ x_0_val int 16 regular  }
	{ x_1_val int 16 regular  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 int 4 regular {pointer 1} {global 1}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 int 8 regular {pointer 1} {global 1}  }
	{ P_0 int 16 regular {array 16 { 1 1 } 1 1 } {global 0}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 int 4 regular {pointer 1} {global 1}  }
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 int 8 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x_0_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "x_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "P_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_0_val sc_in sc_lv 16 signal 0 } 
	{ x_1_val sc_in sc_lv 16 signal 1 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 sc_out sc_lv 4 signal 2 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 sc_out sc_lv 8 signal 3 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ P_0_address0 sc_out sc_lv 4 signal 4 } 
	{ P_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ P_0_q0 sc_in sc_lv 16 signal 4 } 
	{ P_0_address1 sc_out sc_lv 4 signal 4 } 
	{ P_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ P_0_q1 sc_in sc_lv 16 signal 4 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 sc_out sc_lv 4 signal 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 sc_out sc_lv 8 signal 6 } 
	{ eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x_0_val", "role": "default" }} , 
 	{ "name": "x_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x_1_val", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0", "role": "ap_vld" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0", "role": "ap_vld" }} , 
 	{ "name": "P_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P_0", "role": "address0" }} , 
 	{ "name": "P_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_0", "role": "ce0" }} , 
 	{ "name": "P_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_0", "role": "q0" }} , 
 	{ "name": "P_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P_0", "role": "address1" }} , 
 	{ "name": "P_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_0", "role": "ce1" }} , 
 	{ "name": "P_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_0", "role": "q1" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1", "role": "ap_vld" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "role": "default" }} , 
 	{ "name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_16_1_1_U31", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_4_1_1_U32", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_16_1_1_U33", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_4_1_1_U34", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U35", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U36", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U37", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U38", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U39", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_10ns_26_1_1_U40", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U41", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_10_1_1_U42", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_513_8_8_1_1_U43", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_10ns_26_1_1_U44", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_26_4_1_U45", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_26s_27_4_1_U46", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_26_4_1_U47", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_27s_27_4_1_U48", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_26s_27_4_1_U49", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_27s_27_4_1_U50", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_0_val { ap_none {  { x_0_val in_data 0 16 } } }
	x_1_val { ap_none {  { x_1_val in_data 0 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 { ap_vld {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0 out_data 1 4 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_0_ap_vld out_vld 1 1 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 { ap_vld {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0 out_data 1 8 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_0_ap_vld out_vld 1 1 } } }
	P_0 { ap_memory {  { P_0_address0 mem_address 1 4 }  { P_0_ce0 mem_ce 1 1 }  { P_0_q0 mem_dout 0 16 }  { P_0_address1 MemPortADDR2 1 4 }  { P_0_ce1 MemPortCE2 1 1 }  { P_0_q1 MemPortDOUT2 0 16 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 { ap_vld {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1 out_data 1 4 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_1_ap_vld out_vld 1 1 } } }
	eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 { ap_vld {  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1 out_data 1 8 }  { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_u_index_1_ap_vld out_vld 1 1 } } }
}
