`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:42 04/23/2017 
// Design Name: 
// Module Name:    Comparador1bit 
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
module Comparador1bit(
    input A,
    input B,
    input igual_i,
    input mayor_i,
    input menor_i,
    output igual_o,
    output mayor_o,
    output menor_o
    );
	 
	 assign mayor_o = (mayor_i)|( A& igual_i& ~B); 
	 assign menor_o = (menor_i)| (~A& igual_i & B);
	 assign igual_o = (igual_i)&(A~^B);


endmodule
