module counter_top (
  input  logic clk,
  input  logic i_reset,
  output logic o_led
);

// Intermediate wires
(* dont_touch = "yes" *) logic [0:31] w_out;

counter counter_instance (
  .clk(clk),
  .i_reset(i_reset),
  .o_count_next(w_out)
);

led_display led_display_instance (                    
  .i_count(w_out),
  .clk(clk),
  .o_led(o_led)
);

endmodule
