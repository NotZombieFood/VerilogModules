`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:38:22 09/24/2017
// Design Name:   SAD
// Module Name:   D:/Verilog/SAD/Test_Sad.v
// Project Name:  SAD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SAD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Sad;

	// Inputs
	reg clk;
	reg go;
	reg Mrst;

	// Outputs
	wire [31:0] sad;

	// Instantiate the Unit Under Test (UUT)
	SAD uut (
		.clk(clk), 
		.go(go), 
		.Mrst(Mrst), 
		.sad(sad)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		go = 0;
		Mrst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		Mrst=1;
		#20;
		Mrst=0;
		#20;
		go = 1;
		#20
		go= 0;

	end
	
	initial forever #10 clk = ~clk;
      
endmodule

