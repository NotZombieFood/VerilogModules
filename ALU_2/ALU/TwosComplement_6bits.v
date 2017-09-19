`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:57 08/31/2017 
// Design Name: 
// Module Name:    TwosComplement_6bits 
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
module TwosComplement_6bits(
    input [5:0] A,
    output [5:0] B
    );
	 
	 assign B = ~A + 1;


endmodule
