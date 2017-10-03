`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:33 05/03/2017 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(
    input clk,
    input memwr,
    input [7:0] address,
    input [31:0] wrdata,
    output [31:0] rddata,
    output memrd
    );
	reg [7:0] memdata [63:0];
	
	always@ * (posedge clk)
		if (memwr)
			memdata[address] <= wrdata;
			
	assign rddata= memrd ?memdata[address]: 32'bz;

endmodule
