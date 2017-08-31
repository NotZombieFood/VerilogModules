`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// University: ITESM
// Student: Gerardo Cruz
// Module Name:    ClockDevider
// Target Devices: Altera DE2-70
//////////////////////////////////////////////////////////////////////////////////

module clockDevider(
		input clk,
		input rst,
		output pulse,
    );
	reg [25:0] counter;
	// 50,000,000 in binary just in case 10111110101111000010000000

	always @ (posedge clk) begin
		if (!rst|pulse)
			counter <=0;
		else
			counter <= counter+1;
	end

assign pulse = (counter ==50000000);

endmodule
