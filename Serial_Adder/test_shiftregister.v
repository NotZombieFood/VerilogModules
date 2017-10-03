`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:38:08 09/05/2017
// Design Name:   Shift_register
// Module Name:   D:/Verilog/Serial_Adder/test_shiftregister.v
// Project Name:  Serial_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shift_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shiftregister;

	// Inputs
	reg [7:0] A;
	reg load;
	reg enable;
	reg clk;

	// Outputs
	wire [7:0] shift;

	// Instantiate the Unit Under Test (UUT)
	Shift_register uut (
		.A(A), 
		.load(load), 
		.enable(enable), 
		.clk(clk), 
		.shift(shift)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		load = 0;
		enable = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 1;
		
		#100;
		
		enable = 1;
		load = 1;
		A = 8'b 111001010;
		#100;
		
		load = 0;
		enable =0;
		#100;
		
		enable = 1;
		#300; 
		
		enable = 0; 
		#00
		
		#100;

	end
	
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

