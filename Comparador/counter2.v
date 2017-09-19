`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:35:25 04/27/2017 
// Design Name: 
// Module Name:    counter2 
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
module counter2(
    input clk,
    input rst,
    input up_down,
    output reg[7:0] count
    );

	always @ (posedge clk) begin
		if (rst)
			count <= 0;
		else 
			count <= up_down ? count +1: count -1;
	end

endmodule
