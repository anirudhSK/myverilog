module uart_receiver (
  input  logic clk,
  input  logic i_rx,
  output logic [0:7] o_debug
);

// Registering inputs
logic r_rx;            // register received bits

always_comb
begin
  o_debug = {r_rx, r_rx, r_rx, r_rx, r_rx, r_rx, r_rx, r_rx};
end

always_ff @(posedge clk)
begin
  r_rx                       <= i_rx;
end

endmodule
