`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:33:54 09/08/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(input clk, input rst, input en_count, output compare);
reg [3:0] count;
always @(posedge clk) begin
    if (rst) count =0;
	 else begin
		if (en_count)
			count <= count + 1;
	end
end
assign compare = (count==8);
endmodule
