`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// University: ITESM
// Student: Gerardo Cruz
// Module Name: ClockDevider
// Target Devices: Altera DE2-70
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
