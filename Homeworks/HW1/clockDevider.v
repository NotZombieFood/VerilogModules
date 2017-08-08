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

module clockDevider(
		input clk,
		input rst,
		output pulse
    );
	reg [25:0] counter;
	always @ (posedge clk) begin
		if (rst|pulse)
			counter <=0;
		else
			counter <= counter+1;
	end

	assign  pulse = (counter == 49999999);

endmodule
