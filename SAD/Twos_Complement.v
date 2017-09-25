`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:23 09/23/2017 
// Design Name: 
// Module Name:    Twos_Complement 
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
module Twos_Complement(
    input [7:0] A,
    output [7:0] B
    );
	 
	 assign B = ~A + 1;
endmodule
