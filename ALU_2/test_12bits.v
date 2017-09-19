`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:04:26 08/31/2017
// Design Name:   Display_12bits
// Module Name:   D:/Verilog/ALU_2/test_12bits.v
// Project Name:  ALU_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Display_12bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_12bits;

	// Inputs
	reg [15:0] SW;

	// Outputs
	wire [6:0] HEX_0;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;
	wire [6:0] HEX_3;

	// Instantiate the Unit Under Test (UUT)
	Display_12bits uut (
		.SW(SW), 
		.HEX_0(HEX_0), 
		.HEX_1(HEX_1), 
		.HEX_2(HEX_2), 
		.HEX_3(HEX_3)
	);

	initial begin
		// Initialize Inputs
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		SW = 5;
		#100;
		
		SW = 25;
		#100;
		
		SW = 156;
		#100;
		
		SW = 1698;
		#100;



	end
      
endmodule

