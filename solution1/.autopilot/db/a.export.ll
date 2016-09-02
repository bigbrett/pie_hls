; ModuleID = '/home/brett/workspace/Vivado_WS/pie_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@frameSIPO_str = internal unnamed_addr constant [10 x i8] c"frameSIPO\00"
@curr_header_src_MAC_V = internal unnamed_addr global i48 0
@curr_header_ethertype_V = internal unnamed_addr global i16 0
@curr_header_dest_MAC_V = internal unnamed_addr global i48 0
@byte_cnt = internal unnamed_addr global i32 0, align 4
@CNT_STATE = internal unnamed_addr global i1 false, align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i16 @llvm.part.set.i16.i8(i16, i8, i32, i32) nounwind readnone

declare i48 @llvm.part.select.i48(i48, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @frameSIPO(i8* %inData_V_data_V, i2* %inData_V_user_V, i48* %headerData_V_src_MAC_V, i48* %headerData_V_dest_MAC_V, i16* %headerData_V_ethertype_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inData_V_data_V), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inData_V_user_V), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %headerData_V_src_MAC_V), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %headerData_V_dest_MAC_V), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %headerData_V_ethertype_V), !map !77
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @frameSIPO_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inData_V_data_V, i2* %inData_V_user_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* %headerData_V_src_MAC_V, i48* %headerData_V_dest_MAC_V, i16* %headerData_V_ethertype_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 2, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P.i2P(i8* %inData_V_data_V, i2* %inData_V_user_V, i32 1)
  br i1 %tmp, label %0, label %._crit_edge90

; <label>:0                                       ; preds = %codeRepl
  %CNT_STATE_load = load i1* @CNT_STATE, align 1
  %byte_cnt_load = load i32* @byte_cnt, align 4
  %empty = call { i8, i2 } @_ssdm_op_Read.axis.volatile.i8P.i2P(i8* %inData_V_data_V, i2* %inData_V_user_V)
  %tmp_data_V = extractvalue { i8, i2 } %empty, 0
  br i1 %CNT_STATE_load, label %3, label %1

; <label>:1                                       ; preds = %0
  %tmp_3 = icmp eq i8 %tmp_data_V, -43
  br i1 %tmp_3, label %mergeST, label %2

; <label>:2                                       ; preds = %1
  store i32 0, i32* @byte_cnt, align 4
  br label %mergeST

; <label>:3                                       ; preds = %0
  %tmp_5 = add nsw i32 %byte_cnt_load, 1
  store i32 %tmp_5, i32* @byte_cnt, align 4
  %tmp_6 = icmp slt i32 %tmp_5, 7
  %p_Val2_s = load i48* @curr_header_dest_MAC_V, align 8
  br i1 %tmp_6, label %4, label %5

; <label>:4                                       ; preds = %3
  %tmp_1 = shl i32 %tmp_5, 3
  %Hi_assign = sub i32 55, %tmp_1
  %Lo_assign = sub i32 48, %tmp_1
  %loc_V = zext i8 %tmp_data_V to i48
  %tmp_7 = icmp ugt i32 %Lo_assign, %Hi_assign
  %tmp_8 = trunc i32 %Lo_assign to i6
  %tmp_10 = trunc i32 %Hi_assign to i6
  %tmp_11 = sub i6 -17, %tmp_8
  %tmp_12 = select i1 %tmp_7, i6 %tmp_8, i6 %tmp_10
  %tmp_13 = select i1 %tmp_7, i6 %tmp_10, i6 %tmp_8
  %tmp_14 = select i1 %tmp_7, i6 %tmp_11, i6 %tmp_8
  %tmp_15 = sub i6 -17, %tmp_12
  %tmp_16 = zext i6 %tmp_14 to i48
  %tmp_17 = zext i6 %tmp_13 to i48
  %tmp_18 = zext i6 %tmp_15 to i48
  %tmp_19 = shl i48 %loc_V, %tmp_16
  %tmp_20 = call i48 @llvm.part.select.i48(i48 %tmp_19, i32 47, i32 0)
  %tmp_21 = select i1 %tmp_7, i48 %tmp_20, i48 %tmp_19
  %tmp_22 = shl i48 -1, %tmp_17
  %tmp_23 = lshr i48 -1, %tmp_18
  %p_demorgan3 = and i48 %tmp_22, %tmp_23
  %tmp_24 = xor i48 %p_demorgan3, -1
  %tmp_25 = and i48 %p_Val2_s, %tmp_24
  %tmp_26 = and i48 %tmp_21, %p_demorgan3
  %p_Result_s = or i48 %tmp_25, %tmp_26
  store i48 %p_Result_s, i48* @curr_header_dest_MAC_V, align 8
  br label %mergeST

; <label>:5                                       ; preds = %3
  %tmp_9 = icmp slt i32 %tmp_5, 13
  %p_Val2_3 = load i48* @curr_header_src_MAC_V, align 8
  br i1 %tmp_9, label %6, label %7

; <label>:6                                       ; preds = %5
  %tmp_28 = trunc i32 %tmp_5 to i4
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_28, i3 0)
  %Hi_assign_1 = sub i7 -25, %tmp_s
  %Lo_assign_1 = sub i7 -32, %tmp_s
  %loc_V_1 = zext i8 %tmp_data_V to i48
  %tmp_29 = icmp ugt i7 %Lo_assign_1, %Hi_assign_1
  %tmp_30 = trunc i7 %Lo_assign_1 to i6
  %tmp_31 = trunc i7 %Hi_assign_1 to i6
  %tmp_32 = sub i6 -17, %tmp_30
  %tmp_33 = select i1 %tmp_29, i6 %tmp_30, i6 %tmp_31
  %tmp_34 = select i1 %tmp_29, i6 %tmp_31, i6 %tmp_30
  %tmp_35 = select i1 %tmp_29, i6 %tmp_32, i6 %tmp_30
  %tmp_36 = sub i6 -17, %tmp_33
  %tmp_37 = zext i6 %tmp_35 to i48
  %tmp_38 = zext i6 %tmp_34 to i48
  %tmp_39 = zext i6 %tmp_36 to i48
  %tmp_40 = shl i48 %loc_V_1, %tmp_37
  %tmp_41 = call i48 @llvm.part.select.i48(i48 %tmp_40, i32 47, i32 0)
  %tmp_42 = select i1 %tmp_29, i48 %tmp_41, i48 %tmp_40
  %tmp_43 = shl i48 -1, %tmp_38
  %tmp_44 = lshr i48 -1, %tmp_39
  %p_demorgan = and i48 %tmp_43, %tmp_44
  %tmp_45 = xor i48 %p_demorgan, -1
  %tmp_46 = and i48 %p_Val2_3, %tmp_45
  %tmp_47 = and i48 %tmp_42, %p_demorgan
  %p_Result_1 = or i48 %tmp_46, %tmp_47
  store i48 %p_Result_1, i48* @curr_header_src_MAC_V, align 8
  br label %mergeST

; <label>:7                                       ; preds = %5
  %tmp_2 = icmp eq i32 %tmp_5, 13
  %p_Val2_2 = load i16* @curr_header_ethertype_V, align 2
  br i1 %tmp_2, label %8, label %9

; <label>:8                                       ; preds = %7
  %p_Result_2 = call i16 @llvm.part.set.i16.i8(i16 %p_Val2_2, i8 %tmp_data_V, i32 8, i32 15)
  store i16 %p_Result_2, i16* @curr_header_ethertype_V, align 8
  br label %mergeST

; <label>:9                                       ; preds = %7
  %tmp_4 = icmp eq i32 %tmp_5, 14
  br i1 %tmp_4, label %10, label %mergeST

; <label>:10                                      ; preds = %9
  %p_Result_4 = call i16 @llvm.part.set.i16.i8(i16 %p_Val2_2, i8 %tmp_data_V, i32 0, i32 7)
  store i16 %p_Result_4, i16* @curr_header_ethertype_V, align 8
  call void @_ssdm_op_Write.axis.volatile.i48P.i48P.i16P(i48* %headerData_V_src_MAC_V, i48* %headerData_V_dest_MAC_V, i16* %headerData_V_ethertype_V, i48 %p_Val2_3, i48 %p_Val2_s, i16 %p_Result_4)
  br label %mergeST

._crit_edge90:                                    ; preds = %mergeST, %codeRepl
  ret void

mergeST:                                          ; preds = %1, %2, %4, %6, %8, %9, %10
  %CNT_STATE_new_4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %6 ], [ true, %10 ], [ false, %9 ], [ true, %8 ], [ true, %4 ]
  store i1 %CNT_STATE_new_4, i1* @CNT_STATE, align 1
  br label %._crit_edge90
}

define weak void @_ssdm_op_Write.axis.volatile.i48P.i48P.i16P(i48*, i48*, i16*, i48, i48, i16) {
entry:
  store i48 %3, i48* %0
  store i48 %4, i48* %1
  store i16 %5, i16* %2
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

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_NbReadReq.axis.i8P.i2P(i8*, i2*, i32) {
entry:
  ret i1 true
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_8 = zext i3 %1 to i7
  %empty_9 = shl i7 %empty, 3
  %empty_10 = or i7 %empty_9, %empty_8
  ret i7 %empty_10
}

declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !16, !16, !18, !24, !27, !27, !13, !16, !16, !18, !24, !33, !33, !35, !38, !38, !18, !40, !43, !46, !49, !51, !18, !18, !18, !18, !18, !18, !18, !18, !18, !18, !18, !53, !53, !18, !53, !53, !18, !53, !53, !53, !53}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!54}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<struct axiByte> &", metadata !"stream<struct ethHeader> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inData", metadata !"headerData"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ethHeader &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!16 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !17, metadata !6}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space"}
!20 = metadata !{metadata !"kernel_arg_access_qual"}
!21 = metadata !{metadata !"kernel_arg_type"}
!22 = metadata !{metadata !"kernel_arg_type_qual"}
!23 = metadata !{metadata !"kernel_arg_name"}
!24 = metadata !{null, metadata !1, metadata !2, metadata !25, metadata !4, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!33 = metadata !{null, metadata !28, metadata !29, metadata !34, metadata !31, metadata !32, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, false>*", metadata !"int", metadata !"int"}
!35 = metadata !{null, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !17, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !41, metadata !11, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!43 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"struct axiByte &"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !47, metadata !11, metadata !48, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const struct axiByte &"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !""}
!49 = metadata !{null, metadata !8, metadata !9, metadata !50, metadata !11, metadata !42, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !42, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !15, metadata !6}
!54 = metadata !{metadata !55, [1 x i32]* @llvm_global_ctors_0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"llvm.global_ctors.0", metadata !59, metadata !"", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, i32 1}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 7, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"inData.V.data.V", metadata !59, metadata !"uint8", i32 0, i32 7}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 1, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"inData.V.user.V", metadata !59, metadata !"uint2", i32 0, i32 1}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 47, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"headerData.V.src_MAC.V", metadata !59, metadata !"uint48", i32 0, i32 47}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 47, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"headerData.V.dest_MAC.V", metadata !59, metadata !"uint48", i32 0, i32 47}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 15, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"headerData.V.ethertype.V", metadata !59, metadata !"uint16", i32 0, i32 15}
