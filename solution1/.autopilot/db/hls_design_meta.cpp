#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("inData_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("headerData_V_src_MAC_V_TREADY", 1, hls_in, 2, "axis", "out_acc", 1),
	Port_Property("inData_TDATA", 8, hls_in, 0, "axis", "in_data", 1),
	Port_Property("inData_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("inData_TUSER", 2, hls_in, 1, "axis", "in_data", 1),
	Port_Property("headerData_V_src_MAC_V_TDATA", 48, hls_out, 2, "axis", "out_data", 1),
	Port_Property("headerData_V_src_MAC_V_TVALID", 1, hls_out, 2, "axis", "out_vld", 1),
	Port_Property("headerData_V_dest_MAC_V_TDATA", 48, hls_out, 3, "axis", "out_data", 1),
	Port_Property("headerData_V_dest_MAC_V_TVALID", 1, hls_out, 3, "axis", "out_vld", 1),
	Port_Property("headerData_V_dest_MAC_V_TREADY", 1, hls_in, 3, "axis", "out_acc", 1),
	Port_Property("headerData_V_ethertype_V_TDATA", 16, hls_out, 4, "axis", "out_data", 1),
	Port_Property("headerData_V_ethertype_V_TVALID", 1, hls_out, 4, "axis", "out_vld", 1),
	Port_Property("headerData_V_ethertype_V_TREADY", 1, hls_in, 4, "axis", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "frameSIPO";
