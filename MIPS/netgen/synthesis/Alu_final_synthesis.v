////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Alu_final_synthesis.v
// /___/   /\     Timestamp: Tue May 09 17:09:32 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Alu_final.ngc Alu_final_synthesis.v 
// Device	: xc3s50-5-pq208
// Input file	: Alu_final.ngc
// Output file	: D:\Verilog\MIPS\netgen\synthesis\Alu_final_synthesis.v
// # of Modules	: 1
// Design Name	: Alu_final
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

module Alu_final (
  zero, result, funct, a, b, Alu_op
);
  output zero;
  output [31 : 0] result;
  input [5 : 0] funct;
  input [31 : 0] a;
  input [31 : 0] b;
  input [1 : 0] Alu_op;
  wire Alu_op_0_IBUF_2;
  wire Alu_op_1_IBUF_3;
  wire N0;
  wire N1;
  wire N4;
  wire N6;
  wire N70;
  wire \a1/result<0>1_137 ;
  wire \a1/result<10>1_139 ;
  wire \a1/result<11>1_141 ;
  wire \a1/result<12>1_143 ;
  wire \a1/result<13>1_145 ;
  wire \a1/result<14>1_147 ;
  wire \a1/result<15>1_149 ;
  wire \a1/result<16>1_151 ;
  wire \a1/result<17>1_153 ;
  wire \a1/result<18>1_155 ;
  wire \a1/result<19>1_157 ;
  wire \a1/result<1>1_159 ;
  wire \a1/result<20>1_161 ;
  wire \a1/result<21>1_163 ;
  wire \a1/result<22>1_165 ;
  wire \a1/result<23>1_167 ;
  wire \a1/result<24>1_169 ;
  wire \a1/result<25>1_171 ;
  wire \a1/result<26>1_173 ;
  wire \a1/result<27>1_175 ;
  wire \a1/result<28>1_177 ;
  wire \a1/result<29>1_179 ;
  wire \a1/result<2>1_181 ;
  wire \a1/result<30>1_183 ;
  wire \a1/result<31>1_185 ;
  wire \a1/result<3>1_187 ;
  wire \a1/result<4>1_189 ;
  wire \a1/result<5>1_191 ;
  wire \a1/result<6>1_193 ;
  wire \a1/result<7>1_195 ;
  wire \a1/result<8>1_197 ;
  wire \a1/result<9>1_199 ;
  wire \a1/result_mux0000 ;
  wire a_0_IBUF_280;
  wire a_10_IBUF_281;
  wire a_11_IBUF_282;
  wire a_12_IBUF_283;
  wire a_13_IBUF_284;
  wire a_14_IBUF_285;
  wire a_15_IBUF_286;
  wire a_16_IBUF_287;
  wire a_17_IBUF_288;
  wire a_18_IBUF_289;
  wire a_19_IBUF_290;
  wire a_1_IBUF_291;
  wire a_20_IBUF_292;
  wire a_21_IBUF_293;
  wire a_22_IBUF_294;
  wire a_23_IBUF_295;
  wire a_24_IBUF_296;
  wire a_25_IBUF_297;
  wire a_26_IBUF_298;
  wire a_27_IBUF_299;
  wire a_28_IBUF_300;
  wire a_29_IBUF_301;
  wire a_2_IBUF_302;
  wire a_30_IBUF_303;
  wire a_31_IBUF_304;
  wire a_3_IBUF_305;
  wire a_4_IBUF_306;
  wire a_5_IBUF_307;
  wire a_6_IBUF_308;
  wire a_7_IBUF_309;
  wire a_8_IBUF_310;
  wire a_9_IBUF_311;
  wire b_0_IBUF_344;
  wire b_10_IBUF_345;
  wire b_11_IBUF_346;
  wire b_12_IBUF_347;
  wire b_13_IBUF_348;
  wire b_14_IBUF_349;
  wire b_15_IBUF_350;
  wire b_16_IBUF_351;
  wire b_17_IBUF_352;
  wire b_18_IBUF_353;
  wire b_19_IBUF_354;
  wire b_1_IBUF_355;
  wire b_20_IBUF_356;
  wire b_21_IBUF_357;
  wire b_22_IBUF_358;
  wire b_23_IBUF_359;
  wire b_24_IBUF_360;
  wire b_25_IBUF_361;
  wire b_26_IBUF_362;
  wire b_27_IBUF_363;
  wire b_28_IBUF_364;
  wire b_29_IBUF_365;
  wire b_2_IBUF_366;
  wire b_30_IBUF_367;
  wire b_31_IBUF_368;
  wire b_3_IBUF_369;
  wire b_4_IBUF_370;
  wire b_5_IBUF_371;
  wire b_6_IBUF_372;
  wire b_7_IBUF_373;
  wire b_8_IBUF_374;
  wire b_9_IBUF_375;
  wire \c1/Mmux_ctrl_mux00003 ;
  wire \c1/Mmux_ctrl_mux000031_377 ;
  wire \c1/ctrl_not0001 ;
  wire \c1/ctrl_not000132_385 ;
  wire funct_0_IBUF_392;
  wire funct_1_IBUF_393;
  wire funct_2_IBUF_394;
  wire funct_3_IBUF_395;
  wire funct_4_IBUF_396;
  wire funct_5_IBUF_397;
  wire result_0_OBUF_430;
  wire result_10_OBUF_431;
  wire result_11_OBUF_432;
  wire result_12_OBUF_433;
  wire result_13_OBUF_434;
  wire result_14_OBUF_435;
  wire result_15_OBUF_436;
  wire result_16_OBUF_437;
  wire result_17_OBUF_438;
  wire result_18_OBUF_439;
  wire result_19_OBUF_440;
  wire result_1_OBUF_441;
  wire result_20_OBUF_442;
  wire result_21_OBUF_443;
  wire result_22_OBUF_444;
  wire result_23_OBUF_445;
  wire result_24_OBUF_446;
  wire result_25_OBUF_447;
  wire result_26_OBUF_448;
  wire result_27_OBUF_449;
  wire result_28_OBUF_450;
  wire result_29_OBUF_451;
  wire result_2_OBUF_452;
  wire result_30_OBUF_453;
  wire result_31_OBUF_454;
  wire result_3_OBUF_455;
  wire result_4_OBUF_456;
  wire result_5_OBUF_457;
  wire result_6_OBUF_458;
  wire result_7_OBUF_459;
  wire result_8_OBUF_460;
  wire result_9_OBUF_461;
  wire zero_OBUF_463;
  wire [30 : 0] \a1/Maddsub_result_addsub0000_cy ;
  wire [31 : 0] \a1/Maddsub_result_addsub0000_lut ;
  wire [31 : 0] \a1/Mcompar_result_cmp_lt0000_cy ;
  wire [31 : 0] \a1/Mcompar_result_cmp_lt0000_lut ;
  wire [31 : 0] \a1/result ;
  wire [31 : 0] \a1/result_addsub0000 ;
  wire [6 : 0] \a1/zero_wg_cy ;
  wire [7 : 0] \a1/zero_wg_lut ;
  wire [2 : 0] \c1/ctrl ;
  wire [2 : 0] \c1/ctrl_mux0000 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<31>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [30]),
    .DI(a_31_IBUF_304),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [31]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [31])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<31>  (
    .I0(a_31_IBUF_304),
    .I1(b_31_IBUF_368),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [31])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<30>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [29]),
    .DI(a_30_IBUF_303),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [30]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [30])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<30>  (
    .I0(a_30_IBUF_303),
    .I1(b_30_IBUF_367),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [30])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<29>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [28]),
    .DI(a_29_IBUF_301),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [29]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [29])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<29>  (
    .I0(a_29_IBUF_301),
    .I1(b_29_IBUF_365),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [29])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<28>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [27]),
    .DI(a_28_IBUF_300),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [28]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [28])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<28>  (
    .I0(a_28_IBUF_300),
    .I1(b_28_IBUF_364),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [28])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<27>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [26]),
    .DI(a_27_IBUF_299),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [27]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [27])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<27>  (
    .I0(a_27_IBUF_299),
    .I1(b_27_IBUF_363),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [27])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<26>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [25]),
    .DI(a_26_IBUF_298),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [26]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<26>  (
    .I0(a_26_IBUF_298),
    .I1(b_26_IBUF_362),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [26])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<25>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [24]),
    .DI(a_25_IBUF_297),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [25]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [25])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<25>  (
    .I0(a_25_IBUF_297),
    .I1(b_25_IBUF_361),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [25])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<24>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [23]),
    .DI(a_24_IBUF_296),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [24]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [24])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<24>  (
    .I0(a_24_IBUF_296),
    .I1(b_24_IBUF_360),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [24])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<23>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [22]),
    .DI(a_23_IBUF_295),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [23]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [23])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<23>  (
    .I0(a_23_IBUF_295),
    .I1(b_23_IBUF_359),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [23])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<22>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [21]),
    .DI(a_22_IBUF_294),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [22]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [22])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<22>  (
    .I0(a_22_IBUF_294),
    .I1(b_22_IBUF_358),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [22])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<21>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [20]),
    .DI(a_21_IBUF_293),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [21]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [21])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<21>  (
    .I0(a_21_IBUF_293),
    .I1(b_21_IBUF_357),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [21])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<20>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [19]),
    .DI(a_20_IBUF_292),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [20]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [20])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<20>  (
    .I0(a_20_IBUF_292),
    .I1(b_20_IBUF_356),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [20])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<19>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [18]),
    .DI(a_19_IBUF_290),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [19]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [19])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<19>  (
    .I0(a_19_IBUF_290),
    .I1(b_19_IBUF_354),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [19])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<18>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [17]),
    .DI(a_18_IBUF_289),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [18]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [18])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<18>  (
    .I0(a_18_IBUF_289),
    .I1(b_18_IBUF_353),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [18])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<17>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [16]),
    .DI(a_17_IBUF_288),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [17]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<17>  (
    .I0(a_17_IBUF_288),
    .I1(b_17_IBUF_352),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [17])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<16>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [15]),
    .DI(a_16_IBUF_287),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [16]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<16>  (
    .I0(a_16_IBUF_287),
    .I1(b_16_IBUF_351),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [16])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<15>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [14]),
    .DI(a_15_IBUF_286),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [15]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<15>  (
    .I0(a_15_IBUF_286),
    .I1(b_15_IBUF_350),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [15])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<14>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [13]),
    .DI(a_14_IBUF_285),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [14]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<14>  (
    .I0(a_14_IBUF_285),
    .I1(b_14_IBUF_349),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [14])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<13>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [12]),
    .DI(a_13_IBUF_284),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [13]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<13>  (
    .I0(a_13_IBUF_284),
    .I1(b_13_IBUF_348),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [13])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<12>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [11]),
    .DI(a_12_IBUF_283),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [12]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<12>  (
    .I0(a_12_IBUF_283),
    .I1(b_12_IBUF_347),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [12])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<11>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [10]),
    .DI(a_11_IBUF_282),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [11]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<11>  (
    .I0(a_11_IBUF_282),
    .I1(b_11_IBUF_346),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [11])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<10>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [9]),
    .DI(a_10_IBUF_281),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [10]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<10>  (
    .I0(a_10_IBUF_281),
    .I1(b_10_IBUF_345),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [10])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<9>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [8]),
    .DI(a_9_IBUF_311),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [9]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<9>  (
    .I0(a_9_IBUF_311),
    .I1(b_9_IBUF_375),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [9])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<8>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [7]),
    .DI(a_8_IBUF_310),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [8]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<8>  (
    .I0(a_8_IBUF_310),
    .I1(b_8_IBUF_374),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [8])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<7>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [6]),
    .DI(a_7_IBUF_309),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [7]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<7>  (
    .I0(a_7_IBUF_309),
    .I1(b_7_IBUF_373),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [7])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<6>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [5]),
    .DI(a_6_IBUF_308),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [6]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<6>  (
    .I0(a_6_IBUF_308),
    .I1(b_6_IBUF_372),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [6])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<5>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [4]),
    .DI(a_5_IBUF_307),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [5]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<5>  (
    .I0(a_5_IBUF_307),
    .I1(b_5_IBUF_371),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [5])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<4>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [3]),
    .DI(a_4_IBUF_306),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [4]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<4>  (
    .I0(a_4_IBUF_306),
    .I1(b_4_IBUF_370),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [4])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<3>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [2]),
    .DI(a_3_IBUF_305),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [3]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<3>  (
    .I0(a_3_IBUF_305),
    .I1(b_3_IBUF_369),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [3])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<2>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [1]),
    .DI(a_2_IBUF_302),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [2]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<2>  (
    .I0(a_2_IBUF_302),
    .I1(b_2_IBUF_366),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [2])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<1>  (
    .CI(\a1/Mcompar_result_cmp_lt0000_cy [0]),
    .DI(a_1_IBUF_291),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [1]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<1>  (
    .I0(a_1_IBUF_291),
    .I1(b_1_IBUF_355),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [1])
  );
  MUXCY   \a1/Mcompar_result_cmp_lt0000_cy<0>  (
    .CI(N1),
    .DI(a_0_IBUF_280),
    .S(\a1/Mcompar_result_cmp_lt0000_lut [0]),
    .O(\a1/Mcompar_result_cmp_lt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/Mcompar_result_cmp_lt0000_lut<0>  (
    .I0(a_0_IBUF_280),
    .I1(b_0_IBUF_344),
    .O(\a1/Mcompar_result_cmp_lt0000_lut [0])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<31>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [30]),
    .LI(\a1/Maddsub_result_addsub0000_lut [31]),
    .O(\a1/result_addsub0000 [31])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<31>  (
    .I0(a_31_IBUF_304),
    .I1(b_31_IBUF_368),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [31])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<30>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [29]),
    .LI(\a1/Maddsub_result_addsub0000_lut [30]),
    .O(\a1/result_addsub0000 [30])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<30>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [29]),
    .DI(a_30_IBUF_303),
    .S(\a1/Maddsub_result_addsub0000_lut [30]),
    .O(\a1/Maddsub_result_addsub0000_cy [30])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<30>  (
    .I0(a_30_IBUF_303),
    .I1(b_30_IBUF_367),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [30])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<29>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [28]),
    .LI(\a1/Maddsub_result_addsub0000_lut [29]),
    .O(\a1/result_addsub0000 [29])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<29>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [28]),
    .DI(a_29_IBUF_301),
    .S(\a1/Maddsub_result_addsub0000_lut [29]),
    .O(\a1/Maddsub_result_addsub0000_cy [29])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<29>  (
    .I0(a_29_IBUF_301),
    .I1(b_29_IBUF_365),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [29])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<28>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [27]),
    .LI(\a1/Maddsub_result_addsub0000_lut [28]),
    .O(\a1/result_addsub0000 [28])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<28>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [27]),
    .DI(a_28_IBUF_300),
    .S(\a1/Maddsub_result_addsub0000_lut [28]),
    .O(\a1/Maddsub_result_addsub0000_cy [28])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<28>  (
    .I0(a_28_IBUF_300),
    .I1(b_28_IBUF_364),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [28])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<27>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [26]),
    .LI(\a1/Maddsub_result_addsub0000_lut [27]),
    .O(\a1/result_addsub0000 [27])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<27>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [26]),
    .DI(a_27_IBUF_299),
    .S(\a1/Maddsub_result_addsub0000_lut [27]),
    .O(\a1/Maddsub_result_addsub0000_cy [27])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<27>  (
    .I0(a_27_IBUF_299),
    .I1(b_27_IBUF_363),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [27])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<26>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [25]),
    .LI(\a1/Maddsub_result_addsub0000_lut [26]),
    .O(\a1/result_addsub0000 [26])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<26>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [25]),
    .DI(a_26_IBUF_298),
    .S(\a1/Maddsub_result_addsub0000_lut [26]),
    .O(\a1/Maddsub_result_addsub0000_cy [26])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<26>  (
    .I0(a_26_IBUF_298),
    .I1(b_26_IBUF_362),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [26])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<25>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [24]),
    .LI(\a1/Maddsub_result_addsub0000_lut [25]),
    .O(\a1/result_addsub0000 [25])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<25>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [24]),
    .DI(a_25_IBUF_297),
    .S(\a1/Maddsub_result_addsub0000_lut [25]),
    .O(\a1/Maddsub_result_addsub0000_cy [25])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<25>  (
    .I0(a_25_IBUF_297),
    .I1(b_25_IBUF_361),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [25])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<24>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [23]),
    .LI(\a1/Maddsub_result_addsub0000_lut [24]),
    .O(\a1/result_addsub0000 [24])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<24>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [23]),
    .DI(a_24_IBUF_296),
    .S(\a1/Maddsub_result_addsub0000_lut [24]),
    .O(\a1/Maddsub_result_addsub0000_cy [24])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<24>  (
    .I0(a_24_IBUF_296),
    .I1(b_24_IBUF_360),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [24])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<23>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [22]),
    .LI(\a1/Maddsub_result_addsub0000_lut [23]),
    .O(\a1/result_addsub0000 [23])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<23>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [22]),
    .DI(a_23_IBUF_295),
    .S(\a1/Maddsub_result_addsub0000_lut [23]),
    .O(\a1/Maddsub_result_addsub0000_cy [23])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<23>  (
    .I0(a_23_IBUF_295),
    .I1(b_23_IBUF_359),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [23])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<22>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [21]),
    .LI(\a1/Maddsub_result_addsub0000_lut [22]),
    .O(\a1/result_addsub0000 [22])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<22>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [21]),
    .DI(a_22_IBUF_294),
    .S(\a1/Maddsub_result_addsub0000_lut [22]),
    .O(\a1/Maddsub_result_addsub0000_cy [22])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<22>  (
    .I0(a_22_IBUF_294),
    .I1(b_22_IBUF_358),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [22])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<21>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [20]),
    .LI(\a1/Maddsub_result_addsub0000_lut [21]),
    .O(\a1/result_addsub0000 [21])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<21>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [20]),
    .DI(a_21_IBUF_293),
    .S(\a1/Maddsub_result_addsub0000_lut [21]),
    .O(\a1/Maddsub_result_addsub0000_cy [21])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<21>  (
    .I0(a_21_IBUF_293),
    .I1(b_21_IBUF_357),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [21])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<20>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [19]),
    .LI(\a1/Maddsub_result_addsub0000_lut [20]),
    .O(\a1/result_addsub0000 [20])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<20>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [19]),
    .DI(a_20_IBUF_292),
    .S(\a1/Maddsub_result_addsub0000_lut [20]),
    .O(\a1/Maddsub_result_addsub0000_cy [20])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<20>  (
    .I0(a_20_IBUF_292),
    .I1(b_20_IBUF_356),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [20])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<19>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [18]),
    .LI(\a1/Maddsub_result_addsub0000_lut [19]),
    .O(\a1/result_addsub0000 [19])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<19>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [18]),
    .DI(a_19_IBUF_290),
    .S(\a1/Maddsub_result_addsub0000_lut [19]),
    .O(\a1/Maddsub_result_addsub0000_cy [19])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<19>  (
    .I0(a_19_IBUF_290),
    .I1(b_19_IBUF_354),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [19])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<18>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [17]),
    .LI(\a1/Maddsub_result_addsub0000_lut [18]),
    .O(\a1/result_addsub0000 [18])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<18>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [17]),
    .DI(a_18_IBUF_289),
    .S(\a1/Maddsub_result_addsub0000_lut [18]),
    .O(\a1/Maddsub_result_addsub0000_cy [18])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<18>  (
    .I0(a_18_IBUF_289),
    .I1(b_18_IBUF_353),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [18])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<17>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [16]),
    .LI(\a1/Maddsub_result_addsub0000_lut [17]),
    .O(\a1/result_addsub0000 [17])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<17>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [16]),
    .DI(a_17_IBUF_288),
    .S(\a1/Maddsub_result_addsub0000_lut [17]),
    .O(\a1/Maddsub_result_addsub0000_cy [17])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<17>  (
    .I0(a_17_IBUF_288),
    .I1(b_17_IBUF_352),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [17])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<16>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [15]),
    .LI(\a1/Maddsub_result_addsub0000_lut [16]),
    .O(\a1/result_addsub0000 [16])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<16>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [15]),
    .DI(a_16_IBUF_287),
    .S(\a1/Maddsub_result_addsub0000_lut [16]),
    .O(\a1/Maddsub_result_addsub0000_cy [16])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<16>  (
    .I0(a_16_IBUF_287),
    .I1(b_16_IBUF_351),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [16])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<15>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [14]),
    .LI(\a1/Maddsub_result_addsub0000_lut [15]),
    .O(\a1/result_addsub0000 [15])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<15>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [14]),
    .DI(a_15_IBUF_286),
    .S(\a1/Maddsub_result_addsub0000_lut [15]),
    .O(\a1/Maddsub_result_addsub0000_cy [15])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<15>  (
    .I0(a_15_IBUF_286),
    .I1(b_15_IBUF_350),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [15])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<14>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [13]),
    .LI(\a1/Maddsub_result_addsub0000_lut [14]),
    .O(\a1/result_addsub0000 [14])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<14>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [13]),
    .DI(a_14_IBUF_285),
    .S(\a1/Maddsub_result_addsub0000_lut [14]),
    .O(\a1/Maddsub_result_addsub0000_cy [14])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<14>  (
    .I0(a_14_IBUF_285),
    .I1(b_14_IBUF_349),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [14])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<13>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [12]),
    .LI(\a1/Maddsub_result_addsub0000_lut [13]),
    .O(\a1/result_addsub0000 [13])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<13>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [12]),
    .DI(a_13_IBUF_284),
    .S(\a1/Maddsub_result_addsub0000_lut [13]),
    .O(\a1/Maddsub_result_addsub0000_cy [13])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<13>  (
    .I0(a_13_IBUF_284),
    .I1(b_13_IBUF_348),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [13])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<12>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [11]),
    .LI(\a1/Maddsub_result_addsub0000_lut [12]),
    .O(\a1/result_addsub0000 [12])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<12>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [11]),
    .DI(a_12_IBUF_283),
    .S(\a1/Maddsub_result_addsub0000_lut [12]),
    .O(\a1/Maddsub_result_addsub0000_cy [12])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<12>  (
    .I0(a_12_IBUF_283),
    .I1(b_12_IBUF_347),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [12])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<11>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [10]),
    .LI(\a1/Maddsub_result_addsub0000_lut [11]),
    .O(\a1/result_addsub0000 [11])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<11>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [10]),
    .DI(a_11_IBUF_282),
    .S(\a1/Maddsub_result_addsub0000_lut [11]),
    .O(\a1/Maddsub_result_addsub0000_cy [11])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<11>  (
    .I0(a_11_IBUF_282),
    .I1(b_11_IBUF_346),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [11])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<10>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [9]),
    .LI(\a1/Maddsub_result_addsub0000_lut [10]),
    .O(\a1/result_addsub0000 [10])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<10>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [9]),
    .DI(a_10_IBUF_281),
    .S(\a1/Maddsub_result_addsub0000_lut [10]),
    .O(\a1/Maddsub_result_addsub0000_cy [10])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<10>  (
    .I0(a_10_IBUF_281),
    .I1(b_10_IBUF_345),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [10])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<9>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [8]),
    .LI(\a1/Maddsub_result_addsub0000_lut [9]),
    .O(\a1/result_addsub0000 [9])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<9>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [8]),
    .DI(a_9_IBUF_311),
    .S(\a1/Maddsub_result_addsub0000_lut [9]),
    .O(\a1/Maddsub_result_addsub0000_cy [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<9>  (
    .I0(a_9_IBUF_311),
    .I1(b_9_IBUF_375),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [9])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<8>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [7]),
    .LI(\a1/Maddsub_result_addsub0000_lut [8]),
    .O(\a1/result_addsub0000 [8])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<8>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [7]),
    .DI(a_8_IBUF_310),
    .S(\a1/Maddsub_result_addsub0000_lut [8]),
    .O(\a1/Maddsub_result_addsub0000_cy [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<8>  (
    .I0(a_8_IBUF_310),
    .I1(b_8_IBUF_374),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [8])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<7>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [6]),
    .LI(\a1/Maddsub_result_addsub0000_lut [7]),
    .O(\a1/result_addsub0000 [7])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<7>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [6]),
    .DI(a_7_IBUF_309),
    .S(\a1/Maddsub_result_addsub0000_lut [7]),
    .O(\a1/Maddsub_result_addsub0000_cy [7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<7>  (
    .I0(a_7_IBUF_309),
    .I1(b_7_IBUF_373),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [7])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<6>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [5]),
    .LI(\a1/Maddsub_result_addsub0000_lut [6]),
    .O(\a1/result_addsub0000 [6])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<6>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [5]),
    .DI(a_6_IBUF_308),
    .S(\a1/Maddsub_result_addsub0000_lut [6]),
    .O(\a1/Maddsub_result_addsub0000_cy [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<6>  (
    .I0(a_6_IBUF_308),
    .I1(b_6_IBUF_372),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [6])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<5>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [4]),
    .LI(\a1/Maddsub_result_addsub0000_lut [5]),
    .O(\a1/result_addsub0000 [5])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<5>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [4]),
    .DI(a_5_IBUF_307),
    .S(\a1/Maddsub_result_addsub0000_lut [5]),
    .O(\a1/Maddsub_result_addsub0000_cy [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<5>  (
    .I0(a_5_IBUF_307),
    .I1(b_5_IBUF_371),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [5])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<4>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [3]),
    .LI(\a1/Maddsub_result_addsub0000_lut [4]),
    .O(\a1/result_addsub0000 [4])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<4>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [3]),
    .DI(a_4_IBUF_306),
    .S(\a1/Maddsub_result_addsub0000_lut [4]),
    .O(\a1/Maddsub_result_addsub0000_cy [4])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<4>  (
    .I0(a_4_IBUF_306),
    .I1(b_4_IBUF_370),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [4])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<3>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [2]),
    .LI(\a1/Maddsub_result_addsub0000_lut [3]),
    .O(\a1/result_addsub0000 [3])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<3>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [2]),
    .DI(a_3_IBUF_305),
    .S(\a1/Maddsub_result_addsub0000_lut [3]),
    .O(\a1/Maddsub_result_addsub0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<3>  (
    .I0(a_3_IBUF_305),
    .I1(b_3_IBUF_369),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [3])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<2>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [1]),
    .LI(\a1/Maddsub_result_addsub0000_lut [2]),
    .O(\a1/result_addsub0000 [2])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<2>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [1]),
    .DI(a_2_IBUF_302),
    .S(\a1/Maddsub_result_addsub0000_lut [2]),
    .O(\a1/Maddsub_result_addsub0000_cy [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<2>  (
    .I0(a_2_IBUF_302),
    .I1(b_2_IBUF_366),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [2])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<1>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [0]),
    .LI(\a1/Maddsub_result_addsub0000_lut [1]),
    .O(\a1/result_addsub0000 [1])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<1>  (
    .CI(\a1/Maddsub_result_addsub0000_cy [0]),
    .DI(a_1_IBUF_291),
    .S(\a1/Maddsub_result_addsub0000_lut [1]),
    .O(\a1/Maddsub_result_addsub0000_cy [1])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<1>  (
    .I0(a_1_IBUF_291),
    .I1(b_1_IBUF_355),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [1])
  );
  XORCY   \a1/Maddsub_result_addsub0000_xor<0>  (
    .CI(\a1/result_mux0000 ),
    .LI(\a1/Maddsub_result_addsub0000_lut [0]),
    .O(\a1/result_addsub0000 [0])
  );
  MUXCY   \a1/Maddsub_result_addsub0000_cy<0>  (
    .CI(\a1/result_mux0000 ),
    .DI(a_0_IBUF_280),
    .S(\a1/Maddsub_result_addsub0000_lut [0]),
    .O(\a1/Maddsub_result_addsub0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \a1/Maddsub_result_addsub0000_lut<0>  (
    .I0(a_0_IBUF_280),
    .I1(b_0_IBUF_344),
    .I2(\a1/result_mux0000 ),
    .O(\a1/Maddsub_result_addsub0000_lut [0])
  );
  LD   \c1/ctrl_2  (
    .D(\c1/ctrl_mux0000 [2]),
    .G(\c1/ctrl_not0001 ),
    .Q(\c1/ctrl [2])
  );
  LD   \c1/ctrl_1  (
    .D(\c1/ctrl_mux0000 [1]),
    .G(\c1/ctrl_not0001 ),
    .Q(\c1/ctrl [1])
  );
  LD   \c1/ctrl_0  (
    .D(\c1/ctrl_mux0000 [0]),
    .G(\c1/ctrl_not0001 ),
    .Q(\c1/ctrl [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<0>  (
    .I0(result_24_OBUF_446),
    .I1(result_23_OBUF_445),
    .I2(result_25_OBUF_447),
    .I3(result_22_OBUF_444),
    .O(\a1/zero_wg_lut [0])
  );
  MUXCY   \a1/zero_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\a1/zero_wg_lut [0]),
    .O(\a1/zero_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<1>  (
    .I0(result_21_OBUF_443),
    .I1(result_20_OBUF_442),
    .I2(result_26_OBUF_448),
    .I3(result_19_OBUF_440),
    .O(\a1/zero_wg_lut [1])
  );
  MUXCY   \a1/zero_wg_cy<1>  (
    .CI(\a1/zero_wg_cy [0]),
    .DI(N0),
    .S(\a1/zero_wg_lut [1]),
    .O(\a1/zero_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<2>  (
    .I0(result_18_OBUF_439),
    .I1(result_17_OBUF_438),
    .I2(result_0_OBUF_430),
    .I3(result_16_OBUF_437),
    .O(\a1/zero_wg_lut [2])
  );
  MUXCY   \a1/zero_wg_cy<2>  (
    .CI(\a1/zero_wg_cy [1]),
    .DI(N0),
    .S(\a1/zero_wg_lut [2]),
    .O(\a1/zero_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<3>  (
    .I0(result_15_OBUF_436),
    .I1(result_14_OBUF_435),
    .I2(result_27_OBUF_449),
    .I3(result_13_OBUF_434),
    .O(\a1/zero_wg_lut [3])
  );
  MUXCY   \a1/zero_wg_cy<3>  (
    .CI(\a1/zero_wg_cy [2]),
    .DI(N0),
    .S(\a1/zero_wg_lut [3]),
    .O(\a1/zero_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<4>  (
    .I0(result_12_OBUF_433),
    .I1(result_11_OBUF_432),
    .I2(result_28_OBUF_450),
    .I3(result_10_OBUF_431),
    .O(\a1/zero_wg_lut [4])
  );
  MUXCY   \a1/zero_wg_cy<4>  (
    .CI(\a1/zero_wg_cy [3]),
    .DI(N0),
    .S(\a1/zero_wg_lut [4]),
    .O(\a1/zero_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<5>  (
    .I0(result_9_OBUF_461),
    .I1(result_8_OBUF_460),
    .I2(result_29_OBUF_451),
    .I3(result_7_OBUF_459),
    .O(\a1/zero_wg_lut [5])
  );
  MUXCY   \a1/zero_wg_cy<5>  (
    .CI(\a1/zero_wg_cy [4]),
    .DI(N0),
    .S(\a1/zero_wg_lut [5]),
    .O(\a1/zero_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<6>  (
    .I0(result_6_OBUF_458),
    .I1(result_5_OBUF_457),
    .I2(result_30_OBUF_453),
    .I3(result_4_OBUF_456),
    .O(\a1/zero_wg_lut [6])
  );
  MUXCY   \a1/zero_wg_cy<6>  (
    .CI(\a1/zero_wg_cy [5]),
    .DI(N0),
    .S(\a1/zero_wg_lut [6]),
    .O(\a1/zero_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/zero_wg_lut<7>  (
    .I0(result_3_OBUF_455),
    .I1(result_2_OBUF_452),
    .I2(result_31_OBUF_454),
    .I3(result_1_OBUF_441),
    .O(\a1/zero_wg_lut [7])
  );
  MUXCY   \a1/zero_wg_cy<7>  (
    .CI(\a1/zero_wg_cy [6]),
    .DI(N0),
    .S(\a1/zero_wg_lut [7]),
    .O(zero_OBUF_463)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c1/ctrl_not000132  (
    .I0(funct_5_IBUF_397),
    .I1(funct_4_IBUF_396),
    .O(\c1/ctrl_not000132_385 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \c1/Mmux_ctrl_mux00002_SW0  (
    .I0(funct_2_IBUF_394),
    .I1(funct_0_IBUF_392),
    .I2(Alu_op_0_IBUF_2),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h31FF ))
  \c1/Mmux_ctrl_mux00002  (
    .I0(funct_3_IBUF_395),
    .I1(N4),
    .I2(funct_1_IBUF_393),
    .I3(Alu_op_1_IBUF_3),
    .O(\c1/ctrl_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hEFF7 ))
  \c1/Mmux_ctrl_mux00001_SW0  (
    .I0(funct_0_IBUF_392),
    .I1(funct_2_IBUF_394),
    .I2(funct_1_IBUF_393),
    .I3(funct_3_IBUF_395),
    .O(N6)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \c1/Mmux_ctrl_mux00001  (
    .I0(Alu_op_0_IBUF_2),
    .I1(Alu_op_1_IBUF_3),
    .I2(N6),
    .O(\c1/ctrl_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<0>2  (
    .I0(a_0_IBUF_280),
    .I1(\c1/ctrl [0]),
    .I2(\c1/ctrl [2]),
    .I3(b_0_IBUF_344),
    .O(\a1/result<0>1_137 )
  );
  MUXF5   \a1/result<0>_f5  (
    .I0(\a1/result<0>1_137 ),
    .I1(\a1/result [0]),
    .S(\c1/ctrl [1]),
    .O(result_0_OBUF_430)
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \a1/result_mux00002  (
    .I0(\c1/ctrl [0]),
    .I1(\c1/ctrl [2]),
    .I2(\c1/ctrl [1]),
    .O(\a1/result_mux0000 )
  );
  IBUF   funct_5_IBUF (
    .I(funct[5]),
    .O(funct_5_IBUF_397)
  );
  IBUF   funct_4_IBUF (
    .I(funct[4]),
    .O(funct_4_IBUF_396)
  );
  IBUF   funct_3_IBUF (
    .I(funct[3]),
    .O(funct_3_IBUF_395)
  );
  IBUF   funct_2_IBUF (
    .I(funct[2]),
    .O(funct_2_IBUF_394)
  );
  IBUF   funct_1_IBUF (
    .I(funct[1]),
    .O(funct_1_IBUF_393)
  );
  IBUF   funct_0_IBUF (
    .I(funct[0]),
    .O(funct_0_IBUF_392)
  );
  IBUF   a_31_IBUF (
    .I(a[31]),
    .O(a_31_IBUF_304)
  );
  IBUF   a_30_IBUF (
    .I(a[30]),
    .O(a_30_IBUF_303)
  );
  IBUF   a_29_IBUF (
    .I(a[29]),
    .O(a_29_IBUF_301)
  );
  IBUF   a_28_IBUF (
    .I(a[28]),
    .O(a_28_IBUF_300)
  );
  IBUF   a_27_IBUF (
    .I(a[27]),
    .O(a_27_IBUF_299)
  );
  IBUF   a_26_IBUF (
    .I(a[26]),
    .O(a_26_IBUF_298)
  );
  IBUF   a_25_IBUF (
    .I(a[25]),
    .O(a_25_IBUF_297)
  );
  IBUF   a_24_IBUF (
    .I(a[24]),
    .O(a_24_IBUF_296)
  );
  IBUF   a_23_IBUF (
    .I(a[23]),
    .O(a_23_IBUF_295)
  );
  IBUF   a_22_IBUF (
    .I(a[22]),
    .O(a_22_IBUF_294)
  );
  IBUF   a_21_IBUF (
    .I(a[21]),
    .O(a_21_IBUF_293)
  );
  IBUF   a_20_IBUF (
    .I(a[20]),
    .O(a_20_IBUF_292)
  );
  IBUF   a_19_IBUF (
    .I(a[19]),
    .O(a_19_IBUF_290)
  );
  IBUF   a_18_IBUF (
    .I(a[18]),
    .O(a_18_IBUF_289)
  );
  IBUF   a_17_IBUF (
    .I(a[17]),
    .O(a_17_IBUF_288)
  );
  IBUF   a_16_IBUF (
    .I(a[16]),
    .O(a_16_IBUF_287)
  );
  IBUF   a_15_IBUF (
    .I(a[15]),
    .O(a_15_IBUF_286)
  );
  IBUF   a_14_IBUF (
    .I(a[14]),
    .O(a_14_IBUF_285)
  );
  IBUF   a_13_IBUF (
    .I(a[13]),
    .O(a_13_IBUF_284)
  );
  IBUF   a_12_IBUF (
    .I(a[12]),
    .O(a_12_IBUF_283)
  );
  IBUF   a_11_IBUF (
    .I(a[11]),
    .O(a_11_IBUF_282)
  );
  IBUF   a_10_IBUF (
    .I(a[10]),
    .O(a_10_IBUF_281)
  );
  IBUF   a_9_IBUF (
    .I(a[9]),
    .O(a_9_IBUF_311)
  );
  IBUF   a_8_IBUF (
    .I(a[8]),
    .O(a_8_IBUF_310)
  );
  IBUF   a_7_IBUF (
    .I(a[7]),
    .O(a_7_IBUF_309)
  );
  IBUF   a_6_IBUF (
    .I(a[6]),
    .O(a_6_IBUF_308)
  );
  IBUF   a_5_IBUF (
    .I(a[5]),
    .O(a_5_IBUF_307)
  );
  IBUF   a_4_IBUF (
    .I(a[4]),
    .O(a_4_IBUF_306)
  );
  IBUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_305)
  );
  IBUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_302)
  );
  IBUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_291)
  );
  IBUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_280)
  );
  IBUF   b_31_IBUF (
    .I(b[31]),
    .O(b_31_IBUF_368)
  );
  IBUF   b_30_IBUF (
    .I(b[30]),
    .O(b_30_IBUF_367)
  );
  IBUF   b_29_IBUF (
    .I(b[29]),
    .O(b_29_IBUF_365)
  );
  IBUF   b_28_IBUF (
    .I(b[28]),
    .O(b_28_IBUF_364)
  );
  IBUF   b_27_IBUF (
    .I(b[27]),
    .O(b_27_IBUF_363)
  );
  IBUF   b_26_IBUF (
    .I(b[26]),
    .O(b_26_IBUF_362)
  );
  IBUF   b_25_IBUF (
    .I(b[25]),
    .O(b_25_IBUF_361)
  );
  IBUF   b_24_IBUF (
    .I(b[24]),
    .O(b_24_IBUF_360)
  );
  IBUF   b_23_IBUF (
    .I(b[23]),
    .O(b_23_IBUF_359)
  );
  IBUF   b_22_IBUF (
    .I(b[22]),
    .O(b_22_IBUF_358)
  );
  IBUF   b_21_IBUF (
    .I(b[21]),
    .O(b_21_IBUF_357)
  );
  IBUF   b_20_IBUF (
    .I(b[20]),
    .O(b_20_IBUF_356)
  );
  IBUF   b_19_IBUF (
    .I(b[19]),
    .O(b_19_IBUF_354)
  );
  IBUF   b_18_IBUF (
    .I(b[18]),
    .O(b_18_IBUF_353)
  );
  IBUF   b_17_IBUF (
    .I(b[17]),
    .O(b_17_IBUF_352)
  );
  IBUF   b_16_IBUF (
    .I(b[16]),
    .O(b_16_IBUF_351)
  );
  IBUF   b_15_IBUF (
    .I(b[15]),
    .O(b_15_IBUF_350)
  );
  IBUF   b_14_IBUF (
    .I(b[14]),
    .O(b_14_IBUF_349)
  );
  IBUF   b_13_IBUF (
    .I(b[13]),
    .O(b_13_IBUF_348)
  );
  IBUF   b_12_IBUF (
    .I(b[12]),
    .O(b_12_IBUF_347)
  );
  IBUF   b_11_IBUF (
    .I(b[11]),
    .O(b_11_IBUF_346)
  );
  IBUF   b_10_IBUF (
    .I(b[10]),
    .O(b_10_IBUF_345)
  );
  IBUF   b_9_IBUF (
    .I(b[9]),
    .O(b_9_IBUF_375)
  );
  IBUF   b_8_IBUF (
    .I(b[8]),
    .O(b_8_IBUF_374)
  );
  IBUF   b_7_IBUF (
    .I(b[7]),
    .O(b_7_IBUF_373)
  );
  IBUF   b_6_IBUF (
    .I(b[6]),
    .O(b_6_IBUF_372)
  );
  IBUF   b_5_IBUF (
    .I(b[5]),
    .O(b_5_IBUF_371)
  );
  IBUF   b_4_IBUF (
    .I(b[4]),
    .O(b_4_IBUF_370)
  );
  IBUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_369)
  );
  IBUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_366)
  );
  IBUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_355)
  );
  IBUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_344)
  );
  IBUF   Alu_op_1_IBUF (
    .I(Alu_op[1]),
    .O(Alu_op_1_IBUF_3)
  );
  IBUF   Alu_op_0_IBUF (
    .I(Alu_op[0]),
    .O(Alu_op_0_IBUF_2)
  );
  OBUF   zero_OBUF (
    .I(zero_OBUF_463),
    .O(zero)
  );
  OBUF   result_31_OBUF (
    .I(result_31_OBUF_454),
    .O(result[31])
  );
  OBUF   result_30_OBUF (
    .I(result_30_OBUF_453),
    .O(result[30])
  );
  OBUF   result_29_OBUF (
    .I(result_29_OBUF_451),
    .O(result[29])
  );
  OBUF   result_28_OBUF (
    .I(result_28_OBUF_450),
    .O(result[28])
  );
  OBUF   result_27_OBUF (
    .I(result_27_OBUF_449),
    .O(result[27])
  );
  OBUF   result_26_OBUF (
    .I(result_26_OBUF_448),
    .O(result[26])
  );
  OBUF   result_25_OBUF (
    .I(result_25_OBUF_447),
    .O(result[25])
  );
  OBUF   result_24_OBUF (
    .I(result_24_OBUF_446),
    .O(result[24])
  );
  OBUF   result_23_OBUF (
    .I(result_23_OBUF_445),
    .O(result[23])
  );
  OBUF   result_22_OBUF (
    .I(result_22_OBUF_444),
    .O(result[22])
  );
  OBUF   result_21_OBUF (
    .I(result_21_OBUF_443),
    .O(result[21])
  );
  OBUF   result_20_OBUF (
    .I(result_20_OBUF_442),
    .O(result[20])
  );
  OBUF   result_19_OBUF (
    .I(result_19_OBUF_440),
    .O(result[19])
  );
  OBUF   result_18_OBUF (
    .I(result_18_OBUF_439),
    .O(result[18])
  );
  OBUF   result_17_OBUF (
    .I(result_17_OBUF_438),
    .O(result[17])
  );
  OBUF   result_16_OBUF (
    .I(result_16_OBUF_437),
    .O(result[16])
  );
  OBUF   result_15_OBUF (
    .I(result_15_OBUF_436),
    .O(result[15])
  );
  OBUF   result_14_OBUF (
    .I(result_14_OBUF_435),
    .O(result[14])
  );
  OBUF   result_13_OBUF (
    .I(result_13_OBUF_434),
    .O(result[13])
  );
  OBUF   result_12_OBUF (
    .I(result_12_OBUF_433),
    .O(result[12])
  );
  OBUF   result_11_OBUF (
    .I(result_11_OBUF_432),
    .O(result[11])
  );
  OBUF   result_10_OBUF (
    .I(result_10_OBUF_431),
    .O(result[10])
  );
  OBUF   result_9_OBUF (
    .I(result_9_OBUF_461),
    .O(result[9])
  );
  OBUF   result_8_OBUF (
    .I(result_8_OBUF_460),
    .O(result[8])
  );
  OBUF   result_7_OBUF (
    .I(result_7_OBUF_459),
    .O(result[7])
  );
  OBUF   result_6_OBUF (
    .I(result_6_OBUF_458),
    .O(result[6])
  );
  OBUF   result_5_OBUF (
    .I(result_5_OBUF_457),
    .O(result[5])
  );
  OBUF   result_4_OBUF (
    .I(result_4_OBUF_456),
    .O(result[4])
  );
  OBUF   result_3_OBUF (
    .I(result_3_OBUF_455),
    .O(result[3])
  );
  OBUF   result_2_OBUF (
    .I(result_2_OBUF_452),
    .O(result[2])
  );
  OBUF   result_1_OBUF (
    .I(result_1_OBUF_441),
    .O(result[1])
  );
  OBUF   result_0_OBUF (
    .I(result_0_OBUF_430),
    .O(result[0])
  );
  LUT4 #(
    .INIT ( 16'hFDB8 ))
  \c1/ctrl_not000150_SW0  (
    .I0(funct_1_IBUF_393),
    .I1(funct_2_IBUF_394),
    .I2(funct_0_IBUF_392),
    .I3(funct_3_IBUF_395),
    .O(N70)
  );
  LUT4 #(
    .INIT ( 16'hFF5D ))
  \c1/ctrl_not000150  (
    .I0(Alu_op_1_IBUF_3),
    .I1(\c1/ctrl_not000132_385 ),
    .I2(N70),
    .I3(Alu_op_0_IBUF_2),
    .O(\c1/ctrl_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \a1/result<0>1  (
    .I0(\c1/ctrl [0]),
    .I1(\a1/Mcompar_result_cmp_lt0000_cy [31]),
    .I2(\c1/ctrl [2]),
    .I3(\a1/result_addsub0000 [0]),
    .O(\a1/result [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c1/Mmux_ctrl_mux000031  (
    .I0(Alu_op_0_IBUF_2),
    .I1(Alu_op_1_IBUF_3),
    .O(\c1/Mmux_ctrl_mux00003 )
  );
  LUT4 #(
    .INIT ( 16'h4464 ))
  \c1/Mmux_ctrl_mux000032  (
    .I0(Alu_op_1_IBUF_3),
    .I1(Alu_op_0_IBUF_2),
    .I2(funct_1_IBUF_393),
    .I3(funct_0_IBUF_392),
    .O(\c1/Mmux_ctrl_mux000031_377 )
  );
  MUXF5   \c1/Mmux_ctrl_mux00003_f5  (
    .I0(\c1/Mmux_ctrl_mux000031_377 ),
    .I1(\c1/Mmux_ctrl_mux00003 ),
    .S(funct_2_IBUF_394),
    .O(\c1/ctrl_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<1>1  (
    .I0(\a1/result_addsub0000 [1]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [1])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<1>2  (
    .I0(b_1_IBUF_355),
    .I1(a_1_IBUF_291),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<1>1_159 )
  );
  MUXF5   \a1/result<1>_f5  (
    .I0(\a1/result<1>1_159 ),
    .I1(\a1/result [1]),
    .S(\c1/ctrl [1]),
    .O(result_1_OBUF_441)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<2>1  (
    .I0(\a1/result_addsub0000 [2]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [2])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<2>2  (
    .I0(b_2_IBUF_366),
    .I1(a_2_IBUF_302),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<2>1_181 )
  );
  MUXF5   \a1/result<2>_f5  (
    .I0(\a1/result<2>1_181 ),
    .I1(\a1/result [2]),
    .S(\c1/ctrl [1]),
    .O(result_2_OBUF_452)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<4>1  (
    .I0(\a1/result_addsub0000 [4]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [4])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<4>2  (
    .I0(b_4_IBUF_370),
    .I1(a_4_IBUF_306),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<4>1_189 )
  );
  MUXF5   \a1/result<4>_f5  (
    .I0(\a1/result<4>1_189 ),
    .I1(\a1/result [4]),
    .S(\c1/ctrl [1]),
    .O(result_4_OBUF_456)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<3>1  (
    .I0(\a1/result_addsub0000 [3]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [3])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<3>2  (
    .I0(b_3_IBUF_369),
    .I1(a_3_IBUF_305),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<3>1_187 )
  );
  MUXF5   \a1/result<3>_f5  (
    .I0(\a1/result<3>1_187 ),
    .I1(\a1/result [3]),
    .S(\c1/ctrl [1]),
    .O(result_3_OBUF_455)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<5>1  (
    .I0(\a1/result_addsub0000 [5]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [5])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<5>2  (
    .I0(b_5_IBUF_371),
    .I1(a_5_IBUF_307),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<5>1_191 )
  );
  MUXF5   \a1/result<5>_f5  (
    .I0(\a1/result<5>1_191 ),
    .I1(\a1/result [5]),
    .S(\c1/ctrl [1]),
    .O(result_5_OBUF_457)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<7>1  (
    .I0(\a1/result_addsub0000 [7]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [7])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<7>2  (
    .I0(b_7_IBUF_373),
    .I1(a_7_IBUF_309),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<7>1_195 )
  );
  MUXF5   \a1/result<7>_f5  (
    .I0(\a1/result<7>1_195 ),
    .I1(\a1/result [7]),
    .S(\c1/ctrl [1]),
    .O(result_7_OBUF_459)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<6>1  (
    .I0(\a1/result_addsub0000 [6]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [6])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<6>2  (
    .I0(b_6_IBUF_372),
    .I1(a_6_IBUF_308),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<6>1_193 )
  );
  MUXF5   \a1/result<6>_f5  (
    .I0(\a1/result<6>1_193 ),
    .I1(\a1/result [6]),
    .S(\c1/ctrl [1]),
    .O(result_6_OBUF_458)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<8>1  (
    .I0(\a1/result_addsub0000 [8]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [8])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<8>2  (
    .I0(b_8_IBUF_374),
    .I1(a_8_IBUF_310),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<8>1_197 )
  );
  MUXF5   \a1/result<8>_f5  (
    .I0(\a1/result<8>1_197 ),
    .I1(\a1/result [8]),
    .S(\c1/ctrl [1]),
    .O(result_8_OBUF_460)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<10>1  (
    .I0(\a1/result_addsub0000 [10]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [10])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<10>2  (
    .I0(b_10_IBUF_345),
    .I1(a_10_IBUF_281),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<10>1_139 )
  );
  MUXF5   \a1/result<10>_f5  (
    .I0(\a1/result<10>1_139 ),
    .I1(\a1/result [10]),
    .S(\c1/ctrl [1]),
    .O(result_10_OBUF_431)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<9>1  (
    .I0(\a1/result_addsub0000 [9]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [9])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<9>2  (
    .I0(b_9_IBUF_375),
    .I1(a_9_IBUF_311),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<9>1_199 )
  );
  MUXF5   \a1/result<9>_f5  (
    .I0(\a1/result<9>1_199 ),
    .I1(\a1/result [9]),
    .S(\c1/ctrl [1]),
    .O(result_9_OBUF_461)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<11>1  (
    .I0(\a1/result_addsub0000 [11]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [11])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<11>2  (
    .I0(b_11_IBUF_346),
    .I1(a_11_IBUF_282),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<11>1_141 )
  );
  MUXF5   \a1/result<11>_f5  (
    .I0(\a1/result<11>1_141 ),
    .I1(\a1/result [11]),
    .S(\c1/ctrl [1]),
    .O(result_11_OBUF_432)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<13>1  (
    .I0(\a1/result_addsub0000 [13]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [13])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<13>2  (
    .I0(b_13_IBUF_348),
    .I1(a_13_IBUF_284),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<13>1_145 )
  );
  MUXF5   \a1/result<13>_f5  (
    .I0(\a1/result<13>1_145 ),
    .I1(\a1/result [13]),
    .S(\c1/ctrl [1]),
    .O(result_13_OBUF_434)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<12>1  (
    .I0(\a1/result_addsub0000 [12]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [12])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<12>2  (
    .I0(b_12_IBUF_347),
    .I1(a_12_IBUF_283),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<12>1_143 )
  );
  MUXF5   \a1/result<12>_f5  (
    .I0(\a1/result<12>1_143 ),
    .I1(\a1/result [12]),
    .S(\c1/ctrl [1]),
    .O(result_12_OBUF_433)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<14>1  (
    .I0(\a1/result_addsub0000 [14]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [14])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<14>2  (
    .I0(b_14_IBUF_349),
    .I1(a_14_IBUF_285),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<14>1_147 )
  );
  MUXF5   \a1/result<14>_f5  (
    .I0(\a1/result<14>1_147 ),
    .I1(\a1/result [14]),
    .S(\c1/ctrl [1]),
    .O(result_14_OBUF_435)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<16>1  (
    .I0(\a1/result_addsub0000 [16]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [16])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<16>2  (
    .I0(b_16_IBUF_351),
    .I1(a_16_IBUF_287),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<16>1_151 )
  );
  MUXF5   \a1/result<16>_f5  (
    .I0(\a1/result<16>1_151 ),
    .I1(\a1/result [16]),
    .S(\c1/ctrl [1]),
    .O(result_16_OBUF_437)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<15>1  (
    .I0(\a1/result_addsub0000 [15]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [15])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<15>2  (
    .I0(b_15_IBUF_350),
    .I1(a_15_IBUF_286),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<15>1_149 )
  );
  MUXF5   \a1/result<15>_f5  (
    .I0(\a1/result<15>1_149 ),
    .I1(\a1/result [15]),
    .S(\c1/ctrl [1]),
    .O(result_15_OBUF_436)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<17>1  (
    .I0(\a1/result_addsub0000 [17]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [17])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<17>2  (
    .I0(b_17_IBUF_352),
    .I1(a_17_IBUF_288),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<17>1_153 )
  );
  MUXF5   \a1/result<17>_f5  (
    .I0(\a1/result<17>1_153 ),
    .I1(\a1/result [17]),
    .S(\c1/ctrl [1]),
    .O(result_17_OBUF_438)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<19>1  (
    .I0(\a1/result_addsub0000 [19]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [19])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<19>2  (
    .I0(b_19_IBUF_354),
    .I1(a_19_IBUF_290),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<19>1_157 )
  );
  MUXF5   \a1/result<19>_f5  (
    .I0(\a1/result<19>1_157 ),
    .I1(\a1/result [19]),
    .S(\c1/ctrl [1]),
    .O(result_19_OBUF_440)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<18>1  (
    .I0(\a1/result_addsub0000 [18]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [18])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<18>2  (
    .I0(b_18_IBUF_353),
    .I1(a_18_IBUF_289),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<18>1_155 )
  );
  MUXF5   \a1/result<18>_f5  (
    .I0(\a1/result<18>1_155 ),
    .I1(\a1/result [18]),
    .S(\c1/ctrl [1]),
    .O(result_18_OBUF_439)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<20>1  (
    .I0(\a1/result_addsub0000 [20]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [20])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<20>2  (
    .I0(b_20_IBUF_356),
    .I1(a_20_IBUF_292),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<20>1_161 )
  );
  MUXF5   \a1/result<20>_f5  (
    .I0(\a1/result<20>1_161 ),
    .I1(\a1/result [20]),
    .S(\c1/ctrl [1]),
    .O(result_20_OBUF_442)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<22>1  (
    .I0(\a1/result_addsub0000 [22]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [22])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<22>2  (
    .I0(b_22_IBUF_358),
    .I1(a_22_IBUF_294),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<22>1_165 )
  );
  MUXF5   \a1/result<22>_f5  (
    .I0(\a1/result<22>1_165 ),
    .I1(\a1/result [22]),
    .S(\c1/ctrl [1]),
    .O(result_22_OBUF_444)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<31>1  (
    .I0(\a1/result_addsub0000 [31]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [31])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<31>2  (
    .I0(b_31_IBUF_368),
    .I1(a_31_IBUF_304),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<31>1_185 )
  );
  MUXF5   \a1/result<31>_f5  (
    .I0(\a1/result<31>1_185 ),
    .I1(\a1/result [31]),
    .S(\c1/ctrl [1]),
    .O(result_31_OBUF_454)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<30>1  (
    .I0(\a1/result_addsub0000 [30]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [30])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<30>2  (
    .I0(b_30_IBUF_367),
    .I1(a_30_IBUF_303),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<30>1_183 )
  );
  MUXF5   \a1/result<30>_f5  (
    .I0(\a1/result<30>1_183 ),
    .I1(\a1/result [30]),
    .S(\c1/ctrl [1]),
    .O(result_30_OBUF_453)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<29>1  (
    .I0(\a1/result_addsub0000 [29]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [29])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<29>2  (
    .I0(b_29_IBUF_365),
    .I1(a_29_IBUF_301),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<29>1_179 )
  );
  MUXF5   \a1/result<29>_f5  (
    .I0(\a1/result<29>1_179 ),
    .I1(\a1/result [29]),
    .S(\c1/ctrl [1]),
    .O(result_29_OBUF_451)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<28>1  (
    .I0(\a1/result_addsub0000 [28]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [28])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<28>2  (
    .I0(b_28_IBUF_364),
    .I1(a_28_IBUF_300),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<28>1_177 )
  );
  MUXF5   \a1/result<28>_f5  (
    .I0(\a1/result<28>1_177 ),
    .I1(\a1/result [28]),
    .S(\c1/ctrl [1]),
    .O(result_28_OBUF_450)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<27>1  (
    .I0(\a1/result_addsub0000 [27]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [27])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<27>2  (
    .I0(b_27_IBUF_363),
    .I1(a_27_IBUF_299),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<27>1_175 )
  );
  MUXF5   \a1/result<27>_f5  (
    .I0(\a1/result<27>1_175 ),
    .I1(\a1/result [27]),
    .S(\c1/ctrl [1]),
    .O(result_27_OBUF_449)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<21>1  (
    .I0(\a1/result_addsub0000 [21]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [21])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<21>2  (
    .I0(b_21_IBUF_357),
    .I1(a_21_IBUF_293),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<21>1_163 )
  );
  MUXF5   \a1/result<21>_f5  (
    .I0(\a1/result<21>1_163 ),
    .I1(\a1/result [21]),
    .S(\c1/ctrl [1]),
    .O(result_21_OBUF_443)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<26>1  (
    .I0(\a1/result_addsub0000 [26]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [26])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<26>2  (
    .I0(b_26_IBUF_362),
    .I1(a_26_IBUF_298),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<26>1_173 )
  );
  MUXF5   \a1/result<26>_f5  (
    .I0(\a1/result<26>1_173 ),
    .I1(\a1/result [26]),
    .S(\c1/ctrl [1]),
    .O(result_26_OBUF_448)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<25>1  (
    .I0(\a1/result_addsub0000 [25]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [25])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<25>2  (
    .I0(b_25_IBUF_361),
    .I1(a_25_IBUF_297),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<25>1_171 )
  );
  MUXF5   \a1/result<25>_f5  (
    .I0(\a1/result<25>1_171 ),
    .I1(\a1/result [25]),
    .S(\c1/ctrl [1]),
    .O(result_25_OBUF_447)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<23>1  (
    .I0(\a1/result_addsub0000 [23]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [23])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<23>2  (
    .I0(b_23_IBUF_359),
    .I1(a_23_IBUF_295),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<23>1_167 )
  );
  MUXF5   \a1/result<23>_f5  (
    .I0(\a1/result<23>1_167 ),
    .I1(\a1/result [23]),
    .S(\c1/ctrl [1]),
    .O(result_23_OBUF_445)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \a1/result<24>1  (
    .I0(\a1/result_addsub0000 [24]),
    .I1(\c1/ctrl [0]),
    .O(\a1/result [24])
  );
  LUT4 #(
    .INIT ( 16'h0E08 ))
  \a1/result<24>2  (
    .I0(b_24_IBUF_360),
    .I1(a_24_IBUF_296),
    .I2(\c1/ctrl [2]),
    .I3(\c1/ctrl [0]),
    .O(\a1/result<24>1_169 )
  );
  MUXF5   \a1/result<24>_f5  (
    .I0(\a1/result<24>1_169 ),
    .I1(\a1/result [24]),
    .S(\c1/ctrl [1]),
    .O(result_24_OBUF_446)
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

