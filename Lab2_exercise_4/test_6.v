`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:09:32 08/21/2017
// Design Name:   Exercise6
// Module Name:   D:/Verilog/Lab2_exercise_4/test_6.v
// Project Name:  Lab2_exercise_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exercise6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_6;

	// Inputs
	reg [5:0] SW;

	// Outputs
	wire [6:0] HEX_0;
	wire [6:0] HEX_1;

	// Instantiate the Unit Under Test (UUT)
	Exercise6 uut (
		.SW(SW), 
		.HEX_0(HEX_0), 
		.HEX_1(HEX_1)
	);

	initial begin
		// Initialize Inputs
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		SW = 0;
		#100;
		
		SW = 11;
		#100;
		
		SW = 27;
		#100;
		
		SW = 54;
		#100;
		
		SW = 63;
		#100;



	end
      
endmodule

