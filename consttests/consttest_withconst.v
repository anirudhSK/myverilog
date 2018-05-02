module consttest(i_read_input, o_rand_output);

(* dont_touch = "yes" *) input  logic [0:11] i_read_input;
(* dont_touch = "yes" *) output logic [0:7] o_rand_output;
(* dont_touch = "yes" *) const  logic [0:7] large_array [2560];

always_comb
begin
  o_rand_output = large_array[i_read_input];
end

endmodule
