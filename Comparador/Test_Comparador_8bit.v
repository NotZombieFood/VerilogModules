`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:08:32 04/23/2017
// Design Name:   Comparador8bits
// Module Name:   D:/Verilog/Comparador/Test_Comparador_8bit.v
// Project Name:  Comparador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparador8bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Comparador_8bit;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg igual_i;
	reg mayor_i;
	reg menor_i;

	// Outputs
	wire igual_o;
	wire mayor_o;
	wire menor_o;

	// Instantiate the Unit Under Test (UUT)
	Comparador8bits uut (
		.a(a), 
		.b(b), 
		.igual_i(igual_i), 
		.mayor_i(mayor_i), 
		.menor_i(menor_i), 
		.igual_o(igual_o), 
		.mayor_o(mayor_o), 
		.menor_o(menor_o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		igual_i = 0;
		mayor_i = 0;
		menor_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 0;
		b = 0;
		igual_i = 1;
		mayor_i = 0;
		menor_i = 0;
		#100;
		
		a = 100;
		b = 85;
		igual_i = 1;
		mayor_i = 0;
		menor_i = 0;
		#100;

		a = 25;
		b = 73;
		igual_i = 1;
		mayor_i = 0;
		menor_i = 0;
		#100;

		a = 0;
		b = 0;
		igual_i = 0;
		mayor_i = 1;
		menor_i = 0;
		#100;

		a = 0;
		b = 0;
		igual_i = 0;
		mayor_i = 0;
		menor_i = 1;
		#100;

		a = 50;
		b = 0;
		igual_i = 0;
		mayor_i = 0;
		menor_i = 1;
		#100;
		
		a = -6;
		b = -5;
		igual_i = 1;
		mayor_i = 0;
		menor_i = 0;
		#100;

	end
      
endmodule

