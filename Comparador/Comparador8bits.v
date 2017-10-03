`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:22 04/23/2017 
// Design Name: 
// Module Name:    Comparador8bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Comparador8bits(
    input [7:0] a,
    input [7:0] b,
    input igual_i,
    input mayor_i,
    input menor_i,
    output igual_o,
    output mayor_o,
    output menor_o
    );
	 
	 wire igual6;
	 wire igual5;
	 wire igual4;
	 wire igual3;
	 wire igual2;
	 wire igual1;
	 wire igual0;
	 
	 wire mayor6;
	 wire mayor5;
	 wire mayor4;
	 wire mayor3;
	 wire mayor2;
	 wire mayor1;
	 wire mayor0;
	 
	 wire menor6;
	 wire menor5;
	 wire menor4;
	 wire menor3;
	 wire menor2;
	 wire menor1;
	 wire menor0;
	 
	 Comparador1bit c7 (
	 .A(a[7]),
	 .B(b[7]),
	 .igual_i(igual_i),
	 .menor_i(menor_i),
	 .mayor_i(mayor_i),
	 .igual_o(igual6),
	 .menor_o(menor6),
	 .mayor_o(mayor6)
	);
	
	 Comparador1bit c6 (
	 .A(a[6]),
	 .B(b[6]),
	 .igual_i(igual6),
	 .menor_i(menor6),
	 .mayor_i(mayor6),
	 .igual_o(igual5),
	 .menor_o(menor5),
	 .mayor_o(mayor5)
	);
	
	Comparador1bit c5 (
	 .A(a[5]),
	 .B(b[5]),
	 .igual_i(igual5),
	 .menor_i(menor5),
	 .mayor_i(mayor5),
	 .igual_o(igual4),
	 .menor_o(menor4),
	 .mayor_o(mayor4)
	);
	
	Comparador1bit c4 (
	 .A(a[4]),
	 .B(b[4]),
	 .igual_i(igual4),
	 .menor_i(menor4),
	 .mayor_i(mayor4),
	 .igual_o(igual3),
	 .menor_o(menor3),
	 .mayor_o(mayor3)
	);
	
	Comparador1bit c3 (
	 .A(a[3]),
	 .B(b[3]),
	 .igual_i(igual3),
	 .menor_i(menor3),
	 .mayor_i(mayor3),
	 .igual_o(igual2),
	 .menor_o(menor2),
	 .mayor_o(mayor2)
	);
	
	Comparador1bit c2 (
	 .A(a[2]),
	 .B(b[2]),
	 .igual_i(igual2),
	 .menor_i(menor2),
	 .mayor_i(mayor2),
	 .igual_o(igual1),
	 .menor_o(menor1),
	 .mayor_o(mayor1)
	);
	
	Comparador1bit c1 (
	 .A(a[1]),
	 .B(b[1]),
	 .igual_i(igual1),
	 .menor_i(menor1),
	 .mayor_i(mayor1),
	 .igual_o(igual0),
	 .menor_o(menor0),
	 .mayor_o(mayor0)
	);
	
	Comparador1bit c0 (
	 .A(a[0]),
	 .B(b[0]),
	 .igual_i(igual0),
	 .menor_i(menor0),
	 .mayor_i(mayor0),
	 .igual_o(igual_o),
	 .menor_o(menor_o),
	 .mayor_o(mayor_o)
	);


endmodule
