`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:02:43 05/10/2017 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
    input clk,
	 output [31:0] direccion,
	 output [31:0] palabra,
	 output [31:0] leer_dato
    );
	 
	 wire [31:0] Word; //salida del pc
	 wire [31:0] Word_4;  //salida adder+4
	 wire [31:0] Adress_branch; //salida Adder Branch
	 wire [31:0] Adress_final;  //Salida mux branch
	 wire [25:0] Adress_jump;  //Direccion a saltar con adress
	 wire [31:0] Adress_jump_final;  //Direccion final del jump
	 wire RegDst;  //Salidas del control
	 wire Branch;
	 wire MemRead;
	 wire MemtoReg;
	 wire MemWrite;
	 wire [1:0] Alu_op;
	 wire AluSrc;
	 wire RegWrite;
	 wire [4:0] Adress1;
	 wire [4:0] Adress2;
	 wire[4:0] Adress3;
	 wire [15:0] extender;
	 wire J; //Salida si es tipo J
	 wire [31:0] ReadData1;  //Salida banco de registros
	 wire [31:0] ReadData2;  //Salida banco de registros
	 wire [4:0] Mux_Adress3; //Mux antes del banco de registros
	 wire [31:0] Extend_32;  //Salida extender 32 bits
	 wire [31:0] Shifter_32;  //Salida del shifter
	 wire [31:0] Mux_Alu;  // Salida de mux antes del alu
	 wire zero; //Salida zero del Alu
	 wire [31:0] result; //Resultado del Alu
	 wire And; //Salida del And
	 wire [31:0] Data_DataMemory;  //Salida del DataMemory
	 wire [31:0] WriteData;  //Datos que se escriben en el banco de registros
	 reg [31:0] Adress;  //Entrada pc
	 
	 
	 PC PC(
	 .Adress(Adress),
	 .Word(Word)
	 );
	 
	 InstructionMemory InstructionMemory(
	.ReadAdress(Word),
   .RegDst(RegDst),
   .Branch(Branch),
   .MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.Alu_op(Alu_op),
	.MemWrite(MemWrite),
	.AluSrc(AluSrc),
	.RegWrite(RegWrite),
	.J(J),
	.Adress1(Adress1),
	.Adress2(Adress2),
	.Adress3(Adress3),
	.extender(extender),
	.AdressJ(Adress_jump)
	 );
	 
	 SignExtend_26X32 SignExtend_26x32(
	 .Input_26(Adress_jump),
	 .Output_32(Adress_jump_final)
	 );
	 
	 RegisterBank RegisterBank(
	 .RegWrite(RegWrite),
	 .ReadRegister1(Adress1),
	 .ReadRegister2(Adress2),
	 .WriteRegister(Mux_Adress3),
	 .clk(clk),
	 .WriteData(WriteData), 
	 .ReadData1(ReadData1),
	 .ReadData2(ReadData2)
	 );
	 
	 SignExtend_16X32 SignExtend_16X32(
	 .Input_16(extender),
	 .Output_32(Extend_32)
	 );
	 
	 Shifter_2 Shifter_2(
	 .Input(Extend_32),
	 .Output(Shifter_32)
	 );
	 
	 Alu_final Alu_final(
	 .a(ReadData1),
	 .b(Mux_Alu),
	 .Alu_op(Alu_op),
	 .funct(extender[5:0]),
	 .zero(zero),
	 .result(result)
	 );
	 
	 DataMemory DataMemory(
	 .Adress(result),
	 .WriteData(ReadData2),
	 .MemWrite(MemWrite),
	 .MemRead(MemRead),
	 .clk(clk),
	 .ReadData(Data_DataMemory)
	 );
	 
	 assign Word_4 = Adress + 4;
	 assign Adress_branch = Word_4 + Shifter_32; 
	 assign Adress_final = (And) ? Adress_branch:Word_4;              //Parte de arriba
	 always @(posedge clk) begin
		Adress <= (J) ? Adress_jump_final:Adress_final; 
	 end
	 
	 assign Mux_Adress3 = (RegDst) ? Adress3:Adress2;
	 
	 assign Mux_Alu = (AluSrc) ? Extend_32:ReadData2;
	 
	 assign direccion = Adress;
	 
	 assign And = (Branch & zero);
	 
	 assign WriteData = (MemtoReg) ? Data_DataMemory:result;
	 
	 assign palabra = Word;
	 
	 assign leer_dato = WriteData;
	 
	 
	 // poner un reset al flop del Adress....
	 
	 //  cambiar el nombre de Adress... por Address 
	 //initial begin
	 //Adress = 0;
	 //end


endmodule
