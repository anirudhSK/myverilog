// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
// Date        : Mon Feb 19 21:16:44 2018
// Host        : anirudh-OptiPlex-7050 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -sdf_anno true -mode timesim -force pnr_output.v
// Design      : test
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "58a5a43c" *) 
(* NotValidForBitStream *)
module test
   (clk,
    test_input);
  (* dont_touch = "yes" *) input clk;
  (* dont_touch = "yes" *) input [15:0]test_input;

  wire clk;
  wire clk_IBUF;
  (* DONT_TOUCH *) wire clk_IBUF_BUFG;
  (* DONT_TOUCH *) wire [15:0]read_register;
  wire [15:0]test_input;
  (* DONT_TOUCH *) wire [15:0]test_input_IBUF;
  (* DONT_TOUCH *) wire [15:0]write_output;
  wire write_output_inferred_i_10_n_0;
  wire write_output_inferred_i_11_n_0;
  wire write_output_inferred_i_12_n_0;
  wire write_output_inferred_i_13_n_0;
  wire write_output_inferred_i_14_n_0;
  wire write_output_inferred_i_15_n_0;
  wire write_output_inferred_i_16_n_0;
  wire write_output_inferred_i_17_n_0;
  wire write_output_inferred_i_18_n_0;
  wire write_output_inferred_i_19_n_0;
  wire write_output_inferred_i_1_n_1;
  wire write_output_inferred_i_1_n_2;
  wire write_output_inferred_i_1_n_3;
  wire write_output_inferred_i_20_n_0;
  wire write_output_inferred_i_2_n_0;
  wire write_output_inferred_i_2_n_1;
  wire write_output_inferred_i_2_n_2;
  wire write_output_inferred_i_2_n_3;
  wire write_output_inferred_i_3_n_0;
  wire write_output_inferred_i_3_n_1;
  wire write_output_inferred_i_3_n_2;
  wire write_output_inferred_i_3_n_3;
  wire write_output_inferred_i_4_n_0;
  wire write_output_inferred_i_4_n_1;
  wire write_output_inferred_i_4_n_2;
  wire write_output_inferred_i_4_n_3;
  wire write_output_inferred_i_5_n_0;
  wire write_output_inferred_i_6_n_0;
  wire write_output_inferred_i_7_n_0;
  wire write_output_inferred_i_8_n_0;
  wire write_output_inferred_i_9_n_0;
  wire write_output_reg1_n_100;
  wire write_output_reg1_n_101;
  wire write_output_reg1_n_102;
  wire write_output_reg1_n_103;
  wire write_output_reg1_n_104;
  wire write_output_reg1_n_105;
  wire write_output_reg1_n_90;
  wire write_output_reg1_n_91;
  wire write_output_reg1_n_92;
  wire write_output_reg1_n_93;
  wire write_output_reg1_n_94;
  wire write_output_reg1_n_95;
  wire write_output_reg1_n_96;
  wire write_output_reg1_n_97;
  wire write_output_reg1_n_98;
  wire write_output_reg1_n_99;
  wire write_output_reg2_n_100;
  wire write_output_reg2_n_101;
  wire write_output_reg2_n_102;
  wire write_output_reg2_n_103;
  wire write_output_reg2_n_104;
  wire write_output_reg2_n_105;
  wire write_output_reg2_n_74;
  wire write_output_reg2_n_75;
  wire write_output_reg2_n_76;
  wire write_output_reg2_n_77;
  wire write_output_reg2_n_78;
  wire write_output_reg2_n_79;
  wire write_output_reg2_n_80;
  wire write_output_reg2_n_81;
  wire write_output_reg2_n_82;
  wire write_output_reg2_n_83;
  wire write_output_reg2_n_84;
  wire write_output_reg2_n_85;
  wire write_output_reg2_n_86;
  wire write_output_reg2_n_87;
  wire write_output_reg2_n_88;
  wire write_output_reg2_n_89;
  wire write_output_reg2_n_90;
  wire write_output_reg2_n_91;
  wire write_output_reg2_n_92;
  wire write_output_reg2_n_93;
  wire write_output_reg2_n_94;
  wire write_output_reg2_n_95;
  wire write_output_reg2_n_96;
  wire write_output_reg2_n_97;
  wire write_output_reg2_n_98;
  wire write_output_reg2_n_99;
  wire write_output_reg3_n_100;
  wire write_output_reg3_n_101;
  wire write_output_reg3_n_102;
  wire write_output_reg3_n_103;
  wire write_output_reg3_n_104;
  wire write_output_reg3_n_105;
  wire write_output_reg3_n_74;
  wire write_output_reg3_n_75;
  wire write_output_reg3_n_76;
  wire write_output_reg3_n_77;
  wire write_output_reg3_n_78;
  wire write_output_reg3_n_79;
  wire write_output_reg3_n_80;
  wire write_output_reg3_n_81;
  wire write_output_reg3_n_82;
  wire write_output_reg3_n_83;
  wire write_output_reg3_n_84;
  wire write_output_reg3_n_85;
  wire write_output_reg3_n_86;
  wire write_output_reg3_n_87;
  wire write_output_reg3_n_88;
  wire write_output_reg3_n_89;
  wire write_output_reg3_n_90;
  wire write_output_reg3_n_91;
  wire write_output_reg3_n_92;
  wire write_output_reg3_n_93;
  wire write_output_reg3_n_94;
  wire write_output_reg3_n_95;
  wire write_output_reg3_n_96;
  wire write_output_reg3_n_97;
  wire write_output_reg3_n_98;
  wire write_output_reg3_n_99;
  (* DONT_TOUCH *) wire [15:0]write_register;
  wire [3:3]NLW_write_output_inferred_i_1_CO_UNCONNECTED;
  wire NLW_write_output_reg1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_write_output_reg1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_write_output_reg1_OVERFLOW_UNCONNECTED;
  wire NLW_write_output_reg1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_write_output_reg1_PATTERNDETECT_UNCONNECTED;
  wire NLW_write_output_reg1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_write_output_reg1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_write_output_reg1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_write_output_reg1_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_write_output_reg1_P_UNCONNECTED;
  wire [47:0]NLW_write_output_reg1_PCOUT_UNCONNECTED;
  wire NLW_write_output_reg2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_write_output_reg2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_write_output_reg2_OVERFLOW_UNCONNECTED;
  wire NLW_write_output_reg2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_write_output_reg2_PATTERNDETECT_UNCONNECTED;
  wire NLW_write_output_reg2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_write_output_reg2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_write_output_reg2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_write_output_reg2_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_write_output_reg2_P_UNCONNECTED;
  wire [47:0]NLW_write_output_reg2_PCOUT_UNCONNECTED;
  wire NLW_write_output_reg3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_write_output_reg3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_write_output_reg3_OVERFLOW_UNCONNECTED;
  wire NLW_write_output_reg3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_write_output_reg3_PATTERNDETECT_UNCONNECTED;
  wire NLW_write_output_reg3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_write_output_reg3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_write_output_reg3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_write_output_reg3_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_write_output_reg3_P_UNCONNECTED;
  wire [47:0]NLW_write_output_reg3_PCOUT_UNCONNECTED;

initial begin
 $sdf_annotate("pnr_output.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  (* DONT_TOUCH *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[0]),
        .Q(read_register[0]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[10]),
        .Q(read_register[10]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[11]),
        .Q(read_register[11]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[12]),
        .Q(read_register[12]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[13]),
        .Q(read_register[13]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[14]),
        .Q(read_register[14]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[15]),
        .Q(read_register[15]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[1]),
        .Q(read_register[1]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[2]),
        .Q(read_register[2]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[3]),
        .Q(read_register[3]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[4]),
        .Q(read_register[4]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[5]),
        .Q(read_register[5]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[6]),
        .Q(read_register[6]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[7]),
        .Q(read_register[7]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[8]),
        .Q(read_register[8]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \read_register_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(test_input_IBUF[9]),
        .Q(read_register[9]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[0]_inst 
       (.I(test_input[0]),
        .O(test_input_IBUF[0]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[10]_inst 
       (.I(test_input[10]),
        .O(test_input_IBUF[10]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[11]_inst 
       (.I(test_input[11]),
        .O(test_input_IBUF[11]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[12]_inst 
       (.I(test_input[12]),
        .O(test_input_IBUF[12]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[13]_inst 
       (.I(test_input[13]),
        .O(test_input_IBUF[13]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[14]_inst 
       (.I(test_input[14]),
        .O(test_input_IBUF[14]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[15]_inst 
       (.I(test_input[15]),
        .O(test_input_IBUF[15]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[1]_inst 
       (.I(test_input[1]),
        .O(test_input_IBUF[1]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[2]_inst 
       (.I(test_input[2]),
        .O(test_input_IBUF[2]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[3]_inst 
       (.I(test_input[3]),
        .O(test_input_IBUF[3]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[4]_inst 
       (.I(test_input[4]),
        .O(test_input_IBUF[4]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[5]_inst 
       (.I(test_input[5]),
        .O(test_input_IBUF[5]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[6]_inst 
       (.I(test_input[6]),
        .O(test_input_IBUF[6]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[7]_inst 
       (.I(test_input[7]),
        .O(test_input_IBUF[7]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[8]_inst 
       (.I(test_input[8]),
        .O(test_input_IBUF[8]));
  (* DONT_TOUCH *) 
  IBUF \test_input_IBUF[9]_inst 
       (.I(test_input[9]),
        .O(test_input_IBUF[9]));
  CARRY4 write_output_inferred_i_1
       (.CI(write_output_inferred_i_2_n_0),
        .CO({NLW_write_output_inferred_i_1_CO_UNCONNECTED[3],write_output_inferred_i_1_n_1,write_output_inferred_i_1_n_2,write_output_inferred_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,write_output_reg1_n_91,write_output_reg1_n_92,write_output_reg1_n_93}),
        .O(write_output[15:12]),
        .S({write_output_inferred_i_5_n_0,write_output_inferred_i_6_n_0,write_output_inferred_i_7_n_0,write_output_inferred_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_10
       (.I0(write_output_reg1_n_95),
        .I1(read_register[10]),
        .O(write_output_inferred_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_11
       (.I0(write_output_reg1_n_96),
        .I1(read_register[9]),
        .O(write_output_inferred_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_12
       (.I0(write_output_reg1_n_97),
        .I1(read_register[8]),
        .O(write_output_inferred_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_13
       (.I0(write_output_reg1_n_98),
        .I1(read_register[7]),
        .O(write_output_inferred_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_14
       (.I0(write_output_reg1_n_99),
        .I1(read_register[6]),
        .O(write_output_inferred_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_15
       (.I0(write_output_reg1_n_100),
        .I1(read_register[5]),
        .O(write_output_inferred_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_16
       (.I0(write_output_reg1_n_101),
        .I1(read_register[4]),
        .O(write_output_inferred_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_17
       (.I0(write_output_reg1_n_102),
        .I1(read_register[3]),
        .O(write_output_inferred_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_18
       (.I0(write_output_reg1_n_103),
        .I1(read_register[2]),
        .O(write_output_inferred_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_19
       (.I0(write_output_reg1_n_104),
        .I1(read_register[1]),
        .O(write_output_inferred_i_19_n_0));
  CARRY4 write_output_inferred_i_2
       (.CI(write_output_inferred_i_3_n_0),
        .CO({write_output_inferred_i_2_n_0,write_output_inferred_i_2_n_1,write_output_inferred_i_2_n_2,write_output_inferred_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({write_output_reg1_n_94,write_output_reg1_n_95,write_output_reg1_n_96,write_output_reg1_n_97}),
        .O(write_output[11:8]),
        .S({write_output_inferred_i_9_n_0,write_output_inferred_i_10_n_0,write_output_inferred_i_11_n_0,write_output_inferred_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_20
       (.I0(write_output_reg1_n_105),
        .I1(read_register[0]),
        .O(write_output_inferred_i_20_n_0));
  CARRY4 write_output_inferred_i_3
       (.CI(write_output_inferred_i_4_n_0),
        .CO({write_output_inferred_i_3_n_0,write_output_inferred_i_3_n_1,write_output_inferred_i_3_n_2,write_output_inferred_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({write_output_reg1_n_98,write_output_reg1_n_99,write_output_reg1_n_100,write_output_reg1_n_101}),
        .O(write_output[7:4]),
        .S({write_output_inferred_i_13_n_0,write_output_inferred_i_14_n_0,write_output_inferred_i_15_n_0,write_output_inferred_i_16_n_0}));
  CARRY4 write_output_inferred_i_4
       (.CI(1'b0),
        .CO({write_output_inferred_i_4_n_0,write_output_inferred_i_4_n_1,write_output_inferred_i_4_n_2,write_output_inferred_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({write_output_reg1_n_102,write_output_reg1_n_103,write_output_reg1_n_104,write_output_reg1_n_105}),
        .O(write_output[3:0]),
        .S({write_output_inferred_i_17_n_0,write_output_inferred_i_18_n_0,write_output_inferred_i_19_n_0,write_output_inferred_i_20_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_5
       (.I0(write_output_reg1_n_90),
        .I1(read_register[15]),
        .O(write_output_inferred_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_6
       (.I0(write_output_reg1_n_91),
        .I1(read_register[14]),
        .O(write_output_inferred_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_7
       (.I0(write_output_reg1_n_92),
        .I1(read_register[13]),
        .O(write_output_inferred_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_8
       (.I0(write_output_reg1_n_93),
        .I1(read_register[12]),
        .O(write_output_inferred_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    write_output_inferred_i_9
       (.I0(write_output_reg1_n_94),
        .I1(read_register[11]),
        .O(write_output_inferred_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    write_output_reg1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,read_register}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_write_output_reg1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,read_register}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_write_output_reg1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,write_output_reg2_n_90,write_output_reg2_n_91,write_output_reg2_n_92,write_output_reg2_n_93,write_output_reg2_n_94,write_output_reg2_n_95,write_output_reg2_n_96,write_output_reg2_n_97,write_output_reg2_n_98,write_output_reg2_n_99,write_output_reg2_n_100,write_output_reg2_n_101,write_output_reg2_n_102,write_output_reg2_n_103,write_output_reg2_n_104,write_output_reg2_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_write_output_reg1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_write_output_reg1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_write_output_reg1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_write_output_reg1_OVERFLOW_UNCONNECTED),
        .P({NLW_write_output_reg1_P_UNCONNECTED[47:16],write_output_reg1_n_90,write_output_reg1_n_91,write_output_reg1_n_92,write_output_reg1_n_93,write_output_reg1_n_94,write_output_reg1_n_95,write_output_reg1_n_96,write_output_reg1_n_97,write_output_reg1_n_98,write_output_reg1_n_99,write_output_reg1_n_100,write_output_reg1_n_101,write_output_reg1_n_102,write_output_reg1_n_103,write_output_reg1_n_104,write_output_reg1_n_105}),
        .PATTERNBDETECT(NLW_write_output_reg1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_write_output_reg1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_write_output_reg1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_write_output_reg1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    write_output_reg2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,write_output_reg3_n_90,write_output_reg3_n_91,write_output_reg3_n_92,write_output_reg3_n_93,write_output_reg3_n_94,write_output_reg3_n_95,write_output_reg3_n_96,write_output_reg3_n_97,write_output_reg3_n_98,write_output_reg3_n_99,write_output_reg3_n_100,write_output_reg3_n_101,write_output_reg3_n_102,write_output_reg3_n_103,write_output_reg3_n_104,write_output_reg3_n_105}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_write_output_reg2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,read_register}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_write_output_reg2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_write_output_reg2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_write_output_reg2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_write_output_reg2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_write_output_reg2_OVERFLOW_UNCONNECTED),
        .P({NLW_write_output_reg2_P_UNCONNECTED[47:32],write_output_reg2_n_74,write_output_reg2_n_75,write_output_reg2_n_76,write_output_reg2_n_77,write_output_reg2_n_78,write_output_reg2_n_79,write_output_reg2_n_80,write_output_reg2_n_81,write_output_reg2_n_82,write_output_reg2_n_83,write_output_reg2_n_84,write_output_reg2_n_85,write_output_reg2_n_86,write_output_reg2_n_87,write_output_reg2_n_88,write_output_reg2_n_89,write_output_reg2_n_90,write_output_reg2_n_91,write_output_reg2_n_92,write_output_reg2_n_93,write_output_reg2_n_94,write_output_reg2_n_95,write_output_reg2_n_96,write_output_reg2_n_97,write_output_reg2_n_98,write_output_reg2_n_99,write_output_reg2_n_100,write_output_reg2_n_101,write_output_reg2_n_102,write_output_reg2_n_103,write_output_reg2_n_104,write_output_reg2_n_105}),
        .PATTERNBDETECT(NLW_write_output_reg2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_write_output_reg2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_write_output_reg2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_write_output_reg2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    write_output_reg3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,read_register}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_write_output_reg3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,read_register}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_write_output_reg3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_write_output_reg3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_write_output_reg3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_write_output_reg3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_write_output_reg3_OVERFLOW_UNCONNECTED),
        .P({NLW_write_output_reg3_P_UNCONNECTED[47:32],write_output_reg3_n_74,write_output_reg3_n_75,write_output_reg3_n_76,write_output_reg3_n_77,write_output_reg3_n_78,write_output_reg3_n_79,write_output_reg3_n_80,write_output_reg3_n_81,write_output_reg3_n_82,write_output_reg3_n_83,write_output_reg3_n_84,write_output_reg3_n_85,write_output_reg3_n_86,write_output_reg3_n_87,write_output_reg3_n_88,write_output_reg3_n_89,write_output_reg3_n_90,write_output_reg3_n_91,write_output_reg3_n_92,write_output_reg3_n_93,write_output_reg3_n_94,write_output_reg3_n_95,write_output_reg3_n_96,write_output_reg3_n_97,write_output_reg3_n_98,write_output_reg3_n_99,write_output_reg3_n_100,write_output_reg3_n_101,write_output_reg3_n_102,write_output_reg3_n_103,write_output_reg3_n_104,write_output_reg3_n_105}),
        .PATTERNBDETECT(NLW_write_output_reg3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_write_output_reg3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_write_output_reg3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_write_output_reg3_UNDERFLOW_UNCONNECTED));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[0]),
        .Q(write_register[0]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[10]),
        .Q(write_register[10]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[11]),
        .Q(write_register[11]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[12]),
        .Q(write_register[12]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[13]),
        .Q(write_register[13]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[14]),
        .Q(write_register[14]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[15]),
        .Q(write_register[15]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[1]),
        .Q(write_register[1]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[2]),
        .Q(write_register[2]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[3]),
        .Q(write_register[3]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[4]),
        .Q(write_register[4]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[5]),
        .Q(write_register[5]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[6]),
        .Q(write_register[6]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[7]),
        .Q(write_register[7]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[8]),
        .Q(write_register[8]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \write_register_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(write_output[9]),
        .Q(write_register[9]),
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
