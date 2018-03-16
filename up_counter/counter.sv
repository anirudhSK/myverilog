module counter #(parameter COUNT_WIDTH = 32) (
  input  logic clk,
  input  logic i_reset,
  output logic [0:COUNT_WIDTH-1] o_count_next
);

// Registers
(* dont_touch = "yes" *) logic [0:COUNT_WIDTH-1]                 r_count;
(* dont_touch = "yes" *) logic                                   r_reset;

always_comb
begin
  if (r_count == 32'h3b9aca00 + 32'h3b9aca00)
    o_count_next = 0;
  else if (r_reset == 1'b1)
    o_count_next = 0;
  else
    o_count_next = r_count + 1'b1;
end

always_ff @(posedge clk)
begin
  r_reset <= i_reset;
  r_count <= o_count_next;
end

endmodule
