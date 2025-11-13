# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_3_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_7_2_3_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


set name eclair_mul_16s_10ns_26_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_mac_muladd_16s_8ns_26s_26_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_mac_muladd_16s_10ns_26s_27_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_mac_muladd_16s_8ns_27s_27_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name LUT_B0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B0 \
    op interface \
    ports { LUT_B0_address0 { O 8 vector } LUT_B0_ce0 { O 1 bit } LUT_B0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name LUT_B1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B1 \
    op interface \
    ports { LUT_B1_address0 { O 8 vector } LUT_B1_ce0 { O 1 bit } LUT_B1_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name LUT_B2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B2 \
    op interface \
    ports { LUT_B2_address0 { O 8 vector } LUT_B2_ce0 { O 1 bit } LUT_B2_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name LUT_B3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B3 \
    op interface \
    ports { LUT_B3_address0 { O 8 vector } LUT_B3_ce0 { O 1 bit } LUT_B3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address0 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce0 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_q0 { I 16 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_address1 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_ce1 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address0 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce0 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_q0 { I 16 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_address1 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_ce1 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address0 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce0 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_q0 { I 16 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_address1 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_ce1 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address0 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce0 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_q0 { I 16 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_address1 { O 1 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_ce1 { O 1 bit } eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_ap_uint_2_P'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name x_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_val \
    op interface \
    ports { x_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54 { O 3 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_k_54_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53 { O 8 vector } eclair_ap_fixed_const_ap_fixed_ap_fixed_const_ap_uint_2_C_u_index_53_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 16 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


