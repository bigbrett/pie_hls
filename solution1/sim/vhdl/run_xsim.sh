
xelab xil_defaultlib.apatb_frameSIPO_top -prj frameSIPO.prj --initfile "/opt/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s frameSIPO 
xsim --noieeewarnings frameSIPO -tclbatch frameSIPO.tcl

