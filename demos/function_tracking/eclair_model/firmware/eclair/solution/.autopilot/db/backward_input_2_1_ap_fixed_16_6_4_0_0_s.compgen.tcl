# This script segment is generated automatically by AutoPilot

set name eclair_mul_16s_8ns_24_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 44 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3 \
    op interface \
    ports { p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address0 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce0 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_q0 { I 16 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_address1 { O 1 vector } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_ce1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_we1 { O 1 bit } p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ6eclairPK8ap_fixedILi16ELi6EL9ap_q_mode4EL9ap_o_mode0ELi0EEPS2_S4_E1P_1_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name dL_dy_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dL_dy_val \
    op interface \
    ports { dL_dy_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_0 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_16_6_4_0_0_const_C_k_61_1 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 \
    op interface \
    ports { eclair_ap_fixed_const_ap_fixed_ap_fixed_const_C_u_index_60_1 { I 8 vector } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


