// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
// Date        : Mon Feb 19 12:56:10 2018
// Host        : anirudh-OptiPlex-7050 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force syn_output.v
// Design      : test
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module test
   (clk,
    test_input);
  (* dont_touch = "yes" *) input clk;
  (* dont_touch = "yes" *) input test_input;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire clk_IBUF;
  (* DONT_TOUCH *) wire clk_IBUF_BUFG;
  (* DONT_TOUCH *) wire read_register;
  wire test_input;
  (* DONT_TOUCH *) wire test_input_IBUF;
  (* DONT_TOUCH *) wire write_output;
  (* DONT_TOUCH *) wire write_register;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  (* DONT_TOUCH *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE read_register_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(test_input_IBUF),
        .Q(read_register),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  IBUF test_input_IBUF_inst
       (.I(test_input),
        .O(test_input_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    write_output_inferred_i_1
       (.I0(read_register),
        .O(write_output));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE write_register_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(write_output),
        .Q(write_register),
        .R(\<const0> ));
endmodule
