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

module intermitent (enable, salida);
input enable;
output reg salida;
always @ (posedge enable) begin
  if (salida==1)
    salida <=0;
  else
    salida <= 1;
end
endmodule
