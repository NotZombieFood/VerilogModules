`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:40:33 09/08/2017
// Design Name:   DataPath
// Module Name:   D:/Verilog/Serial_Adder/tst_completo1.v
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

module tst_completo1;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;
	reg rst;
	reg load;
	reg enable;
	reg go;

	// Outputs
	wire [8:0] sum;
	wire [6:0] HEX_0;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;

	// Instantiate the Unit Under Test (UUT)
	DataPath uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst), 
		.load(load), 
		.enable(enable), 
		.go(go), 
		.sum(sum),
		.HEX_0(HEX_0),
		.HEX_1(HEX_1),
		.HEX_2(HEX_2)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 0;
		rst = 0;
		load = 0;
		enable = 0;
		go = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		rst = 1; 
		#20;
		rst=0;
		#100;
		
		go=1;

	end
	
	initial begin
		forever #10 clk=~clk;
	
	end
      
endmodule

