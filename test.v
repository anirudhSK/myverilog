// module to take in a test input and write it into a FF
module test(clk, test_input);

(* dont_touch = "yes" *) input logic clk;
(* dont_touch = "yes" *) input logic test_input;
(* dont_touch = "yes" *) logic write_output;
(* dont_touch = "yes" *) logic read_register;
(* dont_touch = "yes" *) logic write_register;

always_comb
begin
  write_output = (read_register * read_register * read_register) + (read_register * read_register) + read_register;
end

always_ff @(posedge clk)
begin
  write_register <= write_output;
  read_register  <= test_input;
end
endmodule
