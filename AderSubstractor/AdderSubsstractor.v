`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:46 04/23/2017 
// Design Name: 
// Module Name:    AdderSubsstractor 
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
module AdderSubsstractor(
    input [7:0] a,
	 input [7:0] b,
    output [7:0] c,
	 output negative,
	 output zero,
	 output overflow
	 );
	 
	wire [7:0] s;
	wire [7:0] n;

	assign s = a + b;
	assign n = ~s;
			
	and(zero, n[0], n[1], n[2], n[3], n[4], n[5], n[6], n[7]);

	assign c = s;
	
	assign overflow = (~a[7] & ~b[7] & s[7]) | ( a[7] & b[7] & ~s[7] );

endmodule
