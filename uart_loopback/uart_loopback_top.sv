module uart_loopback_top (
  input  logic clk,
  input  logic i_reset,
  input  logic i_uart_rx,
  output logic o_uart_tx,
  output logic [0:6] o_segment_enable, // Is a segment (a to g, i.e., 7 segments) enabled (0) or not (1)?
  output logic [0:3] o_display_enable, // Is a particular 7 segment display enabled (0) or not (1)? There are 4 such displays.
  output logic o_dot_enable,           // Is the dot on the 7 segment display enabled (0) or not (1)?
  output logic [0:7] o_debug           // For LEDS from received UART data
);

// Intermediate wires
(* dont_touch = "yes" *) logic [0:31] w_out;
(* dont_touch = "yes" *) logic w_locked;
(* dont_touch = "yes" *) logic w_start_uart;
(* dont_touch = "yes" *) logic clk_gen;
(* dont_touch = "yes" *) logic [0:7] w_uart_tx_data;
(* dont_touch = "yes" *) logic w_ready_to_read;
(* dont_touch = "yes" *) logic [0:7] w_uart_rx_data;

// Wires to enable/disable seven segment display
// Note: 0 is enable. 1 is disable.
assign o_segment_enable[0] = 0;
assign o_segment_enable[1] = 0;
assign o_segment_enable[2] = 0;
assign o_segment_enable[3] = 0;
assign o_segment_enable[4] = 0;
assign o_segment_enable[5] = 0;
assign o_segment_enable[6] = 0;
assign o_display_enable[0] = 0;
assign o_display_enable[1] = 0;
assign o_display_enable[2] = 0;
assign o_display_enable[3] = 0;
assign o_dot_enable        = 0;

clk_gen(.i_clk_in(clk),
        .i_reset(1'b0),
        .o_locked(w_locked),
        .o_clk_out(clk_gen));

uart_transmitter uart_tx (
  .clk(clk_gen),
  .i_reset(i_reset),
  .i_data(w_uart_rx_data),
  .i_start_transmission(w_ready_to_read),
  .o_tx(o_uart_tx)
);

uart_receiver uart_rx (
  .clk(clk_gen),
  .i_reset(i_reset),
  .i_rx(i_uart_rx),
  .o_data(w_uart_rx_data),
  .o_ready_to_read(w_ready_to_read),
  .o_debug(o_debug)
);

endmodule
