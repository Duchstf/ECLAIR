; ModuleID = '/data/dhoang/ECLAIR/demos/function_tracking/eclair_model/firmware/eclair/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>" = type { %"struct.ap_fixed_base<16, 6, true, AP_RND_CONV, AP_SAT, 0>" }
%"struct.ap_fixed_base<16, 6, true, AP_RND_CONV, AP_SAT, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline willreturn
define void @apatb_eclair_ir(%"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "partition" %input, %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="1" "partition" %output, %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1" "partition" %feedback) local_unnamed_addr #0 {
entry:
  %input_copy_0 = alloca i16, align 512
  %input_copy_1 = alloca i16, align 512
  %output_copy4 = alloca i16, align 512
  %feedback_copy5 = alloca i16, align 512
  %0 = bitcast %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* %input to [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]*
  %1 = bitcast %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* %output to [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]*
  %2 = bitcast %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* %feedback to [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]*
  call void @copy_in([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* nonnull %0, i16* nonnull align 512 %input_copy_0, i16* nonnull align 512 %input_copy_1, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* nonnull %1, i16* nonnull align 512 %output_copy4, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* nonnull %2, i16* nonnull align 512 %feedback_copy5)
  call void @apatb_eclair_hw(i16* %input_copy_0, i16* %input_copy_1, i16* %output_copy4, i16* %feedback_copy5)
  call void @copy_back([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %0, i16* %input_copy_0, i16* %input_copy_1, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %1, i16* %output_copy4, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %2, i16* %feedback_copy5)
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"(i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"], [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %dst.addr.0.0.06.case.0, label %dst.addr.0.0.06.case.1

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i16 %1, i16* %dst_0, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  %2 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %2)
  store i16 %1, i16* %dst_1, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"(i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"(i16* %dst_0, i16* %dst_1, [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.39"(i16* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"], [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.36"(i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.39"(i16* %dst, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0", [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias readonly "orig.arg.no"="4" "unpacked"="4", i16* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0") #4 {
entry:
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"(i16* align 512 %_0, i16* align 512 %_1, [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.36"(i16* align 512 %2, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %1)
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.36"(i16* align 512 %4, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.51"([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"], [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %src.addr.0.0.05.case.0, label %src.addr.0.0.05.case.1

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_0 = load i16, i16* %src_0, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %1 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %1)
  %_1 = load i16, i16* %src_1, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %2 = phi i16 [ %_0, %src.addr.0.0.05.case.0 ], [ %_1, %src.addr.0.0.05.case.1 ]
  store i16 %2, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.48"([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1) #3 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.51"([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* nonnull %dst, i16* %src_0, i16* %src_1, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.32"([1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.0.0.06 = getelementptr [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"], [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"([1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #3 {
entry:
  %0 = icmp eq [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.32"([1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* nonnull %dst, i16* %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0", [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias nocapture readonly align 512 "orig.arg.no"="5" "unpacked"="5.0") #5 {
entry:
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>.48"([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %0, i16* align 512 %_0, i16* align 512 %_1)
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"([1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %1, i16* align 512 %2)
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"([1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %3, i16* align 512 %4)
  ret void
}

declare void @apatb_eclair_hw(i16*, i16*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_1, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0", [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* noalias "orig.arg.no"="4" "unpacked"="4", i16* noalias nocapture readonly align 512 "orig.arg.no"="5" "unpacked"="5.0") #5 {
entry:
  call void @"onebyonecpy_hls.p0a1struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"([1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %1, i16* align 512 %2)
  ret void
}

define void @eclair_hw_stub_wrapper(i16*, i16*, i16*, i16*) #6 {
entry:
  %4 = alloca [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]
  %5 = alloca [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]
  %6 = alloca [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]
  call void @copy_out([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %4, i16* %0, i16* %1, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %5, i16* %2, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %6, i16* %3)
  %7 = bitcast [2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %4 to %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"*
  %8 = bitcast [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %5 to %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"*
  %9 = bitcast [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %6 to %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"*
  call void @eclair_hw_stub(%"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* %7, %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* %8, %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* %9)
  call void @copy_in([2 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %4, i16* %0, i16* %1, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %5, i16* %2, [1 x %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"]* %6, i16* %3)
  ret void
}

declare void @eclair_hw_stub(%"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* noalias nocapture nonnull, %"struct.ap_fixed<16, 6, AP_RND_CONV, AP_SAT, 0>"* noalias nocapture nonnull readonly)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { nounwind willreturn }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !13, !18}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0.0", [2 x i16]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12}
!11 = !{!"0.0.0", i16* null}
!12 = !{!"0.0.1", i16* null}
!13 = !{!14, !8, !16}
!14 = !{!15}
!15 = !{!"1.0", [1 x i16]* null}
!16 = !{!17}
!17 = !{!"1.0", i16* null}
!18 = !{!19, !8, !21}
!19 = !{!20}
!20 = !{!"2.0", [1 x i16]* null}
!21 = !{!22}
!22 = !{!"2.0", i16* null}
