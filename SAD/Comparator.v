`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:44:06 09/22/2017 
// Design Name: 
// Module Name:    Comparator 
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
module Comparator(
	input [8:0] i,
	output comp
    );
	 
	 assign comp = ( i >= 256 );


endmodule
