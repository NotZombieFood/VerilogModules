`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:48:35 08/21/2017
// Design Name:   Exercise_4
// Module Name:   D:/Verilog/Lab2_exercise_4/Test_ex_4.v
// Project Name:  Lab2_exercise_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exercise_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ex_4;

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
	wire [4:0] LED_R;

	// Instantiate the Unit Under Test (UUT)
	Exercise_4 uut (
		.SW_X(SW_X), 
		.SW_Y(SW_Y), 
		.SW_Cin(SW_Cin), 
		.HEX_5(HEX_5), 
		.HEX_3(HEX_3), 
		.HEX_1(HEX_1), 
		.HEX_0(HEX_0), 
		.LED_9(LED_9), 
		.cout(cout), 
		.LED_R(LED_R)
	);

	initial begin
		// Initialize Inputs
		SW_X = 0;
		SW_Y = 0;
		SW_Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		SW_X = 0;
		SW_Y = 0;
		SW_Cin = 0;
		#100;
		
		SW_X = 0;
		SW_Y = 0;
		SW_Cin = 1;
		#100;
		
		SW_X = 1;
		SW_Y = 1;
		SW_Cin = 0;
		#100;
		
		SW_X = 1;
		SW_Y = 1;
		SW_Cin = 1;
		#100;
		
		SW_X = 1;
		SW_Y = 2;
		SW_Cin = 1;
		#100;
		
		SW_X = 0;
		SW_Y = 0;
		SW_Cin = 0;
		#100;
		
		SW_X = 2;
		SW_Y = 2;
		SW_Cin = 1;
		#100;
		
		SW_X = 3;
		SW_Y = 2;
		SW_Cin = 1;
		#100;
		
		SW_X = 3;
		SW_Y = 3;
		SW_Cin = 1;
		#100;
		
		SW_X = 4;
		SW_Y = 3;
		SW_Cin = 1;
		#100;
		
		SW_X = 4;
		SW_Y = 4;
		SW_Cin = 1;
		#100;
		
		SW_X = 5;
		SW_Y = 4;
		SW_Cin = 1;
		#100;
		
		SW_X = 5;
		SW_Y = 5;
		SW_Cin = 1;
		#100;
		
		SW_X = 5;
		SW_Y = 6;
		SW_Cin = 1;
		#100;
		
		SW_X = 6;
		SW_Y = 6;
		SW_Cin = 1;
		#100;
		
		SW_X = 7;
		SW_Y = 6;
		SW_Cin = 1;
		#100;
		
		SW_X = 7;
		SW_Y = 7;
		SW_Cin = 1;
		#100;

	end
      
endmodule

