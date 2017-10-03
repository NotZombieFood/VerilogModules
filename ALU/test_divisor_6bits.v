`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:00:19 08/28/2017
// Design Name:   Divisor_6bits
// Module Name:   D:/Verilog/ALU/test_divisor_6bits.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divisor_6bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_divisor_6bits;

	// Inputs
	reg [5:0] A;
	reg [5:0] B;
	reg clk;
	reg rst;
	
	// Outputs
	wire [5:0] Cociente;
	wire [5:0] Residuo;
	wire neg;
	wire [6:0]HEX_0;
	wire [6:0]HEX_1;
	wire [6:0] HEX_2;

	// Instantiate the Unit Under Test (UUT)
	Divisor_6bits uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst), 
		.Cociente(Cociente), 
		.Residuo(Residuo), 
		.neg(neg),
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

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		rst = 1;
		#30;
		rst = 0;
		A = 16;
		B = 2;
		#300;
		
		rst = 1;
		#30;
		rst = 0;
		A = -30;
		B = 4;
		#300;
		
		rst = 1;
		#30;
		rst = 0;
		A = -120;
		B = -80;
		#300;
		
		rst = 1;
		#30;
		rst = 0;
		A = -30;
		B = 7;
		#300;


	end
	
	initial begin 
		forever #10 clk = ~clk;
	end
      
endmodule

