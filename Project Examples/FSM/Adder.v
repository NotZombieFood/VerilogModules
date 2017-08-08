`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:09:18 05/08/2016 
// Design Name: 
// Module Name:    Adder 
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
module Adder(
    input [7:0] A,
    input En,
	 input Reset,
    output reg [15:0] Sum
    );
reg [15:0] Z;
always @* begin
Z=A+Sum;
if (Reset)
Sum <= 0;
end
always @ (posedge En) begin
Sum<=Z ;
end

endmodule
