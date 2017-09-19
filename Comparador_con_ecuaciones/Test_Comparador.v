`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:58:22 04/23/2017
// Design Name:   Comparador8bits
// Module Name:   D:/Verilog/Comparador_con_ecuaciones/Test_Comparador.v
// Project Name:  Comparador_con_ecuaciones
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

module Test_Comparador;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire igual;
	wire mayor;
	wire menor;

	// Instantiate the Unit Under Test (UUT)
	Comparador8bits uut (
		.a(a), 
		.b(b), 
		.igual(igual), 
		.mayor(mayor), 
		.menor(menor)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 0;
		b = 0;
		#100;
		
		
		a = 22;
		b = 22;
		#100;
		
		
		a = 40;
		b = 5;
		#100;
		
		
		a = 35;
		b = 70;
		#100;
		
		
		a = -6;
		b = 4;
		#100;

	end
      
endmodule

