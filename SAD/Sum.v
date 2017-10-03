`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:49 09/24/2017 
// Design Name: 
// Module Name:    Sum 
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
module Sum(
    input rst,
	 input clk,
	 input en,
	 input [31:0] adder,
	 output reg [31:0] sum
	 );
	 
	 always @ (posedge clk) begin
		if (rst) sum = 0;
		else begin
			if (en) begin
				sum = adder;
			end
		end
	 end


endmodule
