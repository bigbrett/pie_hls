#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("inData_TDATA", 8, hls_in, 0, "axis", "in_data", 1),
	Port_Property("inData_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("inData_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("inData_TUSER", 2, hls_in, 1, "axis", "in_data", 1),
	Port_Property("header", 8, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("header_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("livewire", 1, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("livewire_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "frameSIPO";
