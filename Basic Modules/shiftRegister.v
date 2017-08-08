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

module shiftRegister (C, SI, SO); 
input C,SI;
output SO;
reg [7:0] tmp;

  always @(posedge C)
    begin
      tmp = tmp << 1;
      tmp[0] = SI;
    end
    assign SO  = tmp[7];
endmodule
