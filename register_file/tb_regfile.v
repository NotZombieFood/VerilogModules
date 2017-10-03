// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

  `include "defines.v"

module tb_regfile;

	localparam SIZE 	= 32;
	localparam NUM_REGS 	= 16;

	// Inputs
	reg clk;
	reg [SIZE-1:0] W_data;
	reg [(`CLOG2(NUM_REGS))-1:0] W_addr;
	reg W_en;
	reg [(`CLOG2(NUM_REGS))-1:0] R_addr;
	reg R_en;

	// Outputs
	wire [SIZE-1:0] R_data;

	// Instantiate the Unit Under Test (UUT)
	reg_file #(NUM_REGS,SIZE) uut (
		.clk(clk), 
		.wr_data(W_data), 
		.wr_addr(W_addr), 
		.wr_en(W_en), 
		.rd_addr(R_addr), 
		//.R_en(R_en), 
		.rd_data(R_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		W_data = 0;
		W_addr = 0;
		W_en = 0;
		R_addr = 0;
		R_en = 0;

		// Wait 100 ns for global reset to finish
		#20;

		W_data = 8'hFF;
		W_addr = 0;
		W_en = 1;
		R_addr = 0;
		R_en = 0;

		#10;
		W_data = 8'hFE;
		W_addr = 1;
		
		#10;
		W_data = 8'hAA;
		W_addr = 2;
		
		#5;
		R_addr = 1;
		R_en = 1;
		
		#5;
		W_data = 8'h5A;
		W_addr = 15;
		
		#10;
		R_addr = 15;
		R_en = 0;
		
		#10;
		R_addr = 15;
		R_en = 1;
		
		#5;
		W_en = 0;
		
	
		
		// Add stimulus here

	end
      
	initial begin
	
		forever #5 clk = ~clk;
	end

endmodule 