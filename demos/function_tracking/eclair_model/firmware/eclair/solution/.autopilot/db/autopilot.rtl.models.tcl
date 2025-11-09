set SynModuleInfo {
  {SRCNAME {backward_input<2, 1, ap_fixed<16, 6, 4, 0, 0> >_Pipeline_BWD_I} MODELNAME backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I RTLNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I
    SUBMODULES {
      {MODELNAME eclair_mul_8ns_16s_24_1_1 RTLNAME eclair_mul_8ns_16s_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eclair_mul_10ns_16s_26_1_1 RTLNAME eclair_mul_10ns_16s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eclair_sparsemux_9_2_16_1_1 RTLNAME eclair_sparsemux_9_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B3_ROM_1P_LUTRAM_1R RTLNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B3_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B2_ROM_1P_LUTRAM_1R RTLNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B2_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B1_ROM_1P_LUTRAM_1R RTLNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B1_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B0_ROM_1P_LUTRAM_1R RTLNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_Pipeline_BWD_I_LUT_B0_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME eclair_flow_control_loop_pipe_sequential_init RTLNAME eclair_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME eclair_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {backward_input<2, 1, ap_fixed<16, 6, 4, 0, 0> >} MODELNAME backward_input_2_1_ap_fixed_16_6_4_0_0_s RTLNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_s
    SUBMODULES {
      {MODELNAME eclair_mul_16s_8ns_24_1_1 RTLNAME eclair_mul_16s_8ns_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {forward_layer<2, 1>} MODELNAME forward_layer_2_1_s RTLNAME eclair_forward_layer_2_1_s
    SUBMODULES {
      {MODELNAME eclair_sparsemux_9_3_16_1_1 RTLNAME eclair_sparsemux_9_3_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME eclair_sparsemux_7_2_3_1_1 RTLNAME eclair_sparsemux_7_2_3_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME eclair_mul_16s_10ns_26_1_1 RTLNAME eclair_mul_16s_10ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eclair_mac_muladd_16s_8ns_26s_26_4_1 RTLNAME eclair_mac_muladd_16s_8ns_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME eclair_mac_muladd_16s_10ns_26s_27_4_1 RTLNAME eclair_mac_muladd_16s_10ns_26s_27_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME eclair_mac_muladd_16s_8ns_27s_27_4_1 RTLNAME eclair_mac_muladd_16s_8ns_27s_27_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME eclair MODELNAME eclair RTLNAME eclair IS_TOP 1
    SUBMODULES {
      {MODELNAME eclair_p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0bkb RTLNAME eclair_p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0bkb BINDTYPE storage TYPE ram_2p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
