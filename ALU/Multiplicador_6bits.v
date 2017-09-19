`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:15 08/28/2017 
// Design Name: 
// Module Name:    Multiplicador_6bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Multiplicador_6bits(
    input [5:0] A,
    input [5:0] B,
    input rst,
    input clk,
    output [11:0] c,
    output neg,
	 output [6:0]HEX_0,
	 output [6:0]HEX_1,
	 output [6:0] HEX_2,
	 output [6:0] HEX_3,
	 output [6:0] HEX_4
    );
	 reg [7:0] a;
	 reg [7:0] b;
	 reg [15:0] display;
	 wire [15:0] C;
	 wire [15:0] display_comp;
	 
	 always @ * begin
		if ( A[5] == 0) begin
	   a[7:6] = 0;
		end
		else if (A[5] == 1) begin
		a[7:6] = 2'b11;
		end
		a[5:0] = A;
	 end
	 
	 always @ * begin
		if ( B[5] == 0) begin
	   b[7:6] = 0;
		end
		else if (B[5] == 1) begin
		b[7:6] = 2'b11;
		end
		b[5:0] = B;
	 end
	 
	 assign c = C[11:0];
	 
	 Multiplicador M1(
	 .A(a),
	 .B(b),
	 .rst(rst),
	 .clk(clk),
	 .c(C),
	 .neg(neg)
	 );
	 
	 //Twos_Complement
	 TwosComplement t1(
	 .A(C),
	 .B(display_comp)
	 );
	 
	 always @ * begin
		if (C [15] == 0 ) begin
			display = C;
		end
		else if (C [15] == 1 ) begin
			display = display_comp;
		end
	 end
	 
	 //Display
	 
	 Display_12bits d1(
	 .SW(display),
	 .HEX_0(HEX_0),
	 .HEX_1(HEX_1),
	 .HEX_2(HEX_2),
	 .HEX_3(HEX_3)
	 );
	 
	 assign HEX_4 [6] = ~neg;
	 assign HEX_4 [5:0] = 6'b 111111;


endmodule
