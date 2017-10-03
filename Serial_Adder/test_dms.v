`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:29:21 09/08/2017
// Design Name:   FSM
// Module Name:   D:/Verilog/Serial_Adder/test_dms.v
// Project Name:  Serial_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dms;

	// Inputs
	reg clk;
	reg go;
	reg rst;
	reg counterflag;

	// Outputs
	wire [1:0] STATE;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.clk(clk), 
		.go(go), 
		.rst(rst), 
		.counterflag(counterflag), 
		.STATE(STATE)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		go = 0;
		rst = 0;
		counterflag = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#20;
		go = 1;
		#200;
		

	end
	
	initial begin
		forever #10clk = ~clk;
	end
      
endmodule

