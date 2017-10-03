`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:07 09/24/2017
// Design Name:   ABS
// Module Name:   D:/Verilog/SAD/Test_ABS.v
// Project Name:  SAD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ABS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ABS;

	// Inputs
	reg [7:0] substract;

	// Outputs
	wire [7:0] abs;

	// Instantiate the Unit Under Test (UUT)
	ABS uut (
		.substract(substract), 
		.abs(abs)
	);

	initial begin
		// Initialize Inputs
		substract = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		substract =25;
		#20;
		substract = -25;

	end
      
endmodule

