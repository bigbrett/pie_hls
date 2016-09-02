############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pie_hls
set_top frameSIPO
add_files pie_hls/solution1/frameSIPO.cpp
add_files pie_hls/solution1/frameSIPO.hpp
add_files pie_hls/solution1/globals.hpp
add_files -tb pie_hls/solution1/golden.dat
add_files -tb ../../Desktop/myfile.dat
add_files -tb ../../Desktop/outData.txt
add_files -tb pie_hls/solution1/pie_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 8 -name default
#source "./pie_hls/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
