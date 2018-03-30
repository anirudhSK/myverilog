module uart_led_output (
  input  logic [0:7] i_data,
  input  logic i_ready_to_read,
  input  logic clk,
  output logic o_led
);

// Registers
(* dont_touch = "yes" *) logic [0:7] r_data;
(* dont_touch = "yes" *) logic r_ready_to_read;

always_ff @(posedge clk)
begin
  r_data <= i_data;
  r_ready_to_read <= i_ready_to_read;
end

always_comb
begin
  if ((r_data == 8'b01000001) && (r_ready_to_read == 1))
    o_led = 1;
  else
    o_led = 0;
end

endmodule
