; ModuleID = '/home/dhoang/ECLAIR/demos/cartpole/eclair_cartpole/firmware/eclair/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }

; Function Attrs: noinline willreturn
define void @apatb_eclair_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" "partition" %input, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="2" "partition" %output, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "partition" %feedback, %"struct.ap_uint<2>"* nocapture readonly %zero_grad) local_unnamed_addr #0 {
entry:
  %input_copy_0 = alloca float, align 512
  %input_copy_1 = alloca float, align 512
  %input_copy_2 = alloca float, align 512
  %input_copy_3 = alloca float, align 512
  %output_copy_0 = alloca float, align 512
  %output_copy_1 = alloca float, align 512
  %feedback_copy_0 = alloca float, align 512
  %feedback_copy_1 = alloca float, align 512
  %0 = bitcast float* %input to [4 x float]*
  %1 = bitcast float* %output to [2 x float]*
  %2 = bitcast float* %feedback to [2 x float]*
  call void @copy_in([4 x float]* nonnull %0, float* nonnull align 512 %input_copy_0, float* nonnull align 512 %input_copy_1, float* nonnull align 512 %input_copy_2, float* nonnull align 512 %input_copy_3, [2 x float]* nonnull %1, float* nonnull align 512 %output_copy_0, float* nonnull align 512 %output_copy_1, [2 x float]* nonnull %2, float* nonnull align 512 %feedback_copy_0, float* nonnull align 512 %feedback_copy_1)
  call void @apatb_eclair_hw(float* %input_copy_0, float* %input_copy_1, float* %input_copy_2, float* %input_copy_3, float* %output_copy_0, float* %output_copy_1, float* %feedback_copy_0, float* %feedback_copy_1, %"struct.ap_uint<2>"* %zero_grad)
  call void @copy_back([4 x float]* %0, float* %input_copy_0, float* %input_copy_1, float* %input_copy_2, float* %input_copy_3, [2 x float]* %1, float* %output_copy_0, float* %output_copy_1, [2 x float]* %2, float* %feedback_copy_0, float* %feedback_copy_1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4f32([4 x float]* "orig.arg.no"="0" %dst, [4 x float]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [4 x float]* %src, null
  %1 = icmp eq [4 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x float], [4 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4 x float], [4 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2f32([2 x float]* "orig.arg.no"="0" %dst, [2 x float]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [2 x float]* %src, null
  %1 = icmp eq [2 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2 x float], [2 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2 x float], [2 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4f32.45.46(float* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, float* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, float* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, float* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [4 x float]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [4 x float]* %src, null
  %1 = icmp eq float* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [4 x float], [4 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  switch i64 %for.loop.idx2, label %dst.addr.case.3 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %3, float* %dst_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %3, float* %dst_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %3, float* %dst_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 3
  call void @llvm.assume(i1 %4)
  store float %3, float* %dst_3, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a4f32.44.47(float* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, float* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, float* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, float* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [4 x float]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq float* %dst_0, null
  %1 = icmp eq [4 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4f32.45.46(float* nonnull %dst_0, float* %dst_1, float* %dst_2, float* %dst_3, [4 x float]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2f32.49.50(float* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, float* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [2 x float]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [2 x float]* %src, null
  %1 = icmp eq float* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [2 x float], [2 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store float %3, float* %dst_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %4)
  store float %3, float* %dst_1, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a2f32.48.51(float* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, float* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [2 x float]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq float* %dst_0, null
  %1 = icmp eq [2 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2f32.49.50(float* nonnull %dst_0, float* %dst_1, [2 x float]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([4 x float]* noalias readonly "orig.arg.no"="0", float* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, float* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, float* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, float* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [2 x float]* noalias readonly "orig.arg.no"="2", float* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, float* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [2 x float]* noalias readonly "orig.arg.no"="4", float* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_03, float* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_14) #4 {
entry:
  call void @onebyonecpy_hls.p0a4f32.44.47(float* align 512 %_0, float* align 512 %_1, float* align 512 %_2, float* align 512 %_3, [4 x float]* %0)
  call void @onebyonecpy_hls.p0a2f32.48.51(float* align 512 %_01, float* align 512 %_12, [2 x float]* %1)
  call void @onebyonecpy_hls.p0a2f32.48.51(float* align 512 %_03, float* align 512 %_14, [2 x float]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4f32.61.62([4 x float]* "orig.arg.no"="0" %dst, float* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, float* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, float* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, float* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq float* %src_0, null
  %1 = icmp eq [4 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [4 x float], [4 x float]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.3 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load float, float* %src_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load float, float* %src_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_2 = load float, float* %src_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 3
  call void @llvm.assume(i1 %3)
  %_3 = load float, float* %src_3, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %4 = phi float [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ], [ %_3, %src.addr.case.3 ]
  store float %4, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a4f32.60.63([4 x float]* noalias "orig.arg.no"="0" %dst, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3) #3 {
entry:
  %0 = icmp eq [4 x float]* %dst, null
  %1 = icmp eq float* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4f32.61.62([4 x float]* nonnull %dst, float* nonnull %src_0, float* %src_1, float* %src_2, float* %src_3, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2f32.65.66([2 x float]* "orig.arg.no"="0" %dst, float* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, float* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq float* %src_0, null
  %1 = icmp eq [2 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [2 x float], [2 x float]* %dst, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load float, float* %src_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %3)
  %_1 = load float, float* %src_1, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %4 = phi float [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ]
  store float %4, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a2f32.64.67([2 x float]* noalias "orig.arg.no"="0" %dst, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1) #3 {
entry:
  %0 = icmp eq [2 x float]* %dst, null
  %1 = icmp eq float* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2f32.65.66([2 x float]* nonnull %dst, float* nonnull %src_0, float* %src_1, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([4 x float]* noalias "orig.arg.no"="0", float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [2 x float]* noalias "orig.arg.no"="2", float* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, float* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [2 x float]* noalias "orig.arg.no"="4", float* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_03, float* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_14) #5 {
entry:
  call void @onebyonecpy_hls.p0a4f32.60.63([4 x float]* %0, float* align 512 %_0, float* align 512 %_1, float* align 512 %_2, float* align 512 %_3)
  call void @onebyonecpy_hls.p0a2f32.64.67([2 x float]* %1, float* align 512 %_01, float* align 512 %_12)
  call void @onebyonecpy_hls.p0a2f32.64.67([2 x float]* %2, float* align 512 %_03, float* align 512 %_14)
  ret void
}

declare void @apatb_eclair_hw(float*, float*, float*, float*, float*, float*, float*, float*, %"struct.ap_uint<2>"*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([4 x float]* noalias "orig.arg.no"="0", float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, float* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [2 x float]* noalias "orig.arg.no"="2", float* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, float* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [2 x float]* noalias "orig.arg.no"="4", float* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_03, float* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_14) #5 {
entry:
  call void @onebyonecpy_hls.p0a2f32.64.67([2 x float]* %1, float* align 512 %_01, float* align 512 %_12)
  ret void
}

define void @eclair_hw_stub_wrapper(float*, float*, float*, float*, float*, float*, float*, float*, %"struct.ap_uint<2>"*) #6 {
entry:
  %9 = alloca [4 x float]
  %10 = alloca [2 x float]
  %11 = alloca [2 x float]
  call void @copy_out([4 x float]* %9, float* %0, float* %1, float* %2, float* %3, [2 x float]* %10, float* %4, float* %5, [2 x float]* %11, float* %6, float* %7)
  %12 = bitcast [4 x float]* %9 to float*
  %13 = bitcast [2 x float]* %10 to float*
  %14 = bitcast [2 x float]* %11 to float*
  call void @eclair_hw_stub(float* %12, float* %13, float* %14, %"struct.ap_uint<2>"* %8)
  call void @copy_in([4 x float]* %9, float* %0, float* %1, float* %2, float* %3, [2 x float]* %10, float* %4, float* %5, [2 x float]* %11, float* %6, float* %7)
  ret void
}

declare void @eclair_hw_stub(float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull, float* noalias nocapture nonnull readonly, %"struct.ap_uint<2>"* nocapture readonly)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { nounwind willreturn }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !15, !21}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [4 x float]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14}
!11 = !{!"0.0", float* null}
!12 = !{!"0.1", float* null}
!13 = !{!"0.2", float* null}
!14 = !{!"0.3", float* null}
!15 = !{!16, !8, !18}
!16 = !{!17}
!17 = !{!"1", [2 x float]* null}
!18 = !{!19, !20}
!19 = !{!"1.0", float* null}
!20 = !{!"1.1", float* null}
!21 = !{!22, !8, !24}
!22 = !{!23}
!23 = !{!"2", [2 x float]* null}
!24 = !{!25, !26}
!25 = !{!"2.0", float* null}
!26 = !{!"2.1", float* null}
