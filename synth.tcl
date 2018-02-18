# Synthesis script
read_verilog -sv [lindex $argv 0]
synth_design -top [lindex $argv 2]
create_clock -period  [lindex $argv 1] -name clock_object [get_ports clk]
report_timing
