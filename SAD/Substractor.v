`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:51 09/23/2017 
// Design Name: 
// Module Name:    Substractor 
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
module Substractor(
    input [7:0] A_data,
	 input [7:0] B_data,
	 output [7:0] substract
	 );

	assign substract = (A_data - B_data);

endmodule
