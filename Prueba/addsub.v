`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:39:49 04/20/2017 
// Design Name: 
// Module Name:    addsub 
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
module addsub(
    input [7:0] A,
    input [7:0] B,
    input ctrl,
    output [7:0] SUM,
    output co,
    output ov,
    output neg,
    output zero
    );

	wire [7:0] bcomp;
	
	assign bcomp = ctrl ? ~B : B;
	
	adder adder0 (.a(A),.b(bcomp),.cin(ctrl),.sum(SUM),.cout(co));
	
	assign zero =(SUM==0) ? 1´b1 : 1´b0;
	assign neg = SUM[7];
	assign ov = (A[7]&bcomp[7]&~SUM[7])| (~A[7]&~bcomp[7]&SUM[7]);
	
	
endmodule
