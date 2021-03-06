`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:58:19 09/06/2017 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(
    input [7:0] A,
    input [7:0] B,
    input clk,
    input rst,
	 input go,
    output [8:0] sum,
	 output [6:0] HEX_0,
	 output [6:0] HEX_1,
	 output [6:0] HEX_2,
	 output [6:0] HEX_3
    );
	 
	 wire register_1;
	 wire register_2;
	 wire [1:0] suma;
	 wire carry_out;
	 wire sum_out;
	 wire flag;
	 wire [8:0] presum;
	 wire wire_enable;
	 wire wire_load;
	 wire wire_rst;
	 wire [11:0] display;
	 wire wire_rst_reg;
	 wire wirerst;
	 wire wirego;
	 reg carry;
	 
	 assign wirerst= ~rst;
	 assign wirego = ~go;
	 
	 
	 Shift_register r1(
	 .A(A),
	 .load(wire_load),
	 .enable(wire_enable),
	 .clk(clk),
	 .rst(wire_rst_reg),
	 .shift(register_1)
	 );
	 
	 Shift_register r2(
	 .A(B),
	 .load(wire_load),
	 .enable(wire_enable),
	 .clk(clk),
	 .rst(wire_rst_reg),
	 .shift(register_2)
	 );
	 
	 Shift_register2 r3(
	 .A(sum_out),
	 .rst(wire_rst),
	 .enable(wire_enable),
	 .clk(clk),
	 .shift(presum)
	 );
	 
	 assign sum = presum;
	 assign display[8:0] = presum;
	 assign display [11:9] = 0;
	 
	 //Register
	 
	 always @(posedge clk) begin
		if (wirerst == 1 ) begin
			carry = 0;
		end
		else begin
			carry = carry_out;
		end
	 end
	 
	 //Adder
	 assign suma = register_1 + register_2 + carry;
	 assign carry_out = suma[1];
	 assign sum_out = suma [0];
	 
	 FSM fs(
		.clk(clk),
		.go(wirego),
		.Mrst(wirerst),
		.counterflag(flag),
		.rst_sum(wire_rst),
		.rst_reg(wire_rst_reg),
		.enable(wire_enable),
		.load(wire_load)
	 );
	 
	 counter c1(
		.clk(clk),
		.rst(wire_rst),
		.en_count(wire_enable),
		.compare(flag)
	 );
	 
	 Display_12bits d1(
		.SW(display),
		.HEX_0(HEX_0),
		.HEX_1(HEX_1),
		.HEX_2(HEX_2),
		.HEX_3(HEX_3)
	 );
	
	 

		
endmodule

