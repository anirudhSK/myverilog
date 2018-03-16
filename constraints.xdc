set_property PACKAGE_PIN W5 [get_ports clk] # W5 is the oscillator pin
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10 -name clk -waveform {0.000 5.000} [get_ports clk]
# clock frequency of master clock; derived clocks are automatically constrained

# Specify physical locations of input and output signals on FPGA board
# Input signal: push button on pin U18
set_property PACKAGE_PIN U18 [get_ports i_reset]
set_property IOSTANDARD LVCMOS33 [get_ports i_reset]

# Output signal: single LED on pin L1
set_property PACKAGE_PIN L1 [get_ports led_output]
set_property IOSTANDARD LVCMOS33 [get_ports led_output]
