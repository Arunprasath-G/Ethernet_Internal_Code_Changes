vlib work

vmap work work

# Compile interfaces first
vlog -work work -sv eth_gmii_interface.sv
vlog -work work -sv eth_ui_interface.sv

# Compile package
vlog -work work -sv eth_pkg.sv

# Compile top
vlog -work work -sv eth_top.sv

set infile [open "logfile.sv" w+]

# Run simulation
vsim -debugDB work.eth_top +UVM_TESTNAME=gmii_eth_runt_bad_fcs_test  +UVM_VERBOSITY=UVM_LOW -l $infile

add log -r /eth_top/*

add wave -r /eth_top/*
#add wave -r /eth_top/ui_inf[1]/*


run -all
 
