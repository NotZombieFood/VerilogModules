`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:34 04/23/2017 
// Design Name: 
// Module Name:    Comparador_con_Ecuaciones 
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
module Comparador_con_Ecuaciones(
    input signed [7:0] a,
    input signed [7:0] b,
    output igual,
    output mayor,
    output menor
    );
	 
	 assign igual = ( a == b ) ? 1:0;
	 assign mayor = ( a > b ) ? 1:0;
	 assign menor = ( a < b ) ? 1:0;


endmodule
