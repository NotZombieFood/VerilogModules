`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:20 08/17/2017
// Design Name:   Exercise_2
// Module Name:   D:/Verilog/Lab2_exercise_4/Text_1.v
// Project Name:  Lab2_exercise_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exercise_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Text_1;

	// Inputs
	reg [3:0] SW_X;
	reg [3:0] SW_Y;
	reg SW_Cin;

	// Outputs
	wire [6:0] HEX_5;
	wire [6:0] HEX_3;
	wire [6:0] HEX_1;
	wire [6:0] HEX_0;
	wire LED_9;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	Exercise_2 uut (
		.SW_X(SW_X), 
		.SW_Y(SW_Y), 
		.SW_Cin(SW_Cin), 
		.HEX_5(HEX_5), 
		.HEX_3(HEX_3), 
		.HEX_1(HEX_1), 
		.HEX_0(HEX_0), 
		.LED_9(LED_9), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		SW_X = 0;
		SW_Y = 0;
		SW_Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		SW_X = 2;
		SW_Y = 3;
		SW_Cin = 1;
		#100;

		SW_X = 0;
		SW_Y = 0;
		SW_Cin = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

