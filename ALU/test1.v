`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:46:31 08/26/2017
// Design Name:   Multiplicador
// Module Name:   D:/Verilog/ALU/test1.v
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

module test1;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg rst;
	reg clk;

	// Outputs
	wire [15:0] c;
///	wire ActualB;
//	wire LastB;
//	wire control2;
//	wire enable2;
//	wire [3:0]contador2;
	wire neg;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador uut (
		.A(A), 
		.B(B), 
		.rst(rst), 
		.clk(clk), 
		.c(c), 
	//	.ActualB(ActualB), 
	//	.LastB(LastB), 
	//	.control2(control2), 
	//	.enable2(enable2),
	//	.contador2(contador2)
		.neg(neg)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#300;
        
		// Add stimulus here
		
		
		rst = 1;
		#30;
		rst=0;
		A = 2;
		B = -4;
		#300;
		
		rst = 1;
		#30;
		rst=0;
		A = 9;
		B = -3;
		#300;




		rst = 1;
		#30;
		rst=0;
		A = -9;
		B = 3;
		#300;





	end
	
	initial begin
	forever #10 clk = ~clk;
	end
      
endmodule

