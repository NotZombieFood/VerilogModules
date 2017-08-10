`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESM
// Student: Gerardo Cruz
// Create Date:    01:32:56 05/01/2016
// Design Name:
// Module Name:   intermitentLED
// Project Name: Digital Design LAB HW 1
// Target Devices: ALTERA DE2-70
//
//////////////////////////////////////////////////////////////////////////////////
module ledMagic(
  input[3:0] iKEY,
	 input iCLK_50,
	 output[17:0] oLEDR
    );
wire enable;

clockDevider altera50mhz (.clk(iCLK_50),.pulse(enable),.rst(iKEY[3]),.test(oLEDR[17]));
intermitent register (.enable(enable),.salida(oLEDR[16]));


endmodule
