`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:34:32 04/27/2017
// Design Name:   Counter
// Module Name:   D:/Verilog/Comparador/counter1_tb.v
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

module counter1_tb;

	// Inputs
	reg clk;
	reg rst;
	reg up_down;
	reg load;
	reg [7:0] data;
	reg [7:0] reset_variable;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.clk(clk), 
		.rst(rst), 
		.up_down(up_down), 
		.load(load), 
		.data(data), 
		.reset_variable(reset_variable), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		up_down = 1;
		load = 0;
		data = 0;
		reset_variable = 99;

		// Wait 100 ns for global reset to finish
		#100;
		rst=0;
        
		// Add stimulus here

		#50;
		load = 1;
		data = 80;
		
		#20;
		load = 0;
		
		
	end
      
	initial begin
		forever #10 clk = ~ clk;
	end
endmodule

