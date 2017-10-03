`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:54:25 08/31/2017
// Design Name:   Multiplicador_6bits
// Module Name:   D:/Verilog/ALU_2/test_multiplicador_6bits.v
// Project Name:  ALU_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplicador_6bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multiplicador_6bits;

	// Inputs
	reg [5:0] A;
	reg [5:0] B;
	reg rst;
	reg clk;
	//reg start;

	// Outputs
	wire [11:0] c;
	wire neg;
	wire [6:0] HEX_0;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;
	wire [6:0] HEX_3;
	wire [6:0] HEX_4;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador_6bits uut (
		.A(A), 
		.B(B), 
		.rst(rst), 
		.clk(clk), 
//		.start(start), 
		.c(c), 
		.neg(neg), 
//		.HEX_0(HEX_0), 
//		.HEX_1(HEX_1), 
//		.HEX_2(HEX_2), 
//		.HEX_3(HEX_3), 
//		.HEX_4(HEX_4)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		rst = 0;
		clk = 0;
//		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#100;
		rst= 1;
		#100;
//		start=1;
		#100;
//		start = 0;
		#100;
		rst = 1;
		#100;
		rst = 0;
		#100;
		
		A=9;
		B=-7;
		#100;
		
//		start=1;
		#300;
		
////		start=0;
		rst=1;
		#100;
		
		rst=0;
		#100;
		
		A=40;
		B=5;
		#100;
//		start = 1;
		#300;

	end
	
	initial begin
		forever clk = ~clk;

	end
      
endmodule

