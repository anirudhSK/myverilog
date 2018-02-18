`timescale 1ns / 1ps
module counter_tb;

logic clk = 1;
logic [7:0] counter_output = 0;
integer i;

//instantiate counter module
counter counter_instance(.clk(clk), .counter_output(counter_output));

initial
begin
  $display("Initial counter output is %d", counter_output);
  for (i=0; i<20; i++) begin
    $display("half clock cycle: %d, time: %d, clk signal: %b, counter output: %d", i, $time, clk, counter_output);
    #1 clk = ~clk;
  end
end

endmodule
