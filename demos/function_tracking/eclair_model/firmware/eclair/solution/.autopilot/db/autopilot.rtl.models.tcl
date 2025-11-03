set SynModuleInfo {
  {SRCNAME {backward_input<2, 1, ap_fixed<16, 6, 4, 0, 0> >} MODELNAME backward_input_2_1_ap_fixed_16_6_4_0_0_s RTLNAME eclair_backward_input_2_1_ap_fixed_16_6_4_0_0_s
    SUBMODULES {
      {MODELNAME eclair_mul_16s_8ns_24_1_1 RTLNAME eclair_mul_16s_8ns_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eclair_sparsemux_513_8_8_1_1 RTLNAME eclair_sparsemux_513_8_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME eclair_sparsemux_513_8_10_1_1 RTLNAME eclair_sparsemux_513_8_10_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME eclair_mac_mulsub_16s_8ns_26s_27_4_1 RTLNAME eclair_mac_mulsub_16s_8ns_26s_27_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME eclair_mac_mulsub_16s_10ns_26s_27_4_1 RTLNAME eclair_mac_mulsub_16s_10ns_26s_27_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME {forward_layer<2, 1>} MODELNAME forward_layer_2_1_s RTLNAME eclair_forward_layer_2_1_s
    SUBMODULES {
      {MODELNAME eclair_sparsemux_9_3_16_1_1 RTLNAME eclair_sparsemux_9_3_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME eclair_sparsemux_7_2_4_1_1 RTLNAME eclair_sparsemux_7_2_4_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME eclair_mul_16s_10ns_26_1_1 RTLNAME eclair_mul_16s_10ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME eclair_mac_muladd_16s_8ns_26s_26_4_1 RTLNAME eclair_mac_muladd_16s_8ns_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME eclair_mac_muladd_16s_10ns_26s_27_4_1 RTLNAME eclair_mac_muladd_16s_10ns_26s_27_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME eclair_mac_muladd_16s_8ns_27s_27_4_1 RTLNAME eclair_mac_muladd_16s_8ns_27s_27_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME eclair MODELNAME eclair RTLNAME eclair IS_TOP 1
    SUBMODULES {
      {MODELNAME eclair_P_0_RAM_AUTO_1R1W RTLNAME eclair_P_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
