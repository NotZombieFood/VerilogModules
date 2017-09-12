`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:15 05/09/2017 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory(
    input [31:0] ReadAdress,
    output RegDst,
    output Branch,
    output MemRead,
    output MemtoReg,
    output [1:0] Alu_op,
    output MemWrite,
    output AluSrc,
    output RegWrite,
    output J,
    output [4:0] Adress1,
    output [4:0] Adress2,
    output [4:0] Adress3,
    output [15:0] extender,
    output [25:0] AdressJ
    );

	assign Adress1 = ReadAdress [25:21];
	assign Adress2 = ReadAdress [20:16];
	assign Adress3 = ReadAdress [15:11];
	assign extender = ReadAdress [15:0];
	assign AdressJ = ReadAdress [25:0];
	
	Control C1(
	.c(ReadAdress[31:26]),
	.RegDst(RegDst),
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.Alu_op(Alu_op),
	.MemWrite(MemWrite),
	.AluSrc(AluSrc),
	.RegWrite(RegWrite),
	.J(J)
	);

endmodule
