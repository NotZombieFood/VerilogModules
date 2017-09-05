module test;

	// Inputs
	reg clk;
	reg start;
	reg rst;


	// Outputs
	wire flag;
	wire [31:0] data;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.start(start), 
		.rst(rst), 
		.flag(flag), 
		.data(data)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		rst=1;
		start=0;
		#100;
		rst=0;
		start = 1;
		#100;
		start=0;

	end
 	
	initial begin
		forever #5 clk = ~clk;
	end     
	

endmodule

