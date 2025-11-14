# This script segment is generated automatically by AutoPilot

set name eclair_sitofp_32ns_32_3_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitofp} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set name eclair_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eclair_sparsemux_9_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
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
    id 186 \
    name LUT_B0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B0 \
    op interface \
    ports { LUT_B0_address0 { O 8 vector } LUT_B0_ce0 { O 1 bit } LUT_B0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name LUT_B1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B1 \
    op interface \
    ports { LUT_B1_address0 { O 8 vector } LUT_B1_ce0 { O 1 bit } LUT_B1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name LUT_B2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B2 \
    op interface \
    ports { LUT_B2_address0 { O 8 vector } LUT_B2_ce0 { O 1 bit } LUT_B2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name LUT_B3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LUT_B3 \
    op interface \
    ports { LUT_B3_address0 { O 8 vector } LUT_B3_ce0 { O 1 bit } LUT_B3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LUT_B3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name p_ZL1P_0_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_0_0 \
    op interface \
    ports { p_ZL1P_0_0_0_address0 { O 1 vector } p_ZL1P_0_0_0_ce0 { O 1 bit } p_ZL1P_0_0_0_q0 { I 32 vector } p_ZL1P_0_0_0_address1 { O 1 vector } p_ZL1P_0_0_0_ce1 { O 1 bit } p_ZL1P_0_0_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name p_ZL1P_0_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_0_1 \
    op interface \
    ports { p_ZL1P_0_0_1_address0 { O 1 vector } p_ZL1P_0_0_1_ce0 { O 1 bit } p_ZL1P_0_0_1_q0 { I 32 vector } p_ZL1P_0_0_1_address1 { O 1 vector } p_ZL1P_0_0_1_ce1 { O 1 bit } p_ZL1P_0_0_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name p_ZL1P_0_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_0_2 \
    op interface \
    ports { p_ZL1P_0_0_2_address0 { O 1 vector } p_ZL1P_0_0_2_ce0 { O 1 bit } p_ZL1P_0_0_2_q0 { I 32 vector } p_ZL1P_0_0_2_address1 { O 1 vector } p_ZL1P_0_0_2_ce1 { O 1 bit } p_ZL1P_0_0_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name p_ZL1P_0_0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_0_3 \
    op interface \
    ports { p_ZL1P_0_0_3_address0 { O 1 vector } p_ZL1P_0_0_3_ce0 { O 1 bit } p_ZL1P_0_0_3_q0 { I 32 vector } p_ZL1P_0_0_3_address1 { O 1 vector } p_ZL1P_0_0_3_ce1 { O 1 bit } p_ZL1P_0_0_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name p_ZL1P_1_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_0_0 \
    op interface \
    ports { p_ZL1P_1_0_0_address0 { O 1 vector } p_ZL1P_1_0_0_ce0 { O 1 bit } p_ZL1P_1_0_0_q0 { I 32 vector } p_ZL1P_1_0_0_address1 { O 1 vector } p_ZL1P_1_0_0_ce1 { O 1 bit } p_ZL1P_1_0_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name p_ZL1P_1_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_0_1 \
    op interface \
    ports { p_ZL1P_1_0_1_address0 { O 1 vector } p_ZL1P_1_0_1_ce0 { O 1 bit } p_ZL1P_1_0_1_q0 { I 32 vector } p_ZL1P_1_0_1_address1 { O 1 vector } p_ZL1P_1_0_1_ce1 { O 1 bit } p_ZL1P_1_0_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name p_ZL1P_1_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_0_2 \
    op interface \
    ports { p_ZL1P_1_0_2_address0 { O 1 vector } p_ZL1P_1_0_2_ce0 { O 1 bit } p_ZL1P_1_0_2_q0 { I 32 vector } p_ZL1P_1_0_2_address1 { O 1 vector } p_ZL1P_1_0_2_ce1 { O 1 bit } p_ZL1P_1_0_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name p_ZL1P_1_0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_0_3 \
    op interface \
    ports { p_ZL1P_1_0_3_address0 { O 1 vector } p_ZL1P_1_0_3_ce0 { O 1 bit } p_ZL1P_1_0_3_q0 { I 32 vector } p_ZL1P_1_0_3_address1 { O 1 vector } p_ZL1P_1_0_3_ce1 { O 1 bit } p_ZL1P_1_0_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name p_ZL1P_0_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_1_0 \
    op interface \
    ports { p_ZL1P_0_1_0_address0 { O 1 vector } p_ZL1P_0_1_0_ce0 { O 1 bit } p_ZL1P_0_1_0_q0 { I 32 vector } p_ZL1P_0_1_0_address1 { O 1 vector } p_ZL1P_0_1_0_ce1 { O 1 bit } p_ZL1P_0_1_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name p_ZL1P_0_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_1_1 \
    op interface \
    ports { p_ZL1P_0_1_1_address0 { O 1 vector } p_ZL1P_0_1_1_ce0 { O 1 bit } p_ZL1P_0_1_1_q0 { I 32 vector } p_ZL1P_0_1_1_address1 { O 1 vector } p_ZL1P_0_1_1_ce1 { O 1 bit } p_ZL1P_0_1_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name p_ZL1P_0_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_1_2 \
    op interface \
    ports { p_ZL1P_0_1_2_address0 { O 1 vector } p_ZL1P_0_1_2_ce0 { O 1 bit } p_ZL1P_0_1_2_q0 { I 32 vector } p_ZL1P_0_1_2_address1 { O 1 vector } p_ZL1P_0_1_2_ce1 { O 1 bit } p_ZL1P_0_1_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name p_ZL1P_0_1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_1_3 \
    op interface \
    ports { p_ZL1P_0_1_3_address0 { O 1 vector } p_ZL1P_0_1_3_ce0 { O 1 bit } p_ZL1P_0_1_3_q0 { I 32 vector } p_ZL1P_0_1_3_address1 { O 1 vector } p_ZL1P_0_1_3_ce1 { O 1 bit } p_ZL1P_0_1_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name p_ZL1P_1_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_1_0 \
    op interface \
    ports { p_ZL1P_1_1_0_address0 { O 1 vector } p_ZL1P_1_1_0_ce0 { O 1 bit } p_ZL1P_1_1_0_q0 { I 32 vector } p_ZL1P_1_1_0_address1 { O 1 vector } p_ZL1P_1_1_0_ce1 { O 1 bit } p_ZL1P_1_1_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name p_ZL1P_1_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_1_1 \
    op interface \
    ports { p_ZL1P_1_1_1_address0 { O 1 vector } p_ZL1P_1_1_1_ce0 { O 1 bit } p_ZL1P_1_1_1_q0 { I 32 vector } p_ZL1P_1_1_1_address1 { O 1 vector } p_ZL1P_1_1_1_ce1 { O 1 bit } p_ZL1P_1_1_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name p_ZL1P_1_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_1_2 \
    op interface \
    ports { p_ZL1P_1_1_2_address0 { O 1 vector } p_ZL1P_1_1_2_ce0 { O 1 bit } p_ZL1P_1_1_2_q0 { I 32 vector } p_ZL1P_1_1_2_address1 { O 1 vector } p_ZL1P_1_1_2_ce1 { O 1 bit } p_ZL1P_1_1_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name p_ZL1P_1_1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_1_3 \
    op interface \
    ports { p_ZL1P_1_1_3_address0 { O 1 vector } p_ZL1P_1_1_3_ce0 { O 1 bit } p_ZL1P_1_1_3_q0 { I 32 vector } p_ZL1P_1_1_3_address1 { O 1 vector } p_ZL1P_1_1_3_ce1 { O 1 bit } p_ZL1P_1_1_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name p_ZL1P_0_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_2_0 \
    op interface \
    ports { p_ZL1P_0_2_0_address0 { O 1 vector } p_ZL1P_0_2_0_ce0 { O 1 bit } p_ZL1P_0_2_0_q0 { I 32 vector } p_ZL1P_0_2_0_address1 { O 1 vector } p_ZL1P_0_2_0_ce1 { O 1 bit } p_ZL1P_0_2_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name p_ZL1P_0_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_2_1 \
    op interface \
    ports { p_ZL1P_0_2_1_address0 { O 1 vector } p_ZL1P_0_2_1_ce0 { O 1 bit } p_ZL1P_0_2_1_q0 { I 32 vector } p_ZL1P_0_2_1_address1 { O 1 vector } p_ZL1P_0_2_1_ce1 { O 1 bit } p_ZL1P_0_2_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name p_ZL1P_0_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_2_2 \
    op interface \
    ports { p_ZL1P_0_2_2_address0 { O 1 vector } p_ZL1P_0_2_2_ce0 { O 1 bit } p_ZL1P_0_2_2_q0 { I 32 vector } p_ZL1P_0_2_2_address1 { O 1 vector } p_ZL1P_0_2_2_ce1 { O 1 bit } p_ZL1P_0_2_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name p_ZL1P_0_2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_2_3 \
    op interface \
    ports { p_ZL1P_0_2_3_address0 { O 1 vector } p_ZL1P_0_2_3_ce0 { O 1 bit } p_ZL1P_0_2_3_q0 { I 32 vector } p_ZL1P_0_2_3_address1 { O 1 vector } p_ZL1P_0_2_3_ce1 { O 1 bit } p_ZL1P_0_2_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name p_ZL1P_1_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_2_0 \
    op interface \
    ports { p_ZL1P_1_2_0_address0 { O 1 vector } p_ZL1P_1_2_0_ce0 { O 1 bit } p_ZL1P_1_2_0_q0 { I 32 vector } p_ZL1P_1_2_0_address1 { O 1 vector } p_ZL1P_1_2_0_ce1 { O 1 bit } p_ZL1P_1_2_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name p_ZL1P_1_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_2_1 \
    op interface \
    ports { p_ZL1P_1_2_1_address0 { O 1 vector } p_ZL1P_1_2_1_ce0 { O 1 bit } p_ZL1P_1_2_1_q0 { I 32 vector } p_ZL1P_1_2_1_address1 { O 1 vector } p_ZL1P_1_2_1_ce1 { O 1 bit } p_ZL1P_1_2_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name p_ZL1P_1_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_2_2 \
    op interface \
    ports { p_ZL1P_1_2_2_address0 { O 1 vector } p_ZL1P_1_2_2_ce0 { O 1 bit } p_ZL1P_1_2_2_q0 { I 32 vector } p_ZL1P_1_2_2_address1 { O 1 vector } p_ZL1P_1_2_2_ce1 { O 1 bit } p_ZL1P_1_2_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name p_ZL1P_1_2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_2_3 \
    op interface \
    ports { p_ZL1P_1_2_3_address0 { O 1 vector } p_ZL1P_1_2_3_ce0 { O 1 bit } p_ZL1P_1_2_3_q0 { I 32 vector } p_ZL1P_1_2_3_address1 { O 1 vector } p_ZL1P_1_2_3_ce1 { O 1 bit } p_ZL1P_1_2_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name p_ZL1P_0_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_3_0 \
    op interface \
    ports { p_ZL1P_0_3_0_address0 { O 1 vector } p_ZL1P_0_3_0_ce0 { O 1 bit } p_ZL1P_0_3_0_q0 { I 32 vector } p_ZL1P_0_3_0_address1 { O 1 vector } p_ZL1P_0_3_0_ce1 { O 1 bit } p_ZL1P_0_3_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name p_ZL1P_0_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_3_1 \
    op interface \
    ports { p_ZL1P_0_3_1_address0 { O 1 vector } p_ZL1P_0_3_1_ce0 { O 1 bit } p_ZL1P_0_3_1_q0 { I 32 vector } p_ZL1P_0_3_1_address1 { O 1 vector } p_ZL1P_0_3_1_ce1 { O 1 bit } p_ZL1P_0_3_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name p_ZL1P_0_3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_3_2 \
    op interface \
    ports { p_ZL1P_0_3_2_address0 { O 1 vector } p_ZL1P_0_3_2_ce0 { O 1 bit } p_ZL1P_0_3_2_q0 { I 32 vector } p_ZL1P_0_3_2_address1 { O 1 vector } p_ZL1P_0_3_2_ce1 { O 1 bit } p_ZL1P_0_3_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name p_ZL1P_0_3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_0_3_3 \
    op interface \
    ports { p_ZL1P_0_3_3_address0 { O 1 vector } p_ZL1P_0_3_3_ce0 { O 1 bit } p_ZL1P_0_3_3_q0 { I 32 vector } p_ZL1P_0_3_3_address1 { O 1 vector } p_ZL1P_0_3_3_ce1 { O 1 bit } p_ZL1P_0_3_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name p_ZL1P_1_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_3_0 \
    op interface \
    ports { p_ZL1P_1_3_0_address0 { O 1 vector } p_ZL1P_1_3_0_ce0 { O 1 bit } p_ZL1P_1_3_0_q0 { I 32 vector } p_ZL1P_1_3_0_address1 { O 1 vector } p_ZL1P_1_3_0_ce1 { O 1 bit } p_ZL1P_1_3_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name p_ZL1P_1_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_3_1 \
    op interface \
    ports { p_ZL1P_1_3_1_address0 { O 1 vector } p_ZL1P_1_3_1_ce0 { O 1 bit } p_ZL1P_1_3_1_q0 { I 32 vector } p_ZL1P_1_3_1_address1 { O 1 vector } p_ZL1P_1_3_1_ce1 { O 1 bit } p_ZL1P_1_3_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 220 \
    name p_ZL1P_1_3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_3_2 \
    op interface \
    ports { p_ZL1P_1_3_2_address0 { O 1 vector } p_ZL1P_1_3_2_ce0 { O 1 bit } p_ZL1P_1_3_2_q0 { I 32 vector } p_ZL1P_1_3_2_address1 { O 1 vector } p_ZL1P_1_3_2_ce1 { O 1 bit } p_ZL1P_1_3_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name p_ZL1P_1_3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZL1P_1_3_3 \
    op interface \
    ports { p_ZL1P_1_3_3_address0 { O 1 vector } p_ZL1P_1_3_3_ce0 { O 1 bit } p_ZL1P_1_3_3_q0 { I 32 vector } p_ZL1P_1_3_3_address1 { O 1 vector } p_ZL1P_1_3_3_ce1 { O 1 bit } p_ZL1P_1_3_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name x_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_0_val \
    op interface \
    ports { x_0_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name x_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_1_val \
    op interface \
    ports { x_1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name x_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_2_val \
    op interface \
    ports { x_2_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name x_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_3_val \
    op interface \
    ports { x_3_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name output_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_0 \
    op interface \
    ports { output_0 { O 32 vector } output_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name output_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_1 \
    op interface \
    ports { output_1 { O 32 vector } output_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_0_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_0_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_0_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_1_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_1_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_1_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 { O 3 vector } eclair_float_const_float_float_const_ap_uint_2_C_k_1_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 { O 8 vector } eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3_ap_vld { O 1 bit } } \
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


