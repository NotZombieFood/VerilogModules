`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:22 08/31/2017 
// Design Name: 
// Module Name:    Divisor 
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
module Divisor(
    input [7:0] A,
    input [7:0] B,
	 input clk,
	 input start,
    input rst,
    output reg[7:0] Cociente,
    output reg[7:0] Residuo,
	 output reg neg,
	// output [7:0]d,
	 //output [15:0] prs,
	 output [3:0]conta,    
	 //output [7:0] wA,
	 //output [7:0] wQ,
	 //output ctrl,
	 output e,
	 output reg finish
    );
	 
	 reg [7:0]a;
	 wire [7:0]a_comp;
	 reg [7:0]b;
	 wire [7:0]b_comp;
	 wire [7:0] c_comp;
	 wire [15:0] prevShift;
	 wire [15:0] shift;
	 wire [7:0] resta;
	 
	 reg [7:0] wireQ;
	 reg [7:0] wireQ2;
	 reg [7:0] wireA;
	 reg [7:0] restauracion;
	 reg [7:0]regQ = 0;
	 reg [7:0]regd = 0;
	 reg [7:0]regA = 0;
	 reg control;
	 reg enable;
	 reg [3:0]contador;
	 reg [7:0] coc;
	 reg wireStart;
	 
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
	 
	 
	 //assign d=regd;
	 //assign prs = prevShift;
	 assign conta = contador;
	 //assign wA = wireA;            outputs para pruebas
	 //assign wQ = wireQ;
	 //assign ctrl = control;
	 assign e = enable;
	 
	 //ASignar valores finales
	 always @ * begin
		if ( enable == 1) begin
			coc = regQ;
			Residuo = regA;
		end
		else if ( enable == 0 ) begin
			coc = coc;
			Residuo = Residuo;
		end
	end
	always @ * begin
		if ( A[7] == B[7] ) begin
			Cociente = coc;
			neg = 0;
		end 
		else if(A[7] != B[7]) begin
			Cociente = c_comp;
			neg = 1;
		end
	end
	 
	//Reset
	always @ (posedge clk) begin
		if ( rst == 1 ) begin
			contador = 0;
			regQ = 0;
			regA = 0;
		end
		else if (rst == 0) begin
			regQ = wireQ;
			regA = wireA;
			if (enable == 1 & wireStart == 1) begin
			contador = contador + 1;
			end
		end
		end
		
	 
	  //Control y enable
	always @ * begin
			if ( wireStart == 0 ) begin
				control = 0;
				enable = 0;
			end
			else if ( contador ==  0 ) begin
					control = 0;
					enable = 1;
			end
			else if (contador <= 8 ) begin
					control = 1;
					enable = 1;
			end
			else if ( contador >= 8 ) begin
					enable = 0;
					control = 1;
			end
	end
	 
	 //Twos Complement
	 TwosComplement T1(
	.A(A),
	.B(a_comp)
	);
		
	TwosComplement T2(
	.A(B),
	.B(b_comp)
	);	
	
	TwosComplement T3(
	.A(coc),
	.B(c_comp)
	);	
	 
	 //Iniciar valores siempre en positivo
	always @ * begin
		if (A[7] == 0 )begin
			a = A;
		end
		else if (A[7] == 1 ) begin
			a = a_comp;
		end
		
		if (B[7] == 0 ) begin
			b = B;
		end
		else if (B[7] == 1 ) begin
			b = b_comp;
		end
	end
	
	
	//Regd
	always @ (posedge clk) begin
		if ( rst == 1 ) begin
			regd = 0;
		end
		else begin
			regd = b;
		end
	end
	
	
	//Shift
	assign prevShift [7:0] = regQ;
	assign prevShift [15:8] = regA;
	assign shift = prevShift[15:0] << 1;
	
	//Resta
	assign resta = shift[15:8] - regd;
	
	//Mux wireQ2
	always @ * begin
		if ( resta[7] == 0 ) begin
			wireQ2[0] = 1;
		end
		else if ( resta[7] == 1 ) begin
			wireQ2[0] = 0;
		end
		wireQ2[7:1] = shift [7:1];
	end
	
	//Mux wireQ
	always @ * begin
		if ( control == 0 ) begin
			wireQ = a;
		end
		else if (control == 1 ) begin
			wireQ = wireQ2;
		end
	end
	
	//Mux restauracion
	always @ * begin
		if ( resta[7] == 0 ) begin
			restauracion = resta;
		end
		if ( resta[7] == 1 ) begin
			restauracion = shift[15:8];
		end
	end
	
	//Mux WireA
	always @ * begin
		if ( control == 0 ) begin
			wireA = 0;
		end
		else if (control == 1 ) begin
			wireA = restauracion;
		end
	end
	
	// flag
	always @* begin
		if (contador == 10) begin
			finish = 1;
		end
		else begin
			finish = 0;
		end
	end
	

endmodule
