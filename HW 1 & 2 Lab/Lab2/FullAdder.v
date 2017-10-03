module FullAdder(
	input ci,
			a,
			b,
	output s,
			 co
);

	assign s = (a^b)^ci;
	assign co= ((a^b)==0)?b:ci;

endmodule