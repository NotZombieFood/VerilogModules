`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:24 09/01/2017
// Design Name:   ALU
// Module Name:   D:/Verilog/ALU_2/ALU_testfinal.v
// Project Name:  ALU_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_testfinal;

	// Inputs
	reg [5:0] a;
	reg [5:0] b;
	reg [3:0] ctrl;
	reg rst;
	reg start;
	reg clk;

	// Outputs
	wire zero;
	wire [11:0] result;
	wire [6:0] HEX_0;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;
	wire [6:0] HEX_3;
	wire [6:0] HEX_4;
	wire [6:0] HEX_5;
	wire [6:0] HEX_6;
	wire [6:0] HEX_7;
	wire [7:0] puntos;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.ctrl(ctrl), 
		.rst(rst), 
		.start(start), 
		.clk(clk), 
		.zero(zero), 
		.result(result), 
		.HEX_0(HEX_0), 
		.HEX_1(HEX_1), 
		.HEX_2(HEX_2), 
		.HEX_3(HEX_3), 
		.HEX_4(HEX_4), 
		.HEX_5(HEX_5), 
		.HEX_6(HEX_6), 
		.HEX_7(HEX_7), 
		.puntos(puntos)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ctrl = 0;
		rst = 0;
		start = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		//Iniciar registers
		rst = 0;
		#100;
		rst = 1;
		start = 0;
		#100;
		start=1;
		#100
		
		// A & B
		ctrl = 4'b 0000;
		a = 6'b 110110;
		b = 6'b 100101;
		#100;
		
		a = 6'b 001110;
		b = 6'b 100110;
		#100;
		
		// A | B
		ctrl = 4'b 0001;
		a = 6'b 101110;
		b = 6'b 000101;
		#100;
		
		a = 6'b 110110;
		b = 6'b 100101;
		#100;
		
		// A != B
		ctrl = 4'b 0010;
		a = 8;
		b = 16;
		#100;
		
		a = 3;
		b = 3;
		#100;
		
		// ~A
		ctrl = 4'b 0011;
		a = 6'b 110110;
		#100;
		
		a = 6'b 100101;
		#100;
		
		//A<<1
		ctrl = 4'b 0100;
		a = 6'b 100101;
		#100;
		a = 6'b 101011;
		#100;
		
		//A>>1
		ctrl = 4'b 0101;
		a = 6'b 100101;
		#100;
		a= 6'b 111111;
		#100;
		
		//A +B
		ctrl = 4'b 0110;
		a = 25;
		b = 6;
		#100;
		
		a = 30;
		b = 6;
		#100;
		
		// A - B
		ctrl = 4'b 0111;
		a = 25;
		b = 20;
		#100;
		
		a = 6;
		b = 2;
		#100;
		
		//Division
		ctrl = 4'b 1000;
		
		rst = 0;
		#300;
		rst = 1;
		#300;
		a = 9;
		b = -3;
		#300;
		start = 0;
		#300;
		start =1;
		#100;
		
		rst = 0;
		#300;
		rst = 1;
		#300;
		a = 30;
		b = 2;
		#300;
		start = 0;
		#300;
		start =1;
		#100
		
		rst = 0;
		#100;
		rst = 1;

		
		//Multiplicacion
		ctrl = 4'b 1001;
				rst = 0;
		#100;
		rst = 1;
		#100;
		
		a=9;
		b=-7;
		#100;
		
   	start=0;
		#300;
		
		start=1;
		rst=0;
		#100;
		
		rst=1;
		#100;
		
		a=40;
		b=5;
		#100;
		start = 0;
		#300;
		
		start = 1;
		#100;
		//A>B
		ctrl = 4'b 1011;
		a = 9;
		b = 4;
		#100;
		
		a = 2;
		b = 6;
		#100;
		
		//A<B
		ctrl = 4'b 1100;
		a = 23;
		b = 25;
		#100;
		
		a =  20;
		b =  10;
		#100;
		
		//A==B
		ctrl = 4'b 1101;
		a = 5;
		b = 4;
		#100;
		
		a = 8;
		b = 8;
		#100;

	end
	
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

