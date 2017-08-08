`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESM
// Engineer: Gerardo Cruz
// 
// Create Date:    01:32:56 05/01/2016 
// Design Name: 
// Module Name:    Counter 
// Project Name: Final project for the Digital Design Class
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
    input SensorP,
    input Reset,
	 input [7:0] Compare,
    output Result,
	 reg [7:0] Count
    );
reg [7:0] Z;
assign Result = (Count ==Compare);
always @* begin
Z=Count+1;
if (Reset)
Count <= 0;
end
always @ (posedge SensorP) begin
/*if (Reset)
Count <= 0;
else*/
Count <= Z;
end
endmodule
