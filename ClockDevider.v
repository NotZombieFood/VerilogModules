`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESM
// Engineer: Gerardo Cruz
//
// Create Date:    01:32:56 05/01/2016
// Design Name:
// Module Name:    ClockDevider
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
module ClockDevider(
    input clk,
    input Reset,
    output clkResult
    );
reg Count [27:0];
assign clkResult = (Count ==50000000);
assign reset = (Count>50000000)
always @ (posedge clk) begin
if (Reset)
Count <= 0;
else
Count <= Count +1;
end

endmodule
