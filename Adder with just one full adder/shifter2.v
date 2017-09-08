module shifter2(
    input  A,
    input rst,
    input enable,
    input clk,
    output [8:0] shift
    );
	 
	 reg [8:0] register;
	 wire [8:0] wire_shift;
	 
	 always @ ( posedge clk ) begin
		if ( rst == 1 ) begin
			register = 0;
		end
		else begin
			if ( enable == 1 ) begin
				register = wire_shift;
			end
		end
	 end
	 
	 assign wire_shift[8] = A;
	 assign wire_shift[7:0] = register[8:1];
	 assign shift = register;

endmodule