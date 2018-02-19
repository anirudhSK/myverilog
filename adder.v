// This means #1 = 1 ns and you can up to #0.001,
// but not #0.0001, which will be rounded to 0
`timescale 1ns / 1ps

// module declaration for counter
module adder(clk, adder_output, input1, input2, dummy_read);

// inputs for module
input  logic  clk;
input  logic [15:0] input1;
input  logic [15:0] input2;

// outputs for module
output logic  [15:0] adder_output;
output logic  [15:0] dummy_read;

// Internal state and wires

// State is anything that's written in an always_ff
logic  [15:0] r_1;
logic  [15:0] r_out;
logic  [15:0] r_2;

// Combinational logic
always_comb
begin
  dummy_read          = r_out;
  adder_output        = 2*r_1 + r_2;
end

// Sequential logic
always_ff @ (posedge clk)
begin
  r_out <= adder_output;
  r_1   <= input1;
  r_2   <= input2;
end

// The end
endmodule
