`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:58:28 08/27/2017
// Design Name:   Divisor
// Module Name:   D:/Verilog/ALU/divisor_test2.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divisor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module divisor_test2;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] Cociente;
	wire [7:0] Residuo;
	wire [7:0] d;
	wire [15:0] prs;
	wire [3:0] conta;
	wire [7:0] wA;
	wire [7:0] wQ;
	wire ctrl;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	Divisor uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.rst(rst), 
		.Cociente(Cociente), 
		.Residuo(Residuo),
		.d(d),
		.prs(prs),
		.conta(conta),
		.wA(wA),
		.wQ(wQ),
		.ctrl(ctrl),
		.e(e)
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
		rst= 1;
		#30;
		rst = 0;
		A = 8;
		B = 4;
		#300;
		
		rst= 1;
		#30;
		rst = 0;
		A = 1;
		B = 1;
		#300;
		
		rst= 1;
		#30;
		rst = 0;
		A = 9;
		B = 2;
		#300;
		
		rst= 1;
		#30;
		rst = 0;
		A = 156;
		B = 43;
		#300;

	end
	
	initial begin
		forever #10 clk = ~clk;
	end
      
endmodule

