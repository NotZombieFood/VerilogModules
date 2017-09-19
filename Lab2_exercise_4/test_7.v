`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:45 08/21/2017
// Design Name:   Exercise_7
// Module Name:   D:/Verilog/Lab2_exercise_4/test_7.v
// Project Name:  Lab2_exercise_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exercise_7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_7;

	// Inputs
	reg [7:0] SW;

	// Outputs
	wire [6:0] HEX_0;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;

	// Instantiate the Unit Under Test (UUT)
	Exercise_7 uut (
		.SW(SW), 
		.HEX_0(HEX_0), 
		.HEX_1(HEX_1), 
		.HEX_2(HEX_2)
	);

	initial begin
		// Initialize Inputs
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		SW = 0;
		#100;
		
		SW = 25;
		#100;
		
		SW = 79;
		#100;
		
		SW = 124;
		#100;
		
		SW = 158;
		#100;
		
		SW = 219;
		#100;


	end
      
endmodule

