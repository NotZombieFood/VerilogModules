`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:54:54 08/08/2017 
// Design Name: 
// Module Name:    clkpulsegen 
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
module clkpulsegen(
    input clk,        //50 Mhz clk
    input rst,
    output pulse      //Suposer clk @ 1hz
    );
	 
	 reg [17:0] counter;  // big enough to hold value d'256,000

	always @ (posedge clk) begin
		if (rst|pulse)
		counter <= 0;
		else 
		counter <= counter +1;
	end
	
	assign pulse = (counter == 49999999);

endmodule
