`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:13 08/26/2017
// Design Name:   TwosComplement
// Module Name:   D:/Verilog/ALU/Test_Twos_complements.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TwosComplement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Twos_complements;

	// Inputs
	reg [7:0] A;

	// Outputs
	wire [7:0] B;

	// Instantiate the Unit Under Test (UUT)
	TwosComplement uut (
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 0;
		#100;
		
		A = 1;
		#100;
		
		A = 127;
		#100;
		
		A = -127;
		#100;
		
		A = -2;
		#100;

	end
      
endmodule

