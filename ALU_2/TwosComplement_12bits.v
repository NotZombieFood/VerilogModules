`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:19:29 09/01/2017 
// Design Name: 
// Module Name:    TwosComplement_12bits 
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
module TwosComplement_12bits(
    input [15:0] A,
    output [15:0] B
    );
	 
	 assign B = ~A + 1;


endmodule
