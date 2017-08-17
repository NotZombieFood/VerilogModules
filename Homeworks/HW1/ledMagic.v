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
    input rst,
	 input clk,
	 //output[17:0] oLEDR
	 
	 output [6:0]led
    );
wire enable;

clockDevider altera50mhz (.clk(clk),.pulse(enable),.rst(rst),.test(led));
//intermitent register (.enable(enable),.salida(led));


endmodule
