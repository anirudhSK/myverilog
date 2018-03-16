# W5 is the oscillator pin
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# set clock frequency of master clock to external crystal's frequency (100 MHz)
# derived clocks are automatically constrained
create_clock -period 10 -name master_clock [get_ports clk]

# Specify physical locations of input and output signals on FPGA board
# Input signal: push button on pin U18
set_property PACKAGE_PIN U18     [get_ports i_reset]
set_property IOSTANDARD LVCMOS33 [get_ports i_reset]

# Output signal: LED on pin L1
set_property PACKAGE_PIN L1      [get_ports o_led]
set_property IOSTANDARD LVCMOS33 [get_ports o_led]
