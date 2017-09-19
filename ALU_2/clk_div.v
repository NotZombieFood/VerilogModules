`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:17 08/31/2017 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(
    input clk,
    output clk_div
);
	 
	reg [1:0] contador = 0;
	reg clk_temp = 0;
	
	assign clk_div = clk_temp;
	
	//COUNTER
	always @(posedge clk) begin
		if (contador == 1 ) begin
		contador = 0;
		clk_temp = ~clk_temp;
		end
		else begin
		contador = contador +1;
		end
	end


endmodule
