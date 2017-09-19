`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:04:16 09/01/2017 
// Design Name: 
// Module Name:    TwosComplement2 
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
module TwosComplement2(
 input [11:0] A,
 output [11:0] B
  );
	 
	 assign B = ~A + 1;


endmodule
