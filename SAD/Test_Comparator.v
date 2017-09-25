`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:47:56 09/22/2017
// Design Name:   Comparator
// Module Name:   D:/Verilog/SAD/Test_Comparator.v
// Project Name:  SAD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Comparator;

	// Inputs
	reg [8:0] AB_addr;

	// Outputs
	wire comp;

	// Instantiate the Unit Under Test (UUT)
	Comparator uut (
		.AB_addr(AB_addr), 
		.comp(comp)
	);

	initial begin
		// Initialize Inputs
		AB_addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		AB_addr = 37;
		#20
		AB_addr = 255;
		#20
		AB_addr = 256;

	end
      
endmodule

