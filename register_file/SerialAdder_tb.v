`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:24:33 09/05/2017 
// Design Name: 
// Module Name:    SerialAdder_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SerialAdder_tb;
	//Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg rstN;
	reg start;
	reg clk;
	
	//Outputs
	wire sum;

	//Wires
	wire rst;
	wire ld;
	wire en;

// Instantiate the Unit Under Test (UUT)
	DataPath utt(
		.a(A),
		.b(B),
		.clk(clk),
		.rst(rst),
		.ld(ld),
		.en(en),
		.sum(sum)
	);
	
	Control utt(
		.clk(clk),
		.rstN(rstN),
		.start(start),
		.rst(rst),
		.ld(ld),
		.en(en)
	);

	initial begin
		forever #10 clk = ~clk;
	end

	initial begin	
	//3+9
	rstN = 1;
	#150;
	
	rstN = 0;
	#10;
	
	A = 8'b3;
	B = 8'b9;
	start = 1;
	#150;
	
	start = 0;
	#10;
	
	//25+5
	rstN = 1;
	#150;
	
	rstN = 0;
	#10;
	
	A = 8'b25;
	B = 8'b5;
	start = 1;
	#150;
	
	start = 0;
	#10;
	
	//99+1
	rstN = 1;
	#150;
	
	rstN = 0;
	#10;
	
	A = 8'b99;
	B = 8'b1;
	start = 1;
	#150;
	
	start = 0;
	#10;
	
	end
	
		


endmodule
