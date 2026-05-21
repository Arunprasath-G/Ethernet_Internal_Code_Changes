vlib work

vmap work work

vlog -work work  -sv  eth_ui_interface.sv eth_gmii_interface.sv eth_pkg.sv eth_top.sv

set infile [open "logfile.sv" w+]

#vsim  -cvgperinstance -coverage  -c eth_top +UVM_TESTNAME=eth_test +UVM_VERBOSITY=UVM_LOW -l $infile
vsim   eth_top +UVM_TESTNAME=gmii_eth_normal_frame_test  +UVM_VERBOSITY=UVM_LOW -l $infile

add log -r /eth_top/*

add wave -r /eth_top/*

run -all
 
