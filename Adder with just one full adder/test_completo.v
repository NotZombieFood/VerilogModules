`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:24 09/06/2017
// Design Name:   DataPath
// Module Name:   D:/Verilog/Serial_Adder/test_completo.v
// Project Name:  Serial_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataPath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_completo;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;
	reg rst;
	reg go;

	// Outputs
	wire [8:0] sum;

	// Instantiate the Unit Under Test (UUT)
	DataPath uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst),   
		.sum(sum),
		.go(go)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst=1;
		#20;
		rst=0;
		#20;
		
		A=7;
		B= 15;
		
		go=1;
		#20
		go=0;
		#300;
		
		A=5;
		B=6;
		#20
		go=1;
		#300;
		
		A=2;
		B=3;
		#20;
		go=0;
		#20;
		
		go=1;
		#300;
		
		
		
		
		

	end
	
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

