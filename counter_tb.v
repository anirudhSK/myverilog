`timescale 1ns / 1ps
module counter_tb;

logic clk = 10;
logic [7:0] counter_output = 0;
integer i;

//instantiate counter module
counter counter_instance(.clk(clk), .counter_output(counter_output));

initial
begin
  for (i=0; i<100; i++) begin
//    #1 clk = ~clk;
    $display("half clock cycle: %d, clk signal: %b, counter: %d", i, clk, counter_output);
  end
end

endmodule
