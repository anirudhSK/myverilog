`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module counter
   (clk,
    counter_output);
  input clk;
  output counter_output;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire counter_next;
  wire counter_output;
  wire counter_output_OBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF counter_output_OBUF_inst
       (.I(counter_output_OBUF),
        .O(counter_output));
  LUT1 #(
    .INIT(2'h1)) 
    counter_register_i_1
       (.I0(counter_output_OBUF),
        .O(counter_next));
  FDRE counter_register_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_next),
        .Q(counter_output_OBUF),
        .R(\<const0> ));
endmodule
