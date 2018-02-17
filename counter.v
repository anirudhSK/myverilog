module counter(clk);
input  logic clk;

logic  [7:0] counter_register = 0;
logic  [7:0] counter_tmp;

always_comb
begin
  counter_tmp = counter_register + 1;
end

always_ff @ (posedge clk)
begin
  counter_register <= counter_tmp + 1;
end

endmodule
