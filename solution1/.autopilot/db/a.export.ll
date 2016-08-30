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

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @frameSIPO(i8* %inData_V_data_V, i128* %inData_V_user_V, i8* %outData_V_data_V, i128* %outData_V_user_V, i1* %sfd_detected, i1* %src_addr, i1* %dest_addr, i1* %ethertype, i1* %ping) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inData_V_data_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %inData_V_user_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outData_V_data_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %outData_V_user_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %sfd_detected), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_addr), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %dest_addr), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ethertype), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ping), !map !79
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @frameSIPO_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inData_V_data_V, i128* %inData_V_user_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outData_V_data_V, i128* %outData_V_user_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P.i128P(i8* %inData_V_data_V, i128* %inData_V_user_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %CNT_STATE_load = load i1* @CNT_STATE, align 1
  %byte_cnt_load = load i32* @byte_cnt, align 4
  %empty = call { i8, i128 } @_ssdm_op_Read.axis.volatile.i8P.i128P(i8* %inData_V_data_V, i128* %inData_V_user_V)
  %tmp_data_V = extractvalue { i8, i128 } %empty, 0
  br i1 %CNT_STATE_load, label %2, label %._crit_edge20

._crit_edge20:                                    ; preds = %1
  store i32 0, i32* @byte_cnt, align 4
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %src_addr, i1 false)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %dest_addr, i1 false)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %ethertype, i1 false)
  %tmp_3 = icmp eq i8 %tmp_data_V, -43
  store i1 %tmp_3, i1* @CNT_STATE, align 1
  br label %._crit_edge19

; <label>:2                                       ; preds = %1
  %tmp_5 = add nsw i32 %byte_cnt_load, 1
  store i32 %tmp_5, i32* @byte_cnt, align 4
  %tmp_6 = icmp slt i32 %tmp_5, 7
  br i1 %tmp_6, label %3, label %4

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %dest_addr, i1 true)
  br label %._crit_edge19

; <label>:4                                       ; preds = %2
  %tmp_7 = icmp slt i32 %tmp_5, 13
  br i1 %tmp_7, label %5, label %6

; <label>:5                                       ; preds = %4
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %src_addr, i1 true)
  br label %._crit_edge19

; <label>:6                                       ; preds = %4
  %tmp_8 = icmp eq i32 %tmp_5, 13
  br i1 %tmp_8, label %7, label %8

; <label>:7                                       ; preds = %6
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %ethertype, i1 true)
  %tmp_s = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_data_V, i8 0)
  br label %._crit_edge19

; <label>:8                                       ; preds = %6
  %tmp_2 = icmp eq i32 %tmp_5, 14
  br i1 %tmp_2, label %9, label %10

; <label>:9                                       ; preds = %8
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %ethertype, i1 true)
  %tmp_4 = zext i8 %tmp_data_V to i16
  br label %._crit_edge19

; <label>:10                                      ; preds = %8
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %src_addr, i1 false)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %dest_addr, i1 false)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %ethertype, i1 false)
  store i1 false, i1* @CNT_STATE, align 1
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %10, %9, %7, %5, %3, %._crit_edge20
  %sfd_detected_flag_1 = phi i1 [ false, %3 ], [ false, %5 ], [ false, %7 ], [ false, %9 ], [ true, %10 ], [ true, %._crit_edge20 ]
  %sfd_detected_new_1 = phi i1 [ undef, %3 ], [ undef, %5 ], [ undef, %7 ], [ undef, %9 ], [ false, %10 ], [ %tmp_3, %._crit_edge20 ]
  %packet_type_load_1 = phi i16 [ 0, %3 ], [ 0, %5 ], [ %tmp_s, %7 ], [ %tmp_4, %9 ], [ 0, %10 ], [ 0, %._crit_edge20 ]
  %tmp_1 = icmp eq i16 %packet_type_load_1, 2048
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %ping, i1 %tmp_1)
  br i1 %sfd_detected_flag_1, label %mergeST, label %._crit_edge19.new

._crit_edge:                                      ; preds = %._crit_edge19.new, %0
  ret void

mergeST:                                          ; preds = %._crit_edge19
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %sfd_detected, i1 %sfd_detected_new_1)
  br label %._crit_edge19.new

._crit_edge19.new:                                ; preds = %mergeST, %._crit_edge19
  br label %._crit_edge
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

define weak { i8, i128 } @_ssdm_op_Read.axis.volatile.i8P.i128P(i8*, i128*) {
entry:
  %empty = load i8* %0
  %empty_2 = load i128* %1
  %mrv_0 = insertvalue { i8, i128 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i128 } %mrv_0, i128 %empty_2, 1
  ret { i8, i128 } %mrv1
}

define weak i1 @_ssdm_op_NbReadReq.axis.i8P.i128P(i8*, i128*, i32) {
entry:
  ret i1 true
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_3 = zext i8 %1 to i16
  %empty_4 = shl i16 %empty, 8
  %empty_5 = or i16 %empty_4, %empty_3
  ret i16 %empty_5
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !19, !19, !7, !25, !28, !31, !34, !36, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !38, !38, !38, !38}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!40}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiByte> &", metadata !"stream<struct axiByte> &", metadata !"uint1*", metadata !"uint1*", metadata !"uint1*", metadata !"uint1*", metadata !"uint1*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inData", metadata !"outData", metadata !"sfd_detected", metadata !"src_addr", metadata !"dest_addr", metadata !"ethertype", metadata !"ping"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!25 = metadata !{null, metadata !20, metadata !21, metadata !26, metadata !23, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!28 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"struct axiByte &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!31 = metadata !{null, metadata !20, metadata !21, metadata !32, metadata !23, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const struct axiByte &"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !""}
!34 = metadata !{null, metadata !20, metadata !21, metadata !35, metadata !23, metadata !27, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<128> &"}
!36 = metadata !{null, metadata !20, metadata !21, metadata !37, metadata !23, metadata !27, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!38 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !39, metadata !6}
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
!52 = metadata !{i32 0, i32 127, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"inData.V.user.V", metadata !45, metadata !"uint128", i32 0, i32 127}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"outData.V.data.V", metadata !45, metadata !"uint8", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 127, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"outData.V.user.V", metadata !45, metadata !"uint128", i32 0, i32 127}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 0, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"sfd_detected", metadata !45, metadata !"uint1", i32 0, i32 0}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"src_addr", metadata !45, metadata !"uint1", i32 0, i32 0}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 0, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"dest_addr", metadata !45, metadata !"uint1", i32 0, i32 0}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"ethertype", metadata !45, metadata !"uint1", i32 0, i32 0}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 0, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"ping", metadata !45, metadata !"uint1", i32 0, i32 0}
