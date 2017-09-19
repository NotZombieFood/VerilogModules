`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:37:25 08/26/2017
// Design Name:   Multiplicador
// Module Name:   D:/Verilog/ALU/test_mul.v
// Project Name:  ALU
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

module test_mul;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg rst;
	reg clk;

	// Outputs
	wire [15:0] c;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador uut (
		.A(A), 
		.B(B), 
		.rst(rst), 
		.clk(clk), 
		.c(c)
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
		
		A = 2;
		B = 2;
		rst = 0;
		#300;
		
		A = -5;
		B = 7;
		rst = 0;
		#300;
		
		A = -9;
		B = -7;
		rst = 0;
		#300;
		
		

	end
	
	initial begin
		forever #10 clk = ~clk;
	end

      
endmodule

