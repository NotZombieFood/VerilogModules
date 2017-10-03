`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:08:10 04/27/2017 
// Design Name: 
// Module Name:    Counter 
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
module Counter(
    input clk,
    input rst,
    input up_down,
	 input load,
	 input [7:0] data,
	 input [7:0]reset_variable,
    output reg [7:0] count
    );
	 
	 wire[7:0] add_b;
	 wire reset_comparador;
	 reg [7:0] adder_out;
	 reg [7:0] nxt_count;
	 
	//short if      if up_down ==1      we count up
		assign add_b = up_down ? 1 : -1;
	//combinational adder using an always block
		always @ * begin
			adder_out = count + add_b;
		end
		
	// sequential logic modeling - (Rising edge triggered F-Flop)
		always @ (posedge clk) begin
			//reset
			if (rst | reset_comparador) begin
				count <= 0;
			end
			else begin
				count <= nxt_count;
			end
		end
		
	// Comparador
		assign reset_comparador = (reset_variable==count) ? 1:0;
		
	//Segundo mux
	always @ * begin
		nxt_count = load ? data: adder_out;
	end
		
endmodule
