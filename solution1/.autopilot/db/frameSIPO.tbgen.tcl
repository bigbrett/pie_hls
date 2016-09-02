set C_TypeInfoList {{ 
"frameSIPO" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inData": [[], {"reference": "0"}] }, {"headerData": [[], {"reference": "1"}] }],[],""], 
"0": [ "stream<axiByte>", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"1": [ "stream<ethHeader>", {"hls_type": {"stream": [[[[],"4"]],"3"]}}], 
"4": [ "ethHeader", {"struct": [[],[],[{ "src_MAC": [[], "5"]},{ "dest_MAC": [[], "5"]},{ "ethertype": [[], "6"]}],""]}], 
"5": [ "ap_uint<48>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 48}}]],""]}}], 
"6": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}], 
"2": [ "axiByte", {"struct": [[],[],[{ "data": [[], "7"]},{ "user": [[], "8"]}],""]}], 
"8": [ "ap_uint<2>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2}}]],""]}}], 
"7": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName frameSIPO
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {frameSIPO}
set C_modelType { void 0 }
set C_modelArgList {
	{ inData_V_data_V int 8 regular {axi_s 0 volatile  { inData data } }  }
	{ inData_V_user_V int 2 regular {axi_s 0 volatile  { inData user } }  }
	{ headerData_V_src_MAC_V int 48 regular {axi_s 1 volatile  { headerData_V_src_MAC_V data } }  }
	{ headerData_V_dest_MAC_V int 48 regular {axi_s 1 volatile  { headerData_V_dest_MAC_V data } }  }
	{ headerData_V_ethertype_V int 16 regular {axi_s 1 volatile  { headerData_V_ethertype_V data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inData_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inData.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inData.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "headerData_V_src_MAC_V", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "headerData.V.src_MAC.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "headerData_V_dest_MAC_V", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "headerData.V.dest_MAC.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "headerData_V_ethertype_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "headerData.V.ethertype.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inData_TVALID sc_in sc_logic 1 invld 1 } 
	{ headerData_V_src_MAC_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ inData_TDATA sc_in sc_lv 8 signal 0 } 
	{ inData_TREADY sc_out sc_logic 1 inacc 1 } 
	{ inData_TUSER sc_in sc_lv 2 signal 1 } 
	{ headerData_V_src_MAC_V_TDATA sc_out sc_lv 48 signal 2 } 
	{ headerData_V_src_MAC_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ headerData_V_dest_MAC_V_TDATA sc_out sc_lv 48 signal 3 } 
	{ headerData_V_dest_MAC_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ headerData_V_dest_MAC_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ headerData_V_ethertype_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ headerData_V_ethertype_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ headerData_V_ethertype_V_TREADY sc_in sc_logic 1 outacc 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inData_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "headerData_V_src_MAC_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "headerData_V_src_MAC_V", "role": "TREADY" }} , 
 	{ "name": "inData_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inData_V_data_V", "role": "default" }} , 
 	{ "name": "inData_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "inData_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "headerData_V_src_MAC_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "headerData_V_src_MAC_V", "role": "TDATA" }} , 
 	{ "name": "headerData_V_src_MAC_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "headerData_V_src_MAC_V", "role": "TVALID" }} , 
 	{ "name": "headerData_V_dest_MAC_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "headerData_V_dest_MAC_V", "role": "TDATA" }} , 
 	{ "name": "headerData_V_dest_MAC_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "headerData_V_dest_MAC_V", "role": "TVALID" }} , 
 	{ "name": "headerData_V_dest_MAC_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "headerData_V_dest_MAC_V", "role": "TREADY" }} , 
 	{ "name": "headerData_V_ethertype_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "headerData_V_ethertype_V", "role": "TDATA" }} , 
 	{ "name": "headerData_V_ethertype_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "headerData_V_ethertype_V", "role": "TVALID" }} , 
 	{ "name": "headerData_V_ethertype_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "headerData_V_ethertype_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "frameSIPO", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "1", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "inData_V_data_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "inData_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "inData_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "headerData_V_src_MAC_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "headerData_V_src_MAC_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "headerData_V_dest_MAC_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "headerData_V_dest_MAC_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "headerData_V_ethertype_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "headerData_V_ethertype_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "CNT_STATE", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "byte_cnt", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "curr_header_dest_MAC_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "curr_header_src_MAC_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "curr_header_ethertype_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set Spec2ImplPortList { 
	inData_V_data_V { axis {  { inData_TDATA in_data 0 8 } } }
	inData_V_user_V { axis {  { inData_TVALID in_vld 0 1 }  { inData_TREADY in_acc 1 1 }  { inData_TUSER in_data 0 2 } } }
	headerData_V_src_MAC_V { axis {  { headerData_V_src_MAC_V_TREADY out_acc 0 1 }  { headerData_V_src_MAC_V_TDATA out_data 1 48 }  { headerData_V_src_MAC_V_TVALID out_vld 1 1 } } }
	headerData_V_dest_MAC_V { axis {  { headerData_V_dest_MAC_V_TDATA out_data 1 48 }  { headerData_V_dest_MAC_V_TVALID out_vld 1 1 }  { headerData_V_dest_MAC_V_TREADY out_acc 0 1 } } }
	headerData_V_ethertype_V { axis {  { headerData_V_ethertype_V_TDATA out_data 1 16 }  { headerData_V_ethertype_V_TVALID out_vld 1 1 }  { headerData_V_ethertype_V_TREADY out_acc 0 1 } } }
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
