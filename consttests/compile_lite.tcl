# Lite version of compiler script
set_part xc7a35tcpg236-1
read_verilog -sv  [lindex $argv 0]
read_xdc          [lindex $argv 1]
synth_design -top [lindex $argv 2]
report_utilization -file [lindex $argv 0].rpt
