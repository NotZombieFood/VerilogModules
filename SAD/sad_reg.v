`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:41 09/24/2017 
// Design Name: 
// Module Name:    sad_reg 
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
module sad_reg(
    input rst,
	 input clk,
	 input en,
	 input [31:0] sum,
	 output reg [31:0] sad
	 );

	always @ (posedge clk) begin
		if (rst) sad = 0;
		else begin
			if (en) begin
				sad = sum;
			end
		end
	end

endmodule
