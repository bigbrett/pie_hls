############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pie_hls
set_top frameSIPO
add_files pie_hls/solution1/frameSIPO.cpp
add_files pie_hls/solution1/frameSIPO.hpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 8 -name default
#source "./pie_hls/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -evaluate vhdl -format ip_catalog