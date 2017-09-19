`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:44:41 04/27/2017
// Design Name:   Counter
// Module Name:   D:/Verilog/Comparador/counter_tb.v
// Project Name:  Comparador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg clk;
	reg rst;
	reg up_down;

	// Outputs
	wire [7:0] count;
	wire [7:0] count2;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.clk(clk), 
		.rst(rst), 
		.up_down(up_down), 
		.count(count)
	);
	
	counter2 uut2 (
		.clk(clk), 
		.rst(rst), 
		.up_down(up_down), 
		.count(count2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		up_down = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst=0; 
		// Add stimulus here

		#5000;
		up_down = 1;
	end
	
		//CLOCK generator fot the testbench
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

