module counter #(parameter COUNT_WIDTH = 32) (
  input  logic clk,
  input  logic i_reset,
  output logic [0:COUNT_WIDTH-1] o_count_next,
  output logic o_start_uart,
  output logic o_uart_data
);

// Registers
(* dont_touch = "yes" *) logic [0:COUNT_WIDTH-1]                 r_count;
(* dont_touch = "yes" *) logic                                   r_reset;

always_comb
begin
  if (r_count == 32'h3b9aca00) begin
    o_start_uart = 1;
    o_uart_data  = 8'b1000001;
  end else if (r_count == 32'h3b9aca00 + 32'h3b9aca00)
    o_count_next = 0;
  else if (r_reset == 1'b1) begin
    o_count_next = 0;
    o_start_uart = 0;
    o_uart_data  = 0;
  end else
    o_count_next = r_count + 1'b1;
end

always_ff @(posedge clk)
begin
  r_reset <= i_reset;
  r_count <= o_count_next;
end

endmodule
