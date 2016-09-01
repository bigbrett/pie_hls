; ModuleID = '/home/brett/workspace/Vivado_WS/pie_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@packet_length_V = internal unnamed_addr global i16 0
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@frameSIPO_str = internal unnamed_addr constant [10 x i8] c"frameSIPO\00"
@byte_cnt = internal unnamed_addr global i32 0, align 4
@p_ZGVZ9frameSIPORN3hls6streamI7 = internal unnamed_addr global i1 false
@CNT_STATE = internal unnamed_addr global i1 false, align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i16 @llvm.part.set.i16.i8(i16, i8, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @frameSIPO(i8* %inData_V_data_V, i2* %inData_V_user_V, i8* %header, i1* %livewire) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inData_V_data_V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inData_V_user_V), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %header), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %livewire), !map !69
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @frameSIPO_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inData_V_data_V, i2* %inData_V_user_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %p_ZGVZ9frameSIPORN3hls6streamI7 = load i1* @p_ZGVZ9frameSIPORN3hls6streamI7, align 1
  %packet_length_V_load = load i16* @packet_length_V, align 2
  br i1 %p_ZGVZ9frameSIPORN3hls6streamI7, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  store i1 true, i1* @p_ZGVZ9frameSIPORN3hls6streamI7, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %0
  %packet_length_V_flag = phi i1 [ true, %1 ], [ false, %0 ]
  %p_Val2_s = phi i16 [ 0, %1 ], [ %packet_length_V_load, %0 ]
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P.i2P(i8* %inData_V_data_V, i2* %inData_V_user_V, i32 1)
  br i1 %tmp, label %2, label %._crit_edge46

; <label>:2                                       ; preds = %._crit_edge
  %CNT_STATE_load = load i1* @CNT_STATE, align 1
  %byte_cnt_load = load i32* @byte_cnt, align 4
  %empty = call { i8, i2 } @_ssdm_op_Read.axis.volatile.i8P.i2P(i8* %inData_V_data_V, i2* %inData_V_user_V)
  %tmp_data_V = extractvalue { i8, i2 } %empty, 0
  br i1 %CNT_STATE_load, label %7, label %3

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %livewire, i1 false)
  %tmp_4 = icmp eq i8 %tmp_data_V, -43
  br i1 %tmp_4, label %4, label %5

; <label>:4                                       ; preds = %3
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 -128)
  br label %6

; <label>:5                                       ; preds = %3
  store i32 0, i32* @byte_cnt, align 4
  br label %6

; <label>:6                                       ; preds = %5, %4
  %storemerge = phi i1 [ false, %5 ], [ true, %4 ]
  store i1 %storemerge, i1* @CNT_STATE, align 1
  br label %._crit_edge46

; <label>:7                                       ; preds = %2
  %tmp_6 = add nsw i32 %byte_cnt_load, 1
  store i32 %tmp_6, i32* @byte_cnt, align 4
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %livewire, i1 true)
  %tmp_7 = icmp slt i32 %tmp_6, 7
  br i1 %tmp_7, label %8, label %9

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 64)
  store i1 true, i1* @CNT_STATE, align 1
  br label %._crit_edge46

; <label>:9                                       ; preds = %7
  %tmp_8 = icmp slt i32 %tmp_6, 13
  br i1 %tmp_8, label %10, label %11

; <label>:10                                      ; preds = %9
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 32)
  store i1 true, i1* @CNT_STATE, align 1
  br label %._crit_edge46

; <label>:11                                      ; preds = %9
  %tmp_9 = icmp eq i32 %tmp_6, 13
  br i1 %tmp_9, label %12, label %13

; <label>:12                                      ; preds = %11
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 16)
  store i1 true, i1* @CNT_STATE, align 1
  br label %._crit_edge46

; <label>:13                                      ; preds = %11
  %tmp_s = icmp eq i32 %tmp_6, 14
  br i1 %tmp_s, label %14, label %15

; <label>:14                                      ; preds = %13
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 8)
  store i1 true, i1* @CNT_STATE, align 1
  br label %._crit_edge46

; <label>:15                                      ; preds = %13
  %tmp_3 = icmp slt i32 %tmp_6, 17
  br i1 %tmp_3, label %16, label %17

; <label>:16                                      ; preds = %15
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 4)
  br label %._crit_edge46

; <label>:17                                      ; preds = %15
  %tmp_5 = icmp eq i32 %tmp_6, 17
  br i1 %tmp_5, label %18, label %19

; <label>:18                                      ; preds = %17
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 -1)
  %p_Result_s = call i16 @llvm.part.set.i16.i8(i16 %p_Val2_s, i8 %tmp_data_V, i32 8, i32 15)
  br label %22

; <label>:19                                      ; preds = %17
  %tmp_2 = icmp eq i32 %tmp_6, 18
  br i1 %tmp_2, label %20, label %21

; <label>:20                                      ; preds = %19
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 -1)
  %p_Result_1 = call i16 @llvm.part.set.i16.i8(i16 %p_Val2_s, i8 %tmp_data_V, i32 0, i32 7)
  br label %22

; <label>:21                                      ; preds = %19
  %tmp_1 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %tmp_6, i32 6, i32 31)
  %icmp = icmp slt i26 %tmp_1, 1
  %storemerge1_cast_cast = select i1 %icmp, i8 2, i8 1
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %header, i8 %storemerge1_cast_cast)
  br label %22

; <label>:22                                      ; preds = %21, %20, %18
  %packet_length_V_flag_1 = phi i1 [ true, %18 ], [ true, %20 ], [ %packet_length_V_flag, %21 ]
  %packet_length_V_new_1 = phi i16 [ %p_Result_s, %18 ], [ %p_Result_1, %20 ], [ 0, %21 ]
  %storemerge2 = phi i1 [ true, %18 ], [ true, %20 ], [ %icmp, %21 ]
  store i1 %storemerge2, i1* @CNT_STATE, align 1
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %22, %16, %14, %12, %10, %8, %6, %._crit_edge
  %packet_length_V_flag_8 = phi i1 [ %packet_length_V_flag, %._crit_edge ], [ %packet_length_V_flag, %6 ], [ %packet_length_V_flag, %8 ], [ %packet_length_V_flag, %10 ], [ %packet_length_V_flag, %12 ], [ %packet_length_V_flag, %14 ], [ %packet_length_V_flag, %16 ], [ %packet_length_V_flag_1, %22 ]
  %packet_length_V_new_8 = phi i16 [ 0, %._crit_edge ], [ 0, %6 ], [ 0, %8 ], [ 0, %10 ], [ 0, %12 ], [ 0, %14 ], [ 0, %16 ], [ %packet_length_V_new_1, %22 ]
  br i1 %packet_length_V_flag_8, label %mergeST, label %._crit_edge46.new

mergeST:                                          ; preds = %._crit_edge46
  store i16 %packet_length_V_new_8, i16* @packet_length_V, align 2
  br label %._crit_edge46.new

._crit_edge46.new:                                ; preds = %mergeST, %._crit_edge46
  ret void
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
  %empty_7 = load i2* %1
  %mrv_0 = insertvalue { i8, i2 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i2 } %mrv_0, i2 %empty_7, 1
  ret { i8, i2 } %mrv1
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i26
  ret i26 %empty_8
}

define weak i1 @_ssdm_op_NbReadReq.axis.i8P.i2P(i8*, i2*, i32) {
entry:
  ret i1 true
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !15, !21, !27, !27, !31, !34, !34, !15, !36, !39, !42, !45, !47, !15, !15, !15, !15, !15, !15, !15, !15, !15, !15, !15, !49, !49, !15, !49, !49, !49, !49, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!50}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiByte> &", metadata !"uint8_t*", metadata !"uint1*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inData", metadata !"header", metadata !"livewire"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!27 = metadata !{null, metadata !28, metadata !2, metadata !29, metadata !4, metadata !30, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!31 = metadata !{null, metadata !22, metadata !23, metadata !32, metadata !25, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !14, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"struct axiByte &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const struct axiByte &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !""}
!45 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !38, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !38, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !12, metadata !6}
!50 = metadata !{metadata !51, [1 x i32]* @llvm_global_ctors_0}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"llvm.global_ctors.0", metadata !55, metadata !"", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, i32 1}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 7, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"inData.V.data.V", metadata !55, metadata !"uint8", i32 0, i32 7}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 1, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"inData.V.user.V", metadata !55, metadata !"uint2", i32 0, i32 1}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 7, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"header", metadata !55, metadata !"unsigned char", i32 0, i32 7}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"livewire", metadata !55, metadata !"uint1", i32 0, i32 0}
