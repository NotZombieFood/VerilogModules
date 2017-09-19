`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:27:51 09/08/2017
// Design Name:   FSM
// Module Name:   D:/Verilog/Serial_Adder/test_fsm.v
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

module test_fsm;

	// Outputs
	wire ;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.()
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
		forever #10 clk=~clk;
	end
      
endmodule

