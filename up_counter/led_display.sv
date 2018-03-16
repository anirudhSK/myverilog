module led_display (
  input  logic [0:31] i_count,
  input  logic clk,
  output logic o_led
);

// Registers
(* dont_touch = "yes" *) logic [0:31] r_count;

always_ff @(posedge clk)
  r_count <= i_count;

always_comb
begin
  if (r_count >= 32'h3b9aca00)
    o_led = 1;
  else
    o_led = 0;
end

endmodule
