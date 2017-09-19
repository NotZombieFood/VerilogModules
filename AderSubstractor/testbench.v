`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:03 04/23/2017
// Design Name:   AdderSubsstractor
// Module Name:   D:/Verilog/AderSubstractor/testbench.v
// Project Name:  AderSubstractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AdderSubsstractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] c;
	wire zero;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	AdderSubsstractor uut (
		.a(a), 
		.b(b), 
		.c(c),
		.zero(zero),
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			a=1;
			b=1;
			#100;
		
			a=100;
			b=100;
			#100;
		
			a=10;
			b=-5;
			#100;
		
			a=-3;
			b=-4;
			#100;

		end
      
endmodule

