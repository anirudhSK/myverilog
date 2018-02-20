// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
// Date        : Mon Feb 19 21:09:13 2018
// Host        : anirudh-OptiPlex-7050 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -sdf_anno true -mode timesim -force syn_output.v
// Design      : test
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module test
   (clk,
    test_input);
  (* dont_touch = "yes" *) input clk;
  (* dont_touch = "yes" *) input test_input;

  wire clk;
  wire clk_IBUF;
  (* DONT_TOUCH *) wire clk_IBUF_BUFG;
  (* DONT_TOUCH *) wire read_register;
  wire test_input;
  (* DONT_TOUCH *) wire test_input_IBUF;
  (* DONT_TOUCH *) wire write_output;
  (* DONT_TOUCH *) wire write_register;

initial begin
 $sdf_annotate("syn_output.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  (* DONT_TOUCH *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(read_register),
        .O(write_output));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE read_register_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF),
        .Q(read_register),
        .R(1'b0));
  (* DONT_TOUCH *) 
  IBUF test_input_IBUF_inst
       (.I(test_input),
        .O(test_input_IBUF));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE write_register_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output),
        .Q(write_register),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
