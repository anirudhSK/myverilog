`timescale 1ns / 1ps
module counter_tb;

logic clk;
logic [7:0] counter_output;

//instantiate counter module
counter counter_instance(.clk(clk), .counter_output(counter_output));

initial begin
  clk = 0;
end

// Clock generator
always
 #5 clk = ~clk;

initial
begin
  $display("Initial counter output is %d", counter_output);
  $monitor("Time: %d, clk signal: %b, counter output: %d", $time, clk, counter_output);
  #200 $finish;
end

endmodule
