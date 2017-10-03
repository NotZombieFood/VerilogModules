`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:12:04 09/23/2017
// Design Name:   Substractor
// Module Name:   D:/Verilog/SAD/Test_substractor.v
// Project Name:  SAD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Substractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_substractor;

	// Inputs
	reg [7:0] A_data;
	reg [7:0] B_data;

	// Outputs
	wire [7:0] substract;

	// Instantiate the Unit Under Test (UUT)
	Substractor uut (
		.A_data(A_data), 
		.B_data(B_data), 
		.substract(substract)
	);

	initial begin
		// Initialize Inputs
		A_data = 0;
		B_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A_data = 20;
		B_data = 15;
		#30;
		
		A_data = 25;
		B_data = 30;

	end
      
endmodule

