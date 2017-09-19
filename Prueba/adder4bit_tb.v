`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:07:59 04/20/2017
// Design Name:   adder4bit
// Module Name:   D:/Verilog/Prueba/adder4bit_tb.v
// Project Name:  Prueba
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder4bit_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder4bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 3;
		b = 2;
		cin = 1;
		#100;
		
		a = 1;
		b = 0;
		cin = 0;
		#100;
		
		a = 12;
		b = 1;
		cin = 0;
		#100;
		
		a = 5;
		b = 7;
		cin = 1;
		#100;
		
		a = 4;
		b = 6;
		cin = 1;
		#100;

		a = 15;
		b = 15;
		cin = 1;
	

	end
      
endmodule

