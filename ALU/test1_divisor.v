`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:17 08/27/2017
// Design Name:   Divisor
// Module Name:   D:/Verilog/ALU/test1_divisor.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divisor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1_divisor;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] Cociente;
	wire [7:0] Residuo;

	// Instantiate the Unit Under Test (UUT)
	Divisor uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst), 
		.Cociente(Cociente), 
		.Residuo(Residuo)
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
		
		A = 25;
		B = 1;
		clk = 0;
		rst = 0;
		#100;
		
		A = -26;
		B = -1;
		clk = 0;
		rst = 0;
		#100;

	end
      
endmodule

