`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:53:14 05/03/2017 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input [5:0] decode,
    output [9:0] ctrl_vector
    );
	 
	 //   [9]         [8]      [7]      [6]     [5]      (4:3]   [2]       [1]      [0]
	 //jmp,RegDst, MemtoReg, Branch, MemRead,MemtoReg AluOp, MemWrite, AluSrc, RegWrite
	 
	 
	 
	 always @ * begin
		case (decode)
			6'b000000; ctrl_vector = 10'b01_0000_0001;  //ADD
			6'b001000: ctrl_vector = 10'00_0000_0011; //ADDi
			
			default: ctrl_vector = 10'd0;
		endcase

endmodule
