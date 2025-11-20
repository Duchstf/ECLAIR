set SynModuleInfo {
  {SRCNAME mlp_Pipeline_FWD_O MODELNAME mlp_Pipeline_FWD_O RTLNAME mlp_mlp_Pipeline_FWD_O
    SUBMODULES {
      {MODELNAME mlp_mul_16s_16s_32_1_1 RTLNAME mlp_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mlp_flow_control_loop_pipe_sequential_init RTLNAME mlp_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mlp_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {forward_output_layer<128, 1>} MODELNAME forward_output_layer_128_1_s RTLNAME mlp_forward_output_layer_128_1_s
    SUBMODULES {
      {MODELNAME mlp_mul_16s_15ns_31_1_1 RTLNAME mlp_mul_16s_15ns_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {backward_output<128, 1, ap_fixed<16, 6, 4, 0, 0> >} MODELNAME backward_output_128_1_ap_fixed_16_6_4_0_0_s RTLNAME mlp_backward_output_128_1_ap_fixed_16_6_4_0_0_s
    SUBMODULES {
      {MODELNAME mlp_mac_mulsub_16s_15ns_26s_32_4_1 RTLNAME mlp_mac_mulsub_16s_15ns_26s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME {backward_input<1, 128, ap_fixed<16, 6, 4, 0, 0> >} MODELNAME backward_input_1_128_ap_fixed_16_6_4_0_0_s RTLNAME mlp_backward_input_1_128_ap_fixed_16_6_4_0_0_s
    SUBMODULES {
      {MODELNAME mlp_mac_mulsub_16s_16s_26s_32_4_1 RTLNAME mlp_mac_mulsub_16s_16s_26s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME mlp MODELNAME mlp RTLNAME mlp IS_TOP 1
    SUBMODULES {
      {MODELNAME mlp_P_L1_W_0_RAM_AUTO_1R1W RTLNAME mlp_P_L1_W_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mlp_C_C1_x_copy_RAM_AUTO_1R1W RTLNAME mlp_C_C1_x_copy_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mlp_C_C0_z_RAM_AUTO_1R1W RTLNAME mlp_C_C0_z_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mlp_P_L0_b_RAM_AUTO_1R1W RTLNAME mlp_P_L0_b_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mlp_P_L0_W_0_RAM_AUTO_1R1W RTLNAME mlp_P_L0_W_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mlp_layer1_out_RAM_AUTO_1R1W RTLNAME mlp_layer1_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mlp_dL_dx_0_RAM_AUTO_1R1W RTLNAME mlp_dL_dx_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
