`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:28:05 08/31/2017
// Design Name:   Divisor
// Module Name:   D:/Verilog/ALU_2/test_divisor.v
// Project Name:  ALU_2
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

module test_divisor;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;
	reg start;
	reg rst;

	// Outputs
	wire [7:0] Cociente;
	wire [7:0] Residuo;
	wire neg;
	wire [3:0] conta;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	Divisor uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.start(start), 
		.rst(rst), 
		.Cociente(Cociente), 
		.Residuo(Residuo), 
		.neg(neg),
		.conta(conta),
		.e(e)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 0;
		start = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	
		rst = 1; 
		#300;
		rst = 0;
		#300;
		
		start = 1;
		#300;
		start = 0;
		#300;
		
		rst = 1;
		#300;
		rst = 0;
		#300;
		
		A = 9;
		B = -3;
		#300;
		
		start = 1;
		#300;
		
		end
	
	initial begin
		forever #10 clk =~clk;
	end
      
endmodule

