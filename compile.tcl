# Compiler script
set_part xc7a35tcpg236-1
read_verilog -sv  [lindex $argv 0]
read_xdc          [lindex $argv 1]
synth_design -top [lindex $argv 2]
report_timing -setup
report_timing -hold
write_sdf -force syn_output.sdf
write_verilog -sdf_anno true -mode timesim -force syn_output.v
place_design
route_design
write_sdf -force pnr_output.sdf
write_verilog -sdf_anno true -mode timesim -force pnr_output.v
report_timing -setup
report_timing -hold
report_timing_summary
