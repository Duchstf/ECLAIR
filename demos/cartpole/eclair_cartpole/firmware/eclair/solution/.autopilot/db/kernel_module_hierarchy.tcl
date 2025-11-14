set ModuleHierarchy {[{
"Name" : "eclair","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_forward_layer_4_2_s_fu_200","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_p_hls_fptosi_float_i32_fu_1792","ID" : "2","Type" : "sequential"},
		{"Name" : "grp_forward_layer_4_2_Pipeline_ACCUM_O_fu_1801","ID" : "3","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ACCUM_O","ID" : "4","Type" : "pipeline"},]},]},
	{"Name" : "grp_backward_input_4_2_float_s_fu_316","ID" : "5","Type" : "pipeline"},]
}]}