`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:09:17 08/27/2017
// Design Name:   Divisor_6bits
// Module Name:   D:/Verilog/ALU/test_divisor6bits.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divisor_6bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_divisor6bits;

	// Inputs
	reg [5:0] A;
	reg [5:0] B;
	reg clk;
	reg rst;

	// Outputs
	wire [11:0] c;
	wire neg;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador_6bits uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst), 
		.c(c), 
		.neg(neg)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		rst = 1;
		#30
		rst = 0;
		A = 28;
		B = 2;
		#300;

		rst = 1;
		#30
		rst = 0;
		A = -40;
		B = 9;
		#300;
		
		rst = 1;
		#30
		rst = 0;
		A = -90;
		B = -5;
		#300;
		
		rst = 1;
		#30
		rst = 0;
		A = 4;
		B = 2;
		#300;		

	end
	
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

