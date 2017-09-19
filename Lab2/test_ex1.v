`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:47:33 08/15/2017
// Design Name:   Exercise1
// Module Name:   D:/Verilog/Lab2/test_ex1.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exercise1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ex1;

	// Inputs
	reg [7:0] SW;

	// Outputs
	wire [6:0] HEX1;
	wire [6:0] HEX2;

	// Instantiate the Unit Under Test (UUT)
	Exercise1 uut (
		.SW(SW), 
		.HEX1(HEX1), 
		.HEX2(HEX2)
	);

	initial begin
		// Initialize Inputs
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		SW[3:0] = 0;
		#100;
		SW[3:0] = 1;
		#100;
		SW[3:0] = 2;
		#100;
		SW[3:0] = 3;
		#100;
		SW[3:0] = 4;
		#100;
		SW[3:0] = 5;
		#100;
		SW[3:0] = 6;
		#100;
		SW[3:0] = 7;
		#100;
		SW[3:0] = 8;
		#100;
		SW[3:0] = 9;
		#100;
		SW[7:4] = 4'b0000;
		#100;
		SW[7:4] = 4'b0001;
		#100;
		SW[7:4] = 4'b0010;
		#100;
		SW[7:4] = 4'b0011;
		#100;
		SW[7:4] = 4'b0100;
		#100;
		SW[7:4] = 4'b0101;
		#100;
		SW[7:4] = 4'b0110;
		#100;
		SW[7:4] = 4'b0111;
		#100;
		SW[7:4] = 4'b1000;
		#100;
		SW[7:4] = 4'b1001;
		#100;



	end
      
endmodule

