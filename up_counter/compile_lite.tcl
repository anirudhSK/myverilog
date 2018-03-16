# Lite version of compiler script
set_part xc7a35tcpg236-1
read_verilog -sv  counter.sv counter_top.sv led_display.sv clk_gen.sv
read_xdc          constraints.xdc
synth_design -top counter_top
place_design
route_design
report_timing -setup
report_timing -hold
report_timing_summary
write_bitstream -force output.bit
