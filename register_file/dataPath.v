`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:18 09/06/2017 
// Design Name: 
// Module Name:    dataPath 
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
module dataPath(
input clk,
input rst,
input enable,
output reg compare,
output [3:0] addr
    );
	 
reg [3:0]contador;

assign addr = contador;

always @ (posedge clk) begin
	if (rst == 1) begin
		contador = 0;
	end
	else begin
		if ( enable == 1 ) begin
			contador = contador + 1;
		end
	end
end

always @ * 
	if (contador >= 15 ) compare = 1;
	else compare = 0;


endmodule
