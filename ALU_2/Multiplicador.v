`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:41 08/31/2017 
// Design Name: 
// Module Name:    Multiplicador 
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
module Multiplicador(
    input [7:0] A,
    input [7:0] B,
	 input rst,
	 input clk,
	 input start,
    output reg[15:0] c,
	 output reg neg
//	 output ActualB,
//	 output LastB,
//	 output control2,            Outputs para pruebas
//	 output enable2,
//	 output [3:0]contador2
    );
	 
	 wire [15:0] shift;
	 wire ActualBit;
	 wire TwosComplement;
	 wire [1:0]op;
	 
	 reg wireStart;
	 reg [15:0]PrevShift;
	 reg control;
	 reg enable;
	 reg [3:0]contador;
	 reg [15:0] ProductRegister;
	 reg LastBit;
	 
	 
	// assign ActualB = ActualBit;
	// assign LastB = LastBit;
	// assign control2 = control;
	// assign enable2 = enable;
	// assign contador2 = contador;
	 
	 always @ * begin
		if ( enable == 1) begin
			c = ProductRegister;
			neg = ProductRegister[15];
		end
		else if ( enable == 0 ) begin
			c = c;
			neg = neg;
		end
	end
	
	//Pulso start
	 always @ * begin
		if (rst == 1 ) begin
			wireStart = 0;
		end
		else begin
			if ( start == 0 ) begin
				wireStart = wireStart;
			end
			else begin
				wireStart = start;
			end
		end
	 end
	 
		
	//Twos Complement
	TwosComplement T1(
	.A(B),
	.B(TwosComplement)
	);	
	
	 
	 //aumentar 1 al contador del reloj
	 always @(posedge clk) begin
		if (rst == 1 ) begin
			contador = 0;
		end
		if (enable == 1 & wireStart == 1) begin
			contador = contador + 1;
			end
	 end
	 
	 //Control y enable
	always @ * begin
		if ( contador == 1) begin
				control = 0;
				enable = 1;
		end
		else if (contador <= 8 ) begin
				control = 1;
				enable = 1;
		end
		else if (contador >=11) begin
				enable = 0;
		end
	end
	 
	 //Escoger datos del primer register
	 always @(posedge clk) begin
		if (rst == 0 ) begin
			if ( control == 1 ) begin
				ProductRegister = shift;
			end
			else begin
				ProductRegister [7:0] = B;
				ProductRegister [15:8] = 0;
			end
		end
		else if (rst == 1 ) begin
			ProductRegister = 0;
		end
	end
	
	//Valores actual y last bit
	assign ActualBit = ProductRegister [0];
	
	always @(posedge clk) begin
			if (rst == 1 ) begin
				LastBit = 0;
			end
			else begin
				LastBit = ActualBit;
			end
	end
	assign op[0] = LastBit;
	assign op[1] = ActualBit;
	
	//Realizar operacion correspondiente
	always @ * begin
		case ( op )
			2'b00 : begin
				PrevShift = ProductRegister;
			end
			2'b01 : begin
				PrevShift[7:0] = ProductRegister [7:0];
				PrevShift [15:8] = ProductRegister [15:8] + A;
			end
			2'b10 : begin
				PrevShift[7:0] = ProductRegister [7:0];
				PrevShift [15:8] = ProductRegister [15:8] - A;
			end
			2'b11: begin
				PrevShift = ProductRegister;
			end
			default : begin
				PrevShift = ProductRegister;
			end
		endcase
	end
	
	//Shiftear
	assign shift[14:0] = PrevShift[15:0] >> 1;
	assign shift[15] = PrevShift [15];
	
endmodule
