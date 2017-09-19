`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:07 08/31/2017 
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
	 input start,
    output [11:0] c,
    output neg
    );
	 reg [7:0] a;
	 reg [7:0] b;
	 wire [15:0] C;
	 
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
	 .neg(neg),
	 .start(start)
	 );


endmodule