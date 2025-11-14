# This script segment is generated automatically by AutoPilot

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
    id 306 \
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
    id 307 \
    name p_ZL1P_0_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_0_0 \
    op interface \
    ports { p_ZL1P_0_0_0_address0 { O 1 vector } p_ZL1P_0_0_0_ce0 { O 1 bit } p_ZL1P_0_0_0_q0 { I 32 vector } p_ZL1P_0_0_0_address1 { O 1 vector } p_ZL1P_0_0_0_ce1 { O 1 bit } p_ZL1P_0_0_0_we1 { O 1 bit } p_ZL1P_0_0_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name p_ZL1P_0_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_0_1 \
    op interface \
    ports { p_ZL1P_0_0_1_address0 { O 1 vector } p_ZL1P_0_0_1_ce0 { O 1 bit } p_ZL1P_0_0_1_q0 { I 32 vector } p_ZL1P_0_0_1_address1 { O 1 vector } p_ZL1P_0_0_1_ce1 { O 1 bit } p_ZL1P_0_0_1_we1 { O 1 bit } p_ZL1P_0_0_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name p_ZL1P_0_0_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_0_2 \
    op interface \
    ports { p_ZL1P_0_0_2_address0 { O 1 vector } p_ZL1P_0_0_2_ce0 { O 1 bit } p_ZL1P_0_0_2_q0 { I 32 vector } p_ZL1P_0_0_2_address1 { O 1 vector } p_ZL1P_0_0_2_ce1 { O 1 bit } p_ZL1P_0_0_2_we1 { O 1 bit } p_ZL1P_0_0_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name p_ZL1P_0_0_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_0_3 \
    op interface \
    ports { p_ZL1P_0_0_3_address0 { O 1 vector } p_ZL1P_0_0_3_ce0 { O 1 bit } p_ZL1P_0_0_3_q0 { I 32 vector } p_ZL1P_0_0_3_address1 { O 1 vector } p_ZL1P_0_0_3_ce1 { O 1 bit } p_ZL1P_0_0_3_we1 { O 1 bit } p_ZL1P_0_0_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
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
    id 312 \
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
    id 313 \
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
    id 328 \
    name p_ZL1P_0_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_1_0 \
    op interface \
    ports { p_ZL1P_0_1_0_address0 { O 1 vector } p_ZL1P_0_1_0_ce0 { O 1 bit } p_ZL1P_0_1_0_q0 { I 32 vector } p_ZL1P_0_1_0_address1 { O 1 vector } p_ZL1P_0_1_0_ce1 { O 1 bit } p_ZL1P_0_1_0_we1 { O 1 bit } p_ZL1P_0_1_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name p_ZL1P_0_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_1_1 \
    op interface \
    ports { p_ZL1P_0_1_1_address0 { O 1 vector } p_ZL1P_0_1_1_ce0 { O 1 bit } p_ZL1P_0_1_1_q0 { I 32 vector } p_ZL1P_0_1_1_address1 { O 1 vector } p_ZL1P_0_1_1_ce1 { O 1 bit } p_ZL1P_0_1_1_we1 { O 1 bit } p_ZL1P_0_1_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name p_ZL1P_0_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_1_2 \
    op interface \
    ports { p_ZL1P_0_1_2_address0 { O 1 vector } p_ZL1P_0_1_2_ce0 { O 1 bit } p_ZL1P_0_1_2_q0 { I 32 vector } p_ZL1P_0_1_2_address1 { O 1 vector } p_ZL1P_0_1_2_ce1 { O 1 bit } p_ZL1P_0_1_2_we1 { O 1 bit } p_ZL1P_0_1_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 331 \
    name p_ZL1P_0_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_1_3 \
    op interface \
    ports { p_ZL1P_0_1_3_address0 { O 1 vector } p_ZL1P_0_1_3_ce0 { O 1 bit } p_ZL1P_0_1_3_q0 { I 32 vector } p_ZL1P_0_1_3_address1 { O 1 vector } p_ZL1P_0_1_3_ce1 { O 1 bit } p_ZL1P_0_1_3_we1 { O 1 bit } p_ZL1P_0_1_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name p_ZL1P_0_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_2_0 \
    op interface \
    ports { p_ZL1P_0_2_0_address0 { O 1 vector } p_ZL1P_0_2_0_ce0 { O 1 bit } p_ZL1P_0_2_0_q0 { I 32 vector } p_ZL1P_0_2_0_address1 { O 1 vector } p_ZL1P_0_2_0_ce1 { O 1 bit } p_ZL1P_0_2_0_we1 { O 1 bit } p_ZL1P_0_2_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name p_ZL1P_0_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_2_1 \
    op interface \
    ports { p_ZL1P_0_2_1_address0 { O 1 vector } p_ZL1P_0_2_1_ce0 { O 1 bit } p_ZL1P_0_2_1_q0 { I 32 vector } p_ZL1P_0_2_1_address1 { O 1 vector } p_ZL1P_0_2_1_ce1 { O 1 bit } p_ZL1P_0_2_1_we1 { O 1 bit } p_ZL1P_0_2_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name p_ZL1P_0_2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_2_2 \
    op interface \
    ports { p_ZL1P_0_2_2_address0 { O 1 vector } p_ZL1P_0_2_2_ce0 { O 1 bit } p_ZL1P_0_2_2_q0 { I 32 vector } p_ZL1P_0_2_2_address1 { O 1 vector } p_ZL1P_0_2_2_ce1 { O 1 bit } p_ZL1P_0_2_2_we1 { O 1 bit } p_ZL1P_0_2_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name p_ZL1P_0_2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_2_3 \
    op interface \
    ports { p_ZL1P_0_2_3_address0 { O 1 vector } p_ZL1P_0_2_3_ce0 { O 1 bit } p_ZL1P_0_2_3_q0 { I 32 vector } p_ZL1P_0_2_3_address1 { O 1 vector } p_ZL1P_0_2_3_ce1 { O 1 bit } p_ZL1P_0_2_3_we1 { O 1 bit } p_ZL1P_0_2_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name p_ZL1P_0_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_3_0 \
    op interface \
    ports { p_ZL1P_0_3_0_address0 { O 1 vector } p_ZL1P_0_3_0_ce0 { O 1 bit } p_ZL1P_0_3_0_q0 { I 32 vector } p_ZL1P_0_3_0_address1 { O 1 vector } p_ZL1P_0_3_0_ce1 { O 1 bit } p_ZL1P_0_3_0_we1 { O 1 bit } p_ZL1P_0_3_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 337 \
    name p_ZL1P_0_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_3_1 \
    op interface \
    ports { p_ZL1P_0_3_1_address0 { O 1 vector } p_ZL1P_0_3_1_ce0 { O 1 bit } p_ZL1P_0_3_1_q0 { I 32 vector } p_ZL1P_0_3_1_address1 { O 1 vector } p_ZL1P_0_3_1_ce1 { O 1 bit } p_ZL1P_0_3_1_we1 { O 1 bit } p_ZL1P_0_3_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name p_ZL1P_0_3_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_3_2 \
    op interface \
    ports { p_ZL1P_0_3_2_address0 { O 1 vector } p_ZL1P_0_3_2_ce0 { O 1 bit } p_ZL1P_0_3_2_q0 { I 32 vector } p_ZL1P_0_3_2_address1 { O 1 vector } p_ZL1P_0_3_2_ce1 { O 1 bit } p_ZL1P_0_3_2_we1 { O 1 bit } p_ZL1P_0_3_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name p_ZL1P_0_3_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_0_3_3 \
    op interface \
    ports { p_ZL1P_0_3_3_address0 { O 1 vector } p_ZL1P_0_3_3_ce0 { O 1 bit } p_ZL1P_0_3_3_q0 { I 32 vector } p_ZL1P_0_3_3_address1 { O 1 vector } p_ZL1P_0_3_3_ce1 { O 1 bit } p_ZL1P_0_3_3_we1 { O 1 bit } p_ZL1P_0_3_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_0_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name p_ZL1P_1_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_0_0 \
    op interface \
    ports { p_ZL1P_1_0_0_address0 { O 1 vector } p_ZL1P_1_0_0_ce0 { O 1 bit } p_ZL1P_1_0_0_q0 { I 32 vector } p_ZL1P_1_0_0_address1 { O 1 vector } p_ZL1P_1_0_0_ce1 { O 1 bit } p_ZL1P_1_0_0_we1 { O 1 bit } p_ZL1P_1_0_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name p_ZL1P_1_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_0_1 \
    op interface \
    ports { p_ZL1P_1_0_1_address0 { O 1 vector } p_ZL1P_1_0_1_ce0 { O 1 bit } p_ZL1P_1_0_1_q0 { I 32 vector } p_ZL1P_1_0_1_address1 { O 1 vector } p_ZL1P_1_0_1_ce1 { O 1 bit } p_ZL1P_1_0_1_we1 { O 1 bit } p_ZL1P_1_0_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name p_ZL1P_1_0_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_0_2 \
    op interface \
    ports { p_ZL1P_1_0_2_address0 { O 1 vector } p_ZL1P_1_0_2_ce0 { O 1 bit } p_ZL1P_1_0_2_q0 { I 32 vector } p_ZL1P_1_0_2_address1 { O 1 vector } p_ZL1P_1_0_2_ce1 { O 1 bit } p_ZL1P_1_0_2_we1 { O 1 bit } p_ZL1P_1_0_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name p_ZL1P_1_0_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_0_3 \
    op interface \
    ports { p_ZL1P_1_0_3_address0 { O 1 vector } p_ZL1P_1_0_3_ce0 { O 1 bit } p_ZL1P_1_0_3_q0 { I 32 vector } p_ZL1P_1_0_3_address1 { O 1 vector } p_ZL1P_1_0_3_ce1 { O 1 bit } p_ZL1P_1_0_3_we1 { O 1 bit } p_ZL1P_1_0_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name p_ZL1P_1_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_1_0 \
    op interface \
    ports { p_ZL1P_1_1_0_address0 { O 1 vector } p_ZL1P_1_1_0_ce0 { O 1 bit } p_ZL1P_1_1_0_q0 { I 32 vector } p_ZL1P_1_1_0_address1 { O 1 vector } p_ZL1P_1_1_0_ce1 { O 1 bit } p_ZL1P_1_1_0_we1 { O 1 bit } p_ZL1P_1_1_0_d1 { O 32 vector } p_ZL1P_1_1_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name p_ZL1P_1_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_1_1 \
    op interface \
    ports { p_ZL1P_1_1_1_address0 { O 1 vector } p_ZL1P_1_1_1_ce0 { O 1 bit } p_ZL1P_1_1_1_q0 { I 32 vector } p_ZL1P_1_1_1_address1 { O 1 vector } p_ZL1P_1_1_1_ce1 { O 1 bit } p_ZL1P_1_1_1_we1 { O 1 bit } p_ZL1P_1_1_1_d1 { O 32 vector } p_ZL1P_1_1_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 346 \
    name p_ZL1P_1_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_1_2 \
    op interface \
    ports { p_ZL1P_1_1_2_address0 { O 1 vector } p_ZL1P_1_1_2_ce0 { O 1 bit } p_ZL1P_1_1_2_q0 { I 32 vector } p_ZL1P_1_1_2_address1 { O 1 vector } p_ZL1P_1_1_2_ce1 { O 1 bit } p_ZL1P_1_1_2_we1 { O 1 bit } p_ZL1P_1_1_2_d1 { O 32 vector } p_ZL1P_1_1_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name p_ZL1P_1_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_1_3 \
    op interface \
    ports { p_ZL1P_1_1_3_address0 { O 1 vector } p_ZL1P_1_1_3_ce0 { O 1 bit } p_ZL1P_1_1_3_q0 { I 32 vector } p_ZL1P_1_1_3_address1 { O 1 vector } p_ZL1P_1_1_3_ce1 { O 1 bit } p_ZL1P_1_1_3_we1 { O 1 bit } p_ZL1P_1_1_3_d1 { O 32 vector } p_ZL1P_1_1_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name p_ZL1P_1_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_2_0 \
    op interface \
    ports { p_ZL1P_1_2_0_address0 { O 1 vector } p_ZL1P_1_2_0_ce0 { O 1 bit } p_ZL1P_1_2_0_q0 { I 32 vector } p_ZL1P_1_2_0_address1 { O 1 vector } p_ZL1P_1_2_0_ce1 { O 1 bit } p_ZL1P_1_2_0_we1 { O 1 bit } p_ZL1P_1_2_0_d1 { O 32 vector } p_ZL1P_1_2_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 349 \
    name p_ZL1P_1_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_2_1 \
    op interface \
    ports { p_ZL1P_1_2_1_address0 { O 1 vector } p_ZL1P_1_2_1_ce0 { O 1 bit } p_ZL1P_1_2_1_q0 { I 32 vector } p_ZL1P_1_2_1_address1 { O 1 vector } p_ZL1P_1_2_1_ce1 { O 1 bit } p_ZL1P_1_2_1_we1 { O 1 bit } p_ZL1P_1_2_1_d1 { O 32 vector } p_ZL1P_1_2_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name p_ZL1P_1_2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_2_2 \
    op interface \
    ports { p_ZL1P_1_2_2_address0 { O 1 vector } p_ZL1P_1_2_2_ce0 { O 1 bit } p_ZL1P_1_2_2_q0 { I 32 vector } p_ZL1P_1_2_2_address1 { O 1 vector } p_ZL1P_1_2_2_ce1 { O 1 bit } p_ZL1P_1_2_2_we1 { O 1 bit } p_ZL1P_1_2_2_d1 { O 32 vector } p_ZL1P_1_2_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name p_ZL1P_1_2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_2_3 \
    op interface \
    ports { p_ZL1P_1_2_3_address0 { O 1 vector } p_ZL1P_1_2_3_ce0 { O 1 bit } p_ZL1P_1_2_3_q0 { I 32 vector } p_ZL1P_1_2_3_address1 { O 1 vector } p_ZL1P_1_2_3_ce1 { O 1 bit } p_ZL1P_1_2_3_we1 { O 1 bit } p_ZL1P_1_2_3_d1 { O 32 vector } p_ZL1P_1_2_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 352 \
    name p_ZL1P_1_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_3_0 \
    op interface \
    ports { p_ZL1P_1_3_0_address0 { O 1 vector } p_ZL1P_1_3_0_ce0 { O 1 bit } p_ZL1P_1_3_0_q0 { I 32 vector } p_ZL1P_1_3_0_address1 { O 1 vector } p_ZL1P_1_3_0_ce1 { O 1 bit } p_ZL1P_1_3_0_we1 { O 1 bit } p_ZL1P_1_3_0_d1 { O 32 vector } p_ZL1P_1_3_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name p_ZL1P_1_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_3_1 \
    op interface \
    ports { p_ZL1P_1_3_1_address0 { O 1 vector } p_ZL1P_1_3_1_ce0 { O 1 bit } p_ZL1P_1_3_1_q0 { I 32 vector } p_ZL1P_1_3_1_address1 { O 1 vector } p_ZL1P_1_3_1_ce1 { O 1 bit } p_ZL1P_1_3_1_we1 { O 1 bit } p_ZL1P_1_3_1_d1 { O 32 vector } p_ZL1P_1_3_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name p_ZL1P_1_3_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_3_2 \
    op interface \
    ports { p_ZL1P_1_3_2_address0 { O 1 vector } p_ZL1P_1_3_2_ce0 { O 1 bit } p_ZL1P_1_3_2_q0 { I 32 vector } p_ZL1P_1_3_2_address1 { O 1 vector } p_ZL1P_1_3_2_ce1 { O 1 bit } p_ZL1P_1_3_2_we1 { O 1 bit } p_ZL1P_1_3_2_d1 { O 32 vector } p_ZL1P_1_3_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 355 \
    name p_ZL1P_1_3_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZL1P_1_3_3 \
    op interface \
    ports { p_ZL1P_1_3_3_address0 { O 1 vector } p_ZL1P_1_3_3_ce0 { O 1 bit } p_ZL1P_1_3_3_q0 { I 32 vector } p_ZL1P_1_3_3_address1 { O 1 vector } p_ZL1P_1_3_3_ce1 { O 1 bit } p_ZL1P_1_3_3_we1 { O 1 bit } p_ZL1P_1_3_3_d1 { O 32 vector } p_ZL1P_1_3_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZL1P_1_3_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name dL_dy_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dL_dy_0_val \
    op interface \
    ports { dL_dy_0_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name dL_dy_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dL_dy_1_val \
    op interface \
    ports { dL_dy_1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_0 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_1 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_2 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_0_3 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_0 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_1 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_2 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_k_1_3 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_0_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 \
    op interface \
    ports { eclair_float_const_float_float_const_ap_uint_2_C_u_index_1_3 { I 8 vector } } \
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


