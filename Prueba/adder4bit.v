`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:31:32 04/20/2017 
// Design Name: 
// Module Name:    adder4bit 
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
module adder4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );

		wire co0, co1, co2;
		
		fulladder FA0 (.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.co(co0));
		fulladder FA1 (.a(a[1]),.b(b[1]),.cin(co0),.sum(sum[1]),.co(co1));
		fulladder FA2 (.a(a[2]),.b(b[2]),.cin(co1),.sum(sum[2]),.co(co2));
		fulladder FA3 (.a(a[3]),.b(b[3]),.cin(co2),.sum(sum[3]),.co(cout));

endmodule
