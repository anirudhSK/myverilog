// This means #1 = 1 ns and you can up to #0.001, but not #0.0001, which will be rounded to 0
`timescale 1ns / 1ps

// module declaration for counter
module multiplier(clk, multiplier_output);

// inputs for module
input  logic  clk;

// outputs for module
output logic  [2:0] multiplier_output;

// Internal state and wires

// State is anything that's written in an always_ff
logic  [2:0] multiplier_register;

// Combinational logic
always_comb
begin
  multiplier_output = multiplier_register * 2;
end

// Sequential logic
always_ff @ (posedge clk)
begin
  multiplier_register <= multiplier_output;
end

// The end
endmodule
