`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESM
// Student: Gerardo Cruz
// Module Name:    ClockDevider
// Project Name: Final project for the Digital Design Class
// Target Devices: Altera DE2-70
//////////////////////////////////////////////////////////////////////////////////

module clockDevider(
		input clk,
		input rst,
		output pulse
    );
	reg [25:0] counter;
	always @ (posedge clk) begin
		if (rst)
			counter <=0;
		else
			counter <= counter+1;
	end
// 50,000,000 in binary just in case 10111110101111000010000000
assign  pulse = (counter == 50000000);



endmodule
