set ModuleHierarchy {[{
"Name" : "mlp","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mlp_Pipeline_FWD_O_fu_89","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FWD_O","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_forward_output_layer_128_1_s_fu_103","ID" : "3","Type" : "sequential"},
	{"Name" : "grp_backward_output_128_1_ap_fixed_16_6_4_0_0_s_fu_115","ID" : "4","Type" : "sequential"},
	{"Name" : "grp_backward_input_1_128_ap_fixed_16_6_4_0_0_s_fu_128","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BWD_O","ID" : "6","Type" : "pipeline"},]},]
}]}