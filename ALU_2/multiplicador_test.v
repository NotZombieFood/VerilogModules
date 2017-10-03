`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:41:32 08/31/2017
// Design Name:   Multiplicador
// Module Name:   D:/Verilog/ALU_2/multiplicador_test.v
// Project Name:  ALU_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplicador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplicador_test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg rst;
	reg clk;
	reg start;

	// Outputs
	wire [15:0] c;
	wire neg;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador uut (
		.A(A), 
		.B(B), 
		.rst(rst), 
		.clk(clk), 
		.start(start), 
		.c(c), 
		.neg(neg)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		rst = 0;
		clk = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
      rst = 1;
		#30;
		rst=0;
		
		
		A = 2;
		B = -4;
		#100;
		start = 1;
		#300;
		start = 0;
		#100;
		
		rst = 1;
		#30;
		rst=0;
		A = 9;
		B = -3;
		#100;
		start = 1;
		#300;




		rst = 1;
		#30;
		rst=0;
		A = -9;
		B = 3;
		#300;

		
 
	end
	
	initial begin
	 forever # 10 clk = ~clk;
	end
      
endmodule

