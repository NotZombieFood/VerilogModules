`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:41:58 09/01/2017
// Design Name:   ALU
// Module Name:   D:/Verilog/ALU_2/tes_alu_multi.v
// Project Name:  ALU_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tes_alu_multi;

	// Inputs
	reg [5:0] a;
	reg [5:0] b;
	reg [3:0] ctrl;
	reg rst;
	reg start;
	reg clk;

	// Outputs
	wire zero;
	wire [11:0] result;
	wire [6:0] HEX_0;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;
	wire [6:0] HEX_3;
	wire [6:0] HEX_4;
	wire [6:0] HEX_5;
	wire [6:0] HEX_6;
	wire [6:0] HEX_7;
	wire [7:0] puntos;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.ctrl(ctrl), 
		.rst(rst), 
		.start(start), 
		.clk(clk), 
		.zero(zero), 
		.result(result), 
		.HEX_0(HEX_0), 
		.HEX_1(HEX_1), 
		.HEX_2(HEX_2), 
		.HEX_3(HEX_3), 
		.HEX_4(HEX_4), 
		.HEX_5(HEX_5), 
		.HEX_6(HEX_6), 
		.HEX_7(HEX_7), 
		.puntos(puntos)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ctrl = 4'b1001;
		rst = 0;
		start = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		rst = 0;
		#100;
		rst= 0;
		#100;
		start=0;
		#100;
		start = 1;
		#100;
		rst = 0;
		#100;
		rst = 1;
		#100;
		
		a=9;
		b=-7;
		#100;
		
   	start=0;
		#300;
		
		start=1;
		rst=0;
		#100;
		
		rst=1;
		#100;
		
		a=40;
		b=5;
		#100;
		start = 0;
		#300;

	end
	
	initial begin
		forever #10clk = ~clk;

	end
      
endmodule

