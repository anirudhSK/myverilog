module uart_testbench ();

logic clk;
logic i_reset;
logic i_start_transmission;
logic [7:0] i_data;
logic o_tx;

uart_transmitter tx (
  .clk(clk),
  .i_reset(i_reset),
  .i_data(i_data),
  .i_start_transmission(i_start_transmission),
  .o_tx(o_tx)
);
 
initial begin
  clk = 0;
  i_reset = 0;
  i_data  = 0;
  i_start_transmission = 0;
  #10
  i_reset = 1;
  #2
  i_reset = 0;
  #100
  i_start_transmission = 1;
  i_data = 8'b10101010;
  #2
  i_start_transmission = 0;
  #4000
  $finish;
end

initial begin
  $display("\t\ttime,\tclk,\ti_reset,\ti_start_transmission,\to_tx,\ti_data");
  $monitor("%d,\t%b,\t%b,\t\t%b,\t\t\t%b,\t%d", $time, clk, i_reset, i_start_transmission, o_tx, i_data);
end

always
  #1 clk = ~clk;

endmodule
