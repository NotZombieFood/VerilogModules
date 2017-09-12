`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:16:28 05/09/2017 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
    input [31:0] Adress,
    input [31:0] WriteData,
    input MemWrite,
    input MemRead,
	 input clk,
    output [31:0] ReadData
    );
	 
	 wire [31:0] read;
	 
	 assign ReadData = MemRead ? read:0;
	 
		Ram r1(
		.a(Adress[5:0]),
		.d(WriteData),
		.we(MemWrite),
		.clk(clk),
		.spo(read)
	);
	 


endmodule
