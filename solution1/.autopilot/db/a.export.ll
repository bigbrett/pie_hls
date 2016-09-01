; ModuleID = '/home/brett/workspace/Vivado_WS/pie_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@frameSIPO_str = internal unnamed_addr constant [10 x i8] c"frameSIPO\00"
@byte_cnt = internal unnamed_addr global i32 0, align 4
@CNT_STATE = internal unnamed_addr global i1 false, align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @frameSIPO(i8* %inData_V_data_V, i2* %inData_V_user_V, i8* %header, i1* %livewire) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inData_V_data_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inData_V_user_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %header), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %livewire), !map !59
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @frameSIPO_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inData_V_data_V, i2* %inData_V_user_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P.i2P(i8* %inData_V_data_V, i2* %inData_V_user_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %CNT_STATE_load = load i1* @CNT_STATE, align 1
  %byte_cnt_load = load i32* @byte_cnt, align 4
  %empty = call { i8, i2 } @_ssdm_op_Read.axis.volatile.i8P.i2P(i8* %inData_V_data_V, i2* %inData_V_user_V)
  br i1 %CNT_STATE_load, label %5, label %2

; <label>:2                                       ; preds = %1
  %tmp_data_V = extractvalue { i8, i2 } %empty, 0
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %livewire, i1 false)
  %tmp_3 = icmp eq i8 %tmp_data_V, -43
  br i1 %tmp_3, label %4, label %3

; <label>:3                                       ; preds = %2
  store i32 0, i32* @byte_cnt, align 4
  br label %4

; <label>:4                                       ; preds = %3, %2
  %header_new = phi i8 [ 0, %3 ], [ -128, %2 ]
  %storemerge = phi i1 [ false, %3 ], [ true, %2 ]
  store i1 %storemerge, i1* @CNT_STATE, align 1
  br label %mergeST

; <label>:5                                       ; preds = %1
  %tmp_5 = add nsw i32 %byte_cnt_load, 1
  store i32 %tmp_5, i32* @byte_cnt, align 4
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %livewire, i1 true)
  %tmp_6 = icmp slt i32 %tmp_5, 7
  br i1 %tmp_6, label %6, label %7

; <label>:6                                       ; preds = %5
  store i1 true, i1* @CNT_STATE, align 1
  br label %mergeST

; <label>:7                                       ; preds = %5
  %tmp_7 = icmp slt i32 %tmp_5, 13
  br i1 %tmp_7, label %8, label %9

; <label>:8                                       ; preds = %7
  store i1 true, i1* @CNT_STATE, align 1
  br label %mergeST

; <label>:9                                       ; preds = %7
  %tmp_8 = icmp eq i32 %tmp_5, 13
  br i1 %tmp_8, label %10, label %11

; <label>:10                                      ; preds = %9
  store i1 true, i1* @CNT_STATE, align 1
  br label %mergeST

; <label>:11                                      ; preds = %9
  %tmp_9 = icmp eq i32 %tmp_5, 14
  br i1 %tmp_9, label %12, label %13

; <label>:12                                      ; preds = %11
  store i1 true, i1* @CNT_STATE, align 1
  br label %mergeST

; <label>:13                                      ; preds = %11
  %tmp_s = icmp slt i32 %tmp_5, 17
  br i1 %tmp_s, label %mergeST, label %_ifconv

_ifconv:                                          ; preds = %13
  %p_off = add i32 %byte_cnt_load, -16
  %tmp_2 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_off, i32 1, i32 31)
  %icmp = icmp eq i31 %tmp_2, 0
  %tmp_4 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %tmp_5, i32 6, i32 31)
  %icmp5 = icmp slt i26 %tmp_4, 1
  %storemerge1_cast = select i1 %icmp, i3 -1, i3 2
  %tmp_1 = or i1 %icmp, %icmp5
  %storemerge2 = select i1 %tmp_1, i3 %storemerge1_cast, i3 1
  %storemerge2_cast = sext i3 %storemerge2 to i8
  store i1 %tmp_1, i1* @CNT_STATE, align 1
  br label %mergeST

._crit_edge:                                      ; preds = %mergeST, %0
  ret void

mergeST:                                          ; preds = %4, %6, %8, %10, %12, %13, %_ifconv
  %header_new_6 = phi i8 [ %header_new, %4 ], [ 32, %8 ], [ 8, %12 ], [ 4, %13 ], [ %storemerge2_cast, %_ifconv ], [ 16, %10 ], [ 64, %6 ]
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 %header_new_6)
  br label %._crit_edge
}

define weak void @_ssdm_op_Write.ap_auto.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i8, i2 } @_ssdm_op_Read.axis.volatile.i8P.i2P(i8*, i2*) {
entry:
  %empty = load i8* %0
  %empty_4 = load i2* %1
  %mrv_0 = insertvalue { i8, i2 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i2 } %mrv_0, i2 %empty_4, 1
  ret { i8, i2 } %mrv1
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i31
  ret i31 %empty_5
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_6 = trunc i32 %empty to i26
  ret i26 %empty_6
}

define weak i1 @_ssdm_op_NbReadReq.axis.i8P.i2P(i8*, i2*, i32) {
entry:
  ret i1 true
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !19, !25, !28, !31, !34, !36, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !38, !38, !38, !38}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!40}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiByte> &", metadata !"uint8_t*", metadata !"uint1*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inData", metadata !"header", metadata !"livewire"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!28 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"struct axiByte &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!31 = metadata !{null, metadata !14, metadata !15, metadata !32, metadata !17, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const struct axiByte &"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !""}
!34 = metadata !{null, metadata !14, metadata !15, metadata !35, metadata !17, metadata !27, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!36 = metadata !{null, metadata !14, metadata !15, metadata !37, metadata !17, metadata !27, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!38 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !39, metadata !6}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!40 = metadata !{metadata !41, [1 x i32]* @llvm_global_ctors_0}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"llvm.global_ctors.0", metadata !45, metadata !"", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, i32 1}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 7, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"inData.V.data.V", metadata !45, metadata !"uint8", i32 0, i32 7}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 1, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"inData.V.user.V", metadata !45, metadata !"uint2", i32 0, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"header", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"livewire", metadata !45, metadata !"uint1", i32 0, i32 0}
