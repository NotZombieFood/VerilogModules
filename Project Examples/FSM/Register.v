`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:31:55 05/08/2016 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input Load,
    input [7:0] A,
	 input Clk,
	 input Reset,
    output reg [7:0] NumPills
    );
always @ (posedge Clk) begin
if (Load)
NumPills <= A;
else if (Reset)
NumPills <=0;
end


endmodule
