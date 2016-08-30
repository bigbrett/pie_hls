set C_TypeInfoList {{ 
"frameSIPO" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inData": [[], {"reference": "0"}] }, {"outData": [[], {"reference": "0"}] }, {"sfd_detected": [[],{ "pointer": "1"}] }, {"src_addr": [[],{ "pointer": "1"}] }, {"dest_addr": [[],{ "pointer": "1"}] }, {"ethertype": [[],{ "pointer": "1"}] }, {"ping": [[],{ "pointer": "1"}] }],[],""], 
"0": [ "stream<axiByte>", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"1": [ "uint1", {"typedef": [[[], {"scalar": "uint1"}],""]}], 
"2": [ "axiByte", {"struct": [[],[],[{ "data": [[], "4"]},{ "user": [[], "5"]}],""]}], 
"4": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"5": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName frameSIPO
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set C_modelName {frameSIPO}
set C_modelType { void 0 }
set C_modelArgList {
	{ inData_V_data_V int 8 regular {axi_s 0 volatile  { inData data } }  }
	{ inData_V_user_V int 128 regular {axi_s 0 volatile  { inData user } }  }
	{ outData_V_data_V int 8 unused {axi_s 0 ""  { outData data } }  }
	{ outData_V_user_V int 128 unused {axi_s 0 ""  { outData user } }  }
	{ sfd_detected int 1 regular {pointer 1}  }
	{ src_addr int 1 regular {pointer 1}  }
	{ dest_addr int 1 regular {pointer 1}  }
	{ ethertype int 1 regular {pointer 1}  }
	{ ping int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inData_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inData.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_user_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "inData.V.user.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outData.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_user_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "outData.V.user.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sfd_detected", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sfd_detected","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_addr", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_addr","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dest_addr", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dest_addr","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethertype", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethertype","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ping", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ping","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inData_TDATA sc_in sc_lv 8 signal 0 } 
	{ inData_TVALID sc_in sc_logic 1 invld 1 } 
	{ inData_TREADY sc_out sc_logic 1 inacc 1 } 
	{ inData_TUSER sc_in sc_lv 128 signal 1 } 
	{ outData_TDATA sc_in sc_lv 8 signal 2 } 
	{ outData_TVALID sc_in sc_logic 1 invld 3 } 
	{ outData_TREADY sc_out sc_logic 1 inacc 3 } 
	{ outData_TUSER sc_in sc_lv 128 signal 3 } 
	{ sfd_detected sc_out sc_lv 1 signal 4 } 
	{ sfd_detected_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ src_addr sc_out sc_lv 1 signal 5 } 
	{ src_addr_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ dest_addr sc_out sc_lv 1 signal 6 } 
	{ dest_addr_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ ethertype sc_out sc_lv 1 signal 7 } 
	{ ethertype_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ ping sc_out sc_lv 1 signal 8 } 
	{ ping_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inData_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inData_V_data_V", "role": "default" }} , 
 	{ "name": "inData_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "inData_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "inData_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "outData_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outData_V_data_V", "role": "default" }} , 
 	{ "name": "outData_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "outData_V_user_V", "role": "default" }} , 
 	{ "name": "outData_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "outData_V_user_V", "role": "default" }} , 
 	{ "name": "outData_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "outData_V_user_V", "role": "default" }} , 
 	{ "name": "sfd_detected", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sfd_detected", "role": "default" }} , 
 	{ "name": "sfd_detected_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sfd_detected", "role": "ap_vld" }} , 
 	{ "name": "src_addr", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_addr", "role": "default" }} , 
 	{ "name": "src_addr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_addr", "role": "ap_vld" }} , 
 	{ "name": "dest_addr", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_addr", "role": "default" }} , 
 	{ "name": "dest_addr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dest_addr", "role": "ap_vld" }} , 
 	{ "name": "ethertype", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethertype", "role": "default" }} , 
 	{ "name": "ethertype_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethertype", "role": "ap_vld" }} , 
 	{ "name": "ping", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "default" }} , 
 	{ "name": "ping_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ping", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "frameSIPO", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "inData_V_data_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "inData_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "inData_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outData_V_data_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outData_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sfd_detected", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "src_addr", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dest_addr", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "ethertype", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "ping", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "CNT_STATE", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "byte_cnt", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set Spec2ImplPortList { 
	inData_V_data_V { axis {  { inData_TDATA in_data 0 8 } } }
	inData_V_user_V { axis {  { inData_TVALID in_vld 0 1 }  { inData_TREADY in_acc 1 1 }  { inData_TUSER in_data 0 128 } } }
	outData_V_data_V { axis {  { outData_TDATA in_data 0 8 } } }
	outData_V_user_V { axis {  { outData_TVALID in_vld 0 1 }  { outData_TREADY in_acc 1 1 }  { outData_TUSER in_data 0 128 } } }
	sfd_detected { ap_vld {  { sfd_detected out_data 1 1 }  { sfd_detected_ap_vld out_vld 1 1 } } }
	src_addr { ap_vld {  { src_addr out_data 1 1 }  { src_addr_ap_vld out_vld 1 1 } } }
	dest_addr { ap_vld {  { dest_addr out_data 1 1 }  { dest_addr_ap_vld out_vld 1 1 } } }
	ethertype { ap_vld {  { ethertype out_data 1 1 }  { ethertype_ap_vld out_vld 1 1 } } }
	ping { ap_vld {  { ping out_data 1 1 }  { ping_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
