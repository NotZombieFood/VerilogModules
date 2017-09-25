`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:16:46 09/23/2017
// Design Name:   Twos_Complement
// Module Name:   D:/Verilog/SAD/Test_TwosComplement.v
// Project Name:  SAD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Twos_Complement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_TwosComplement;

	// Inputs
	reg [7:0] A;

	// Outputs
	wire [7:0] B;

	// Instantiate the Unit Under Test (UUT)
	Twos_Complement uut (
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 25;
		#30;
		A = -25;

	end
      
endmodule

