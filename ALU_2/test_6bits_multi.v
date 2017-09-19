`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:33 09/01/2017
// Design Name:   Multiplicador_6bits
// Module Name:   D:/Verilog/ALU_2/test_6bits_multi.v
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

module test_6bits_multi;

	// Inputs
	reg [5:0] A;
	reg [5:0] B;
	reg rst;
	reg clk;

	// Outputs
	wire [11:0] c;
	wire neg;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador_6bits uut (
		.A(A), 
		.B(B), 
		.rst(rst), 
		.clk(clk), 
		.c(c), 
		.neg(neg)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		rst = 0;
		clk = 0;

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

