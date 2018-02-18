# Synthesis script
read_verilog -sv  [lindex $argv 0]
read_xdc          [lindex $argv 1]
synth_design -top [lindex $argv 2]
report_timing
