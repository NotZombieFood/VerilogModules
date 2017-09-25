`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:09 09/23/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input en,
	 input rst,
	 input clk,
	 output reg [8:0] i
	 );
	 
	 always @ (posedge clk) begin
		if (rst) i = 0;
		else begin
			if (en) i = i + 1;
		end
	 end
	 
	 


endmodule
