`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:22:21 04/23/2017
// Design Name:   Comparador1bit
// Module Name:   D:/Verilog/Comparador/Simulador1bit.v
// Project Name:  Comparador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparador1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Simulador1bit;

	// Inputs
	reg A;
	reg B;
	reg igual_i;
	reg mayor_i;
	reg menor_i;

	// Outputs
	wire igual_o;
	wire mayor_o;
	wire menor_o;

	// Instantiate the Unit Under Test (UUT)
	Comparador1bit uut (
		.A(A), 
		.B(B), 
		.igual_i(igual_i), 
		.mayor_i(mayor_i), 
		.menor_i(menor_i), 
		.igual_o(igual_o), 
		.mayor_o(mayor_o), 
		.menor_o(menor_o)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		igual_i = 0;
		mayor_i = 0;
		menor_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 1;
		B = 1;
		igual_i= 1;
		mayor_i = 0;
		menor_i = 0;
		#100;
		
		A = 1;
		B = 0;
		igual_i= 1;
		mayor_i = 0;
		menor_i = 0;
		#100;
		
		A = 0;
		B = 1;
		igual_i= 1;
		mayor_i = 0;
		menor_i = 0;
		#100;
		
		A = 0;
		B = 0;
		igual_i= 1;
		mayor_i = 0;
		menor_i = 0;
		#100;
		
		A = 0;
		B = 0;
		igual_i= 1;
		mayor_i = 1;
		menor_i = 0;
		#100;
		
		A = 0;
		B = 0;
		igual_i= 0;
		mayor_i = 1;
		menor_i = 0;
		#100;
		
		A = 1;
		B = 0;
		igual_i= 1;
		mayor_i = 0;
		menor_i = 1;
		#100;
		
		A = 0;
		B = 0;
		igual_i= 0;
		mayor_i = 0;
		menor_i = 1;
		#100;
		

	end
      
endmodule

