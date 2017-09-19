`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:57:24 09/19/2017
// Design Name:   FSM
// Module Name:   D:/Verilog/SAD/Test_FSM.v
// Project Name:  SAD
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

module Test_FSM;

	// Inputs
	reg go;
	reg clk;
	reg comp;
	reg Mrst;

	// Outputs
	wire rst;
	wire en;
	wire en_reg;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.go(go), 
		.clk(clk), 
		.comp(comp), 
		.Mrst(Mrst), 
		.rst(rst), 
		.en(en), 
		.en_reg(en_reg)
	);

	initial begin
		// Initialize Inputs
		go = 0;
		clk = 0;
		comp = 0;
		Mrst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Mrst=1;
		#20
		Mrst=0;
		#50;
		go=1;
		#10;
		go=0;
		#300;
		comp=1;
		#50;

	end
	
	initial begin
		forever #10 clk=~clk;
	end
      
endmodule

