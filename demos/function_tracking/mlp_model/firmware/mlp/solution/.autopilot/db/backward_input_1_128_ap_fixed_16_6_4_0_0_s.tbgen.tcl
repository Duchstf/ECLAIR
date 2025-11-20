set moduleName backward_input_1_128_ap_fixed_16_6_4_0_0_s
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
set C_modelName {backward_input<1, 128, ap_fixed<16, 6, 4, 0, 0> >}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict dL_dy { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_C0_z { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict P_L0_b { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict P_L0_W_0 { MEM_WIDTH 16 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ dL_dy int 16 regular {array 128 { 1 3 } 1 1 }  }
	{ mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy int 16 regular {pointer 0} {global 0}  }
	{ C_C0_z int 16 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ P_L0_b int 16 regular {array 128 { 0 1 } 1 1 } {global 2}  }
	{ P_L0_W_0 int 16 regular {array 128 { 0 2 } 1 1 } {global 2}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "dL_dy", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "C_C0_z", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "P_L0_b", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "P_L0_W_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dL_dy_address0 sc_out sc_lv 7 signal 0 } 
	{ dL_dy_ce0 sc_out sc_logic 1 signal 0 } 
	{ dL_dy_q0 sc_in sc_lv 16 signal 0 } 
	{ mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy sc_in sc_lv 16 signal 1 } 
	{ C_C0_z_address0 sc_out sc_lv 7 signal 2 } 
	{ C_C0_z_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_C0_z_q0 sc_in sc_lv 16 signal 2 } 
	{ P_L0_b_address0 sc_out sc_lv 7 signal 3 } 
	{ P_L0_b_ce0 sc_out sc_logic 1 signal 3 } 
	{ P_L0_b_we0 sc_out sc_logic 1 signal 3 } 
	{ P_L0_b_d0 sc_out sc_lv 16 signal 3 } 
	{ P_L0_b_address1 sc_out sc_lv 7 signal 3 } 
	{ P_L0_b_ce1 sc_out sc_logic 1 signal 3 } 
	{ P_L0_b_q1 sc_in sc_lv 16 signal 3 } 
	{ P_L0_W_0_address0 sc_out sc_lv 7 signal 4 } 
	{ P_L0_W_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ P_L0_W_0_we0 sc_out sc_logic 1 signal 4 } 
	{ P_L0_W_0_d0 sc_out sc_lv 16 signal 4 } 
	{ P_L0_W_0_address1 sc_out sc_lv 7 signal 4 } 
	{ P_L0_W_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ P_L0_W_0_we1 sc_out sc_logic 1 signal 4 } 
	{ P_L0_W_0_d1 sc_out sc_lv 16 signal 4 } 
	{ P_L0_W_0_q1 sc_in sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dL_dy_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dL_dy", "role": "address0" }} , 
 	{ "name": "dL_dy_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dL_dy", "role": "ce0" }} , 
 	{ "name": "dL_dy_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dL_dy", "role": "q0" }} , 
 	{ "name": "mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy", "role": "default" }} , 
 	{ "name": "C_C0_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "C_C0_z", "role": "address0" }} , 
 	{ "name": "C_C0_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_C0_z", "role": "ce0" }} , 
 	{ "name": "C_C0_z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C_C0_z", "role": "q0" }} , 
 	{ "name": "P_L0_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_L0_b", "role": "address0" }} , 
 	{ "name": "P_L0_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_L0_b", "role": "ce0" }} , 
 	{ "name": "P_L0_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_L0_b", "role": "we0" }} , 
 	{ "name": "P_L0_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_L0_b", "role": "d0" }} , 
 	{ "name": "P_L0_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_L0_b", "role": "address1" }} , 
 	{ "name": "P_L0_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_L0_b", "role": "ce1" }} , 
 	{ "name": "P_L0_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_L0_b", "role": "q1" }} , 
 	{ "name": "P_L0_W_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "address0" }} , 
 	{ "name": "P_L0_W_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "ce0" }} , 
 	{ "name": "P_L0_W_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "we0" }} , 
 	{ "name": "P_L0_W_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "d0" }} , 
 	{ "name": "P_L0_W_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "address1" }} , 
 	{ "name": "P_L0_W_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "ce1" }} , 
 	{ "name": "P_L0_W_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "we1" }} , 
 	{ "name": "P_L0_W_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "d1" }} , 
 	{ "name": "P_L0_W_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "P_L0_W_0", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "backward_input_1_128_ap_fixed_16_6_4_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262", "EstimateLatencyMax" : "262",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dL_dy", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_C0_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_L0_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "P_L0_W_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "BWD_O", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state9"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_26s_32_4_1_U403", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backward_input_1_128_ap_fixed_16_6_4_0_0_s {
		dL_dy {Type I LastRead 1 FirstWrite -1}
		mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy {Type I LastRead 0 FirstWrite -1}
		C_C0_z {Type I LastRead 1 FirstWrite -1}
		P_L0_b {Type IO LastRead 1 FirstWrite 3}
		P_L0_W_0 {Type IO LastRead 3 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "262", "Max" : "262"}
	, {"Name" : "Interval", "Min" : "262", "Max" : "262"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dL_dy { ap_memory {  { dL_dy_address0 mem_address 1 7 }  { dL_dy_ce0 mem_ce 1 1 }  { dL_dy_q0 mem_dout 0 16 } } }
	mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy { ap_none {  { mlp_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_C0_x_copy in_data 0 16 } } }
	C_C0_z { ap_memory {  { C_C0_z_address0 mem_address 1 7 }  { C_C0_z_ce0 mem_ce 1 1 }  { C_C0_z_q0 mem_dout 0 16 } } }
	P_L0_b { ap_memory {  { P_L0_b_address0 mem_address 1 7 }  { P_L0_b_ce0 mem_ce 1 1 }  { P_L0_b_we0 mem_we 1 1 }  { P_L0_b_d0 mem_din 1 16 }  { P_L0_b_address1 MemPortADDR2 1 7 }  { P_L0_b_ce1 MemPortCE2 1 1 }  { P_L0_b_q1 MemPortDOUT2 0 16 } } }
	P_L0_W_0 { ap_memory {  { P_L0_W_0_address0 mem_address 1 7 }  { P_L0_W_0_ce0 mem_ce 1 1 }  { P_L0_W_0_we0 mem_we 1 1 }  { P_L0_W_0_d0 mem_din 1 16 }  { P_L0_W_0_address1 MemPortADDR2 1 7 }  { P_L0_W_0_ce1 MemPortCE2 1 1 }  { P_L0_W_0_we1 MemPortWE2 1 1 }  { P_L0_W_0_d1 MemPortDIN2 1 16 }  { P_L0_W_0_q1 MemPortDOUT2 0 16 } } }
}
