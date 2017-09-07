module shift(
  input [7:0] A,
    input load,
    input enable,
    input clk,
	 input rst,
	 output shift
    );
	 
	 reg [7:0] register;
	 
	 always @ ( posedge clk) begin
		if ( rst == 1 ) begin
			register = 0;
		end
		else begin
			if ( enable == 1 ) begin
				if ( load == 1 ) begin
					register = A;
				end
				else begin
					register = register >> 1;
				end
			end
		end
	 end
	 
	 assign shift = register[0];


endmodule
