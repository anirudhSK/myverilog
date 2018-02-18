// This means #1 = 1 ns and you can up to #0.001, but not #0.0001, which will be rounded to 0
`timescale 1ns / 1ps

// module declaration for counter
module counter(clk, counter_output);

// inputs for module
input  logic  clk;

// outputs for module
output logic  [7:0] counter_output;

// Internal state and wires
// State is anything that's written in an always_ff
logic  [7:0] counter_register = 0;

// Combinational logic
always_comb
begin
  counter_output = counter_register + 1;
end

// Sequential logic
always_ff @ (posedge clk)
begin
  counter_register <= counter_output;
end

// The end
endmodule
