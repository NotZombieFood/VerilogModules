`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:11 08/31/2017 
// Design Name: 
// Module Name:    TwosComplement 
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
module TwosComplement(
    input [7:0] A,
    output [7:0] B
    );
	 
	 assign B = ~A + 1;


endmodule
