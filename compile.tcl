# Synthesis script
read_verilog -sv  [lindex $argv 0]
read_xdc          [lindex $argv 1]
synth_design -top [lindex $argv 2]
report_timing
write_sdf syn_output.sdf
write_verilog -force syn_output.v
place_design
route_design
write_sdf pnr_output.sdf
write_verilog -force pnr_output.v
report_timing
