`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:40 08/27/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	 input [5:0] a,
    input [5:0] b,
    input [3:0] ctrl,
	 input rst,
	 input start,
	 input clk,
    output zero,
    output reg [11:0] result,
	 output reg[6:0] HEX_0,
	 output reg[6:0] HEX_1,
	 output reg[6:0] HEX_2,
	 output reg[6:0] HEX_3,
	 output reg[6:0] HEX_4,
	 output [6:0] HEX_5,
	 output [6:0] HEX_6,
	 output [6:0] HEX_7,
	 output [7:0] puntos
    );
	 
	wire [11:0] multiplicacion;
	wire [5:0 ] division;
	wire clk_div;
	wire wireStart;
	wire wireRst;
	reg wireSt;
	reg [11:0] dP;
	reg [5:0] dP_temp;
	wire [5:0] dP_tempcomp;
	wire [6:0]HEX_0_6bits;
	wire [6:0]HEX_1_6bits;
	wire [6:0]HEX_0_12bits;
	wire [6:0]HEX_1_12bits;
	wire [6:0]HEX_2_12bits;
	wire [6:0]HEX_3_12bits;
	reg op;
	reg neg = 0;
	
	//Botones negados
	assign wireStart = ~start;
	assign wireRst = ~rst;
	
	//Divisor de reloj
	
	clk_div c1(
	.clk(clk),
	.clk_div(clk_div)
	);

	
	//Divisor
	Divisor_6bits d1(
	.A(a),
	.B(b),
	.clk(clk_div),
	.rst(wireRst),
	.Cociente(division)
	);
	
	//Multiplicador
	Multiplicador_6bits m1(
	.A(a),
	.B(b),
	.rst(wireRst),
	.clk(clk_div),
	.c(multiplicacion),
	.HEX_0(HEX_0_12bits),
	.HEX_1(HEX_1_12bits),
	.HEX_2(HEX_2_12bits),
	.HEX_3(HEX_3_12bits)
	);
	
	//TwosComplement
	
	TwosComplement T1 (
	.A(dP_temp),
	.B(dP_tempcomp)
	);
	
	//Start
	
	always @ * begin
		if (wireRst == 1) begin
			wireSt = 0;
		end
		else begin
			if (wireStart == 1 ) begin
				wireSt = 1;
			end
			else begin
				wireSt = wireSt;
			end
		end
	end

	always @ * begin
		case (ctrl)
			4'b0000: begin
			result = a & b;
			dP = a & b;
			op = 0;
			neg = 0;
			end
			4'b0001: begin
			result = a | b;
			dP = a | b;
			op = 0;
			neg = 0;
			end
			4'b0010: begin
			result = a != b;
			dP = a != b;
			op = 0;
			neg = 0;
			end
			4'b0011: begin
			result [5:0]= ~a;
			result [11:6] = 6'b 000000;     
			dP[5:0] = ~a;        
			dP [11:6] = 6'b 000000;  
			op = 0;
			neg = 0;
			end
			4'b0100: begin
			result [5:0]= a << 1;
			result [11:6] = 6'b 000000;
			dP [5:0]= a << b;         
			dP [11:0] = 6'b 000000;
			op = 0;
			neg = 0;
			end
			4'b0101: begin
			result = a >> 1;
			dP = a >> b;
			op = 0;
			neg = 0;
			end
			4'b0110: begin
			result = a + b;
			dP = a + b;
			op = 0;
			neg = 0;
			end
			4'b0111: begin
			result = a - b;
			dP_temp = a - b;            //Arreglar complemento
			if (dP_temp[5] == 1 ) begin
				dP =dP_tempcomp;
				neg = 1;
			end
			else begin
				dP = dP_temp;
				neg = 0;
			end
			op = 0;
			end
			4'b1000: begin
			result = division;     //No manda resultado
			dP = division;
			op = 1;
			neg = 0;
			end
			4'b1001: begin
			result = multiplicacion;     //No sirve
			dP = multiplicacion;
			op = 1;
			neg = 0;
			end
			4'b1011: begin
			result = a>b;     
			dP = a>b;
			op = 1;
			neg = 0;
			end
			4'b1100: begin
			result = a<b;     
			dP = a<b;
			op = 1;
			neg = 0;
			end
			4'b1101: begin
			result = a==b;     
			dP = a==b;
			op = 1;
			neg = 0;
			end
			default: result = 0;
		endcase
	end
	
		assign zero = (result == 0);
		
	//Display ecuaciones
	Display dis1(
	.SW(dP),
	.HEX_0(HEX_0_6bits),
	.HEX_1(HEX_1_6bits)
	);
		
	//Displays
	
	assign HEX_5 = 7'b1111111;
	assign HEX_7 = 7'b1111111;
	assign HEX_6 = 7'b1111111;
	
	
	always @ (posedge clk) begin
		if (wireRst == 0) begin
			HEX_0 = 7'b1000000;
			HEX_1 = 7'b1000000;
			HEX_2 = 7'b1000000;
			HEX_3 = 7'b1000000;
			HEX_4 = 7'b1111111;
		end
		else begin
			if (op == 0) begin
				HEX_0 = HEX_0_6bits;
				HEX_1 = HEX_1_6bits;
				HEX_2[6] = ~neg;
				HEX_2[5:0] = 6'b 111111;
				HEX_3 = 7'b1111111;
				HEX_4 = 7'b1111111;
			end
			else begin
				HEX_0 = HEX_0_12bits;
				HEX_1 = HEX_1_12bits;
				HEX_2 = HEX_2_12bits;
				HEX_3 = HEX_3_12bits;
				HEX_4[6] = ~dP[11];
				HEX_4[5:0] = 6'b 111111;
			end
		end
	end
	
	assign puntos = 8'b 11111111;



endmodule
