# Lite version of compiler script
set_part xc7a35tcpg236-1
read_verilog -sv  uart_transmitter.sv
read_xdc          constraints.xdc
synth_design -top uart_transmitter
place_design
route_design
report_timing -setup
report_timing -hold
report_timing_summary
#write_bitstream -force output.bit
