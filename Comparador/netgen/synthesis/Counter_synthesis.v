////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Counter_synthesis.v
// /___/   /\     Timestamp: Thu Apr 27 08:16:48 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Counter.ngc Counter_synthesis.v 
// Device	: xc3s50-5-pq208
// Input file	: Counter.ngc
// Output file	: D:\Verilog\Comparador\netgen\synthesis\Counter_synthesis.v
// # of Modules	: 1
// Design Name	: Counter
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Counter (
  clk, rst, up_down, count
);
  input clk;
  input rst;
  input up_down;
  output [7 : 0] count;
  wire N0;
  wire N1;
  wire clk_BUFGP_27;
  wire count_0_36;
  wire count_1_37;
  wire count_2_38;
  wire count_3_39;
  wire count_4_40;
  wire count_5_41;
  wire count_6_42;
  wire count_7_43;
  wire rst_IBUF_45;
  wire up_down_IBUF_47;
  wire [6 : 0] Maccum_count_cy;
  wire [7 : 0] Maccum_count_lut;
  wire [7 : 0] Result;
  wire [1 : 1] add_b;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDR   count_0 (
    .C(clk_BUFGP_27),
    .D(Result[0]),
    .R(rst_IBUF_45),
    .Q(count_0_36)
  );
  FDR   count_1 (
    .C(clk_BUFGP_27),
    .D(Result[1]),
    .R(rst_IBUF_45),
    .Q(count_1_37)
  );
  FDR   count_2 (
    .C(clk_BUFGP_27),
    .D(Result[2]),
    .R(rst_IBUF_45),
    .Q(count_2_38)
  );
  FDR   count_3 (
    .C(clk_BUFGP_27),
    .D(Result[3]),
    .R(rst_IBUF_45),
    .Q(count_3_39)
  );
  FDR   count_4 (
    .C(clk_BUFGP_27),
    .D(Result[4]),
    .R(rst_IBUF_45),
    .Q(count_4_40)
  );
  FDR   count_5 (
    .C(clk_BUFGP_27),
    .D(Result[5]),
    .R(rst_IBUF_45),
    .Q(count_5_41)
  );
  FDR   count_6 (
    .C(clk_BUFGP_27),
    .D(Result[6]),
    .R(rst_IBUF_45),
    .Q(count_6_42)
  );
  FDR   count_7 (
    .C(clk_BUFGP_27),
    .D(Result[7]),
    .R(rst_IBUF_45),
    .Q(count_7_43)
  );
  MUXCY   \Maccum_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Maccum_count_lut[0]),
    .O(Maccum_count_cy[0])
  );
  XORCY   \Maccum_count_xor<0>  (
    .CI(N0),
    .LI(Maccum_count_lut[0]),
    .O(Result[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_count_lut<1>  (
    .I0(add_b[1]),
    .I1(count_1_37),
    .O(Maccum_count_lut[1])
  );
  MUXCY   \Maccum_count_cy<1>  (
    .CI(Maccum_count_cy[0]),
    .DI(count_1_37),
    .S(Maccum_count_lut[1]),
    .O(Maccum_count_cy[1])
  );
  XORCY   \Maccum_count_xor<1>  (
    .CI(Maccum_count_cy[0]),
    .LI(Maccum_count_lut[1]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_count_lut<2>  (
    .I0(add_b[1]),
    .I1(count_2_38),
    .O(Maccum_count_lut[2])
  );
  MUXCY   \Maccum_count_cy<2>  (
    .CI(Maccum_count_cy[1]),
    .DI(count_2_38),
    .S(Maccum_count_lut[2]),
    .O(Maccum_count_cy[2])
  );
  XORCY   \Maccum_count_xor<2>  (
    .CI(Maccum_count_cy[1]),
    .LI(Maccum_count_lut[2]),
    .O(Result[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_count_lut<3>  (
    .I0(add_b[1]),
    .I1(count_3_39),
    .O(Maccum_count_lut[3])
  );
  MUXCY   \Maccum_count_cy<3>  (
    .CI(Maccum_count_cy[2]),
    .DI(count_3_39),
    .S(Maccum_count_lut[3]),
    .O(Maccum_count_cy[3])
  );
  XORCY   \Maccum_count_xor<3>  (
    .CI(Maccum_count_cy[2]),
    .LI(Maccum_count_lut[3]),
    .O(Result[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_count_lut<4>  (
    .I0(add_b[1]),
    .I1(count_4_40),
    .O(Maccum_count_lut[4])
  );
  MUXCY   \Maccum_count_cy<4>  (
    .CI(Maccum_count_cy[3]),
    .DI(count_4_40),
    .S(Maccum_count_lut[4]),
    .O(Maccum_count_cy[4])
  );
  XORCY   \Maccum_count_xor<4>  (
    .CI(Maccum_count_cy[3]),
    .LI(Maccum_count_lut[4]),
    .O(Result[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_count_lut<5>  (
    .I0(add_b[1]),
    .I1(count_5_41),
    .O(Maccum_count_lut[5])
  );
  MUXCY   \Maccum_count_cy<5>  (
    .CI(Maccum_count_cy[4]),
    .DI(count_5_41),
    .S(Maccum_count_lut[5]),
    .O(Maccum_count_cy[5])
  );
  XORCY   \Maccum_count_xor<5>  (
    .CI(Maccum_count_cy[4]),
    .LI(Maccum_count_lut[5]),
    .O(Result[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_count_lut<6>  (
    .I0(add_b[1]),
    .I1(count_6_42),
    .O(Maccum_count_lut[6])
  );
  MUXCY   \Maccum_count_cy<6>  (
    .CI(Maccum_count_cy[5]),
    .DI(count_6_42),
    .S(Maccum_count_lut[6]),
    .O(Maccum_count_cy[6])
  );
  XORCY   \Maccum_count_xor<6>  (
    .CI(Maccum_count_cy[5]),
    .LI(Maccum_count_lut[6]),
    .O(Result[6])
  );
  XORCY   \Maccum_count_xor<7>  (
    .CI(Maccum_count_cy[6]),
    .LI(Maccum_count_lut[7]),
    .O(Result[7])
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_45)
  );
  IBUF   up_down_IBUF (
    .I(up_down),
    .O(up_down_IBUF_47)
  );
  OBUF   count_7_OBUF (
    .I(count_7_43),
    .O(count[7])
  );
  OBUF   count_6_OBUF (
    .I(count_6_42),
    .O(count[6])
  );
  OBUF   count_5_OBUF (
    .I(count_5_41),
    .O(count[5])
  );
  OBUF   count_4_OBUF (
    .I(count_4_40),
    .O(count[4])
  );
  OBUF   count_3_OBUF (
    .I(count_3_39),
    .O(count[3])
  );
  OBUF   count_2_OBUF (
    .I(count_2_38),
    .O(count[2])
  );
  OBUF   count_1_OBUF (
    .I(count_1_37),
    .O(count[1])
  );
  OBUF   count_0_OBUF (
    .I(count_0_36),
    .O(count[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Maccum_count_lut<7>  (
    .I0(count_7_43),
    .I1(up_down_IBUF_47),
    .O(Maccum_count_lut[7])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_27)
  );
  INV   \Maccum_count_lut<0>_INV_0  (
    .I(count_0_36),
    .O(Maccum_count_lut[0])
  );
  INV   \add_b<1>1_INV_0  (
    .I(up_down_IBUF_47),
    .O(add_b[1])
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

