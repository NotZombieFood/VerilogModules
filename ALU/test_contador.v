`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:01:01 08/26/2017
// Design Name:   Multiplicador
// Module Name:   D:/Verilog/ALU/test_contador.v
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

module test_contador;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg rst;
	reg clk;

	// Outputs
	wire [15:0] c;
	wire [2:0] contador;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador uut (
		.A(A), 
		.B(B), 
		.rst(rst), 
		.clk(clk), 
		.c(c), 
		.contador(contador)
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

	end
	
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

