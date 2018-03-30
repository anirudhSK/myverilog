module uart_led_output (
  input  logic [0:7] i_data,
  input  logic clk,
  output logic o_led
);

// Registers
(* dont_touch = "yes" *) logic [0:7] r_data;

always_ff @(posedge clk)
  r_data <= i_data;

always_comb
begin
  if (r_data == 8'b01000001)
    o_led = 1;
  else
    o_led = 0;
end

endmodule
