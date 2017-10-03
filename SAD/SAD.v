`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:37 09/24/2017 
// Design Name: 
// Module Name:    SAD 
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
module SAD(
	//input [7:0] A_data,
	//input [7:0] B_data,
	input clk,
	input go,
	input Mrst,
	//output [8:0] AB_addr,
	output [31:0] sad
    );
	 
	//Cables
	wire comp;
	wire rst;
	wire en;
	wire en_reg;
	wire [7:0] A_data;
	wire [7:0] B_data;
	wire [8:0] i;
	wire [7:0] substract;
	wire [7:0] abs;
	wire [31:0]sum;
	wire [31:0] adder;
	
	//Asignaci�n de salidas
	assign AB_addr = i;
	
	//FSM
	FSM FSM1(
		.go(go),
		.clk(clk),
		.comp(comp),
		.Mrst(Mrst),
		.rst(rst),
		.en(en),
		.en_reg(en_reg)
	);
	
	//Comparador
	Comparator C1(
		.i(i),
		.comp(comp)
	);
	
	//Counter
	counter Count1 (
		.en(en),
		.rst(rst),
		.clk(clk),
		.i(i)
	);
	
	//Substractor
	Substractor subs1(
		.A_data(A_data),
		.B_data(B_data),
		.substract(substract)
	);
	 
	//ABS
	ABS abs1(
		.substract(substract),
		.abs(abs)
	);
	
	//Adder
	Adder add1(
		.abs(abs),
		.sum(sum),
		.adder(adder)
	);
	
	//Sum
	Sum sum1(
		.rst(rst),
		.clk(clk),
		.en(en),
		.adder(adder),
		.sum(sum)
	);
	
	//sad_reg 
	sad_reg sad1(
		.rst(rst),
		.clk(clk),
		.en(en_reg),
		.sum(sum),
		.sad(sad)
	);
	
	//Rom_A
	ROM_A r1(
		.a(i),
		.spo(A_data)
	);
	
	//Rom_B
	ROM_B r2(
		.a(i),
		.spo(B_data)
	);
	

endmodule


