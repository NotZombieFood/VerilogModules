`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:18:13 04/20/2017 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(
    input a,
    input b,
    input cin,
    output sum,
    output co
    );

	//Logic definition starts here
	
	assign sum = a^b^cin;
	assign co = (a&b)|((a^b)&cin);

endmodule
