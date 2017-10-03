`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:23:09 09/06/2017
// Design Name:   reset
// Module Name:   D:/Verilog/register_file/test_reset.v
// Project Name:  register_file
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reset
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_reset;

	// Inputs
	reg clk;
	reg go;
	reg rst;
	reg enable;
	reg [3:0] wr_addr;
	reg [31:0] wr_data;
	reg [3:0] rd_addr;

	// Outputs
	wire [31:0] rd_data;

	// Instantiate the Unit Under Test (UUT)
	reset uut (
		.clk(clk), 
		.go(go), 
		.rst(rst), 
		.enable(enable), 
		.wr_addr(wr_addr), 
		.wr_data(wr_data), 
		.rd_addr(rd_addr), 
		.rd_data(rd_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		go = 0;
		rst = 0;
		enable = 0;
		wr_addr = 0;
		wr_data = 0;
		rd_addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10;
		rst=1;
		#10;
		rst=0;
		#10;
		
		enable = 1;
		wr_addr=1;
		wr_data=15;
		#10;
		
		wr_addr=5;
		wr_data=20;
		#10;
		
		wr_addr=15;
		wr_data=25;
		#10;
		
		enable = 0;
		#10;
		
		rd_addr = 1;
		#25;
		rd_addr = 4;
		#25;
		rd_addr = 5;
		#25;
		rd_addr = 15;
		#25;
		
		go = 1;
		#10;
		go = 0;
		#200;
		
		rd_addr=1;
		#25;
		rd_addr = 4;
		#25;
		rd_addr = 5;
		#25;
		rd_addr = 15;

	end
	
	initial begin
		forever #5 clk = ~clk;
	end
      
endmodule

