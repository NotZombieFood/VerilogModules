`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:29:23 09/06/2017
// Design Name:   Shift_register2
// Module Name:   D:/Verilog/Serial_Adder/test_shifter2.v
// Project Name:  Serial_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shift_register2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shifter2;

	// Inputs
	reg A;
	reg rst;
	reg enable;
	reg clk;

	// Outputs
	wire [8:0] shift;

	// Instantiate the Unit Under Test (UUT)
	Shift_register2 uut (
		.A(A), 
		.rst(rst), 
		.enable(enable), 
		.clk(clk), 
		.shift(shift)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		rst = 0;
		enable = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#20;
		rst = 0;
		#20
		
		enable = 1;
		A=1;
		#10;
		A=0;
		#10;
		A=1;
		#10;
		A=1;
		#100;

	end
	
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

