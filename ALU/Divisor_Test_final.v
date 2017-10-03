`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:41:12 08/27/2017
// Design Name:   Divisor
// Module Name:   D:/Verilog/ALU/Divisor_Test_final.v
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

module Divisor_Test_final;

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
		rst = 1;
		#30
		rst = 0;
		A = -30;
		B = 4;
		#300;
		
		rst = 1;
		#30
		rst = 0;
		A = -4;
		B = 2;
		#300;



		rst = 1;
		#30
		rst = 0;
		A = 256;
		B = -78;
		#300;



		rst = 1;
		#30
		rst = 0;
		A = -56;
		B = -23;
		#300;



		rst = 1;
		#30
		rst = 0;
		A = 56;
		B = 3;
		#300;



	end
	
	initial begin 
		forever #10 clk = ~clk;
	end
      
endmodule

