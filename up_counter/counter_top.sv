module counter_top (
  input  logic clk,
  input  logic i_reset,
  output logic o_led
);

// Intermediate wires
(* dont_touch = "yes" *) logic [0:31] w_out;
(* dont_touch = "yes" *) logic w_locked;
(* dont_touch = "yes" *) logic clk_gen;

clk_gen(.clk_in(clk),
        .reset(1'b0),
        .locked(w_locked),
        .clk_out(clk_gen));

counter counter_instance (
  .clk(clk_gen),
  .i_reset(i_reset),
  .o_count_next(w_out)
);

led_display led_display_instance (                    
  .i_count(w_out),
  .clk(clk_gen),
  .o_led(o_led)
);

endmodule
