`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:40:42 08/28/2017
// Design Name:   Multiplicador_6bits
// Module Name:   D:/Verilog/ALU/test_multiplicador6bits.v
// Project Name:  ALU
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

module test_multiplicador6bits;

	// Inputs
	reg [5:0] A;
	reg [5:0] B;
	reg rst;
	reg clk;

	// Outputs
	wire [11:0] c;
	wire neg;
	wire [6:0]HEX_0;
	wire [6:0]HEX_1;
	wire [6:0]HEX_2;
	wire [6:0]HEX_3;
	wire [6:0]HEX_4;

	// Instantiate the Unit Under Test (UUT)
	Multiplicador_6bits uut (
		.A(A), 
		.B(B), 
		.rst(rst), 
		.clk(clk), 
		.c(c), 
		.neg(neg),
		.HEX_0(HEX_0),
		.HEX_1(HEX_1),
		.HEX_2(HEX_2),
		.HEX_3(HEX_3),
		.HEX_4(HEX_4)
	);
	

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 1;
		#30
		rst = 0;
		A = 2;
		B = 2;
		#300;
		
		rst = 1;
		#30
		rst = 0;
		A = -5;
		B = 7;
		#300;
		
		
		rst = 1;
		#30
		rst = 0;
		A = -9;
		B = -7;
		#300;
		
		
        
		// Add stimulus here
		
		

	end
	
	initial begin
			forever #10 clk = ~clk;
		end
      
endmodule

