`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:40 08/31/2017 
// Design Name: 
// Module Name:    Divisor_6bits 
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
module Divisor_6bits(
    input [5:0] A,
    input [5:0] B,
    input clk,
    input rst,
	 input start,
    output [5:0] Cociente,
    output [5:0] Residuo,
    output neg,
	 output [6:0] HEX_0,
	 output [6:0] HEX_1,
	 output [6:0] HEX_2
    );
	 
	 reg [7:0] a;
	 reg [7:0] b;
	 wire [7:0] cociente;
	 wire [7:0] residuo;
	 wire [7:0]display_comp;
	 reg [7:0]display;
//	 wire [7:0] a2;
//	 wire [7:0] b2;
	 
//	 assign a2 = a;
//	 assign b2 = a;
	 
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

	 assign Cociente = cociente [5:0];
	 assign Residuo = residuo [5:0];
	 assign neg = cociente[7:0];
	 
	 Divisor d1(
	 .A(a),
	 .B(b),
	 .clk(clk),
	 .rst(rst),
	 .Cociente(cociente),
	 .Residuo(residuo),
	 .start(start)
	 );
	 
	 //Twos_Complement
	 TwosComplement t1(
	 .A(cociente),
	 .B(display_comp)
	 );
	 
	 always @ * begin
		if (cociente [7] == 0 ) begin
			display = cociente;
		end
		else if (cociente [7] == 1 ) begin
			display = display_comp;
		end
	 end
	 
	 
	 //Display
	 
	 assign HEX_2[6] = ~neg;
	 assign HEX_2[5:0] = 6'b111111;
	 
	 Display dis1(
	 .SW(display),
	 .HEX_0(HEX_0),
	 .HEX_1(HEX_1)
	 );


endmodule

