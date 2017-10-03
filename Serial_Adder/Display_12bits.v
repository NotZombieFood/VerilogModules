`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:52:48 09/15/2017 
// Design Name: 
// Module Name:    Display_12bits 
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
module Display_12bits(
 input [11:0] SW,
    output reg[6:0] HEX_0,
    output reg[6:0] HEX_1,
	 output reg[6:0] HEX_2,
	 output reg[6:0] HEX_3
    );  //2047
	 
	 reg [3:0] unidades;
	 reg [3:0] decenas;
	 reg [3:0] centenas;
	 reg [3:0] millares;
	 reg [11:0] sc;
	 reg [7:0] dc;
	 
	 always @ * begin 
		if (SW >= 2000 ) begin
			millares = 2;
			sc = SW-2000;
		end
		else if ( SW >= 1000 ) begin
			millares = 1;
			sc = SW-1000;
		end
		else if (SW < 1000 ) begin
			millares = 0;
			sc = SW;
		end
		if (sc >= 900 ) begin
			centenas = 9;
			dc = sc-900;
		end
		else if (sc >= 800 ) begin
			centenas = 8;
			dc = sc-800;
		end
		else if (sc >= 700 ) begin
			centenas = 7;
			dc = sc-700;
		end
		else if (sc >= 600 ) begin
			centenas = 6;
			dc = sc-600;
		end
		else if (sc >= 500 ) begin
			centenas = 5;
			dc = sc-500;
		end
		else if (sc >= 400 ) begin
			centenas = 4;
			dc = sc-400;
		end
		else if (sc >= 300 ) begin
			centenas = 3;
			dc = sc-300;
		end
		else if (sc >= 200 ) begin
			centenas = 2;
			dc = sc-200;
		end
		else if (sc >= 100 ) begin
			centenas = 1;
			dc = sc-100;
		end
		else if (sc < 100 ) begin
			centenas = 0;
			dc = sc;
		end
		if ( dc >= 90 ) begin
			decenas = 9;
			unidades = dc-90;
		end
		else if (dc >= 80 ) begin
			decenas = 8;
			unidades = dc-80;
		end
		else if (dc >= 70 ) begin
			decenas = 7;
			unidades = dc-70;
		end
		else if (dc >= 60 ) begin
			decenas = 6;
			unidades = dc-60;
		end
		else if (dc >= 50 ) begin
			decenas = 5;
			unidades = dc-50;
		end
		else if (dc >= 40 ) begin
			decenas = 4;
			unidades = dc-40;
		end
		else if (dc >= 30 ) begin
			decenas = 3;
			unidades = dc-30;
		end
		else if (dc >= 20 ) begin
			decenas = 2;
			unidades = dc-20;
		end
		else if (dc >= 10 ) begin
			decenas = 1;
			unidades = dc-10;
		end
		else if (dc < 10 ) begin
			decenas = 0;
			unidades = dc;
		end
	 end
	 
	  always @ * begin
		case (unidades)
			4'b0000: HEX_0 = ~(7'b0111111); //0
			4'b0001: HEX_0 = ~(7'b0000110); //1
			4'b0010: HEX_0 = ~(7'b1011011); //2
			4'b0011: HEX_0 = ~(7'b1001111); //3
			4'b0100: HEX_0 = ~(7'b1100110); //4
			4'b0101: HEX_0 = ~(7'b1101101); //5
			4'b0110: HEX_0 = ~(7'b1111101); //6
			4'b0111: HEX_0 = ~(7'b0000111); //7
			4'b1000: HEX_0 = ~(7'b1111111); //8
			4'b1001: HEX_0 = ~(7'b1100111); //9
		endcase
	end
	
	
	always @ * begin
		case (decenas)
			4'b0000: HEX_1 = ~(7'b0111111); //0
			4'b0001: HEX_1 = ~(7'b0000110); //1
			4'b0010: HEX_1 = ~(7'b1011011); //2
			4'b0011: HEX_1 = ~(7'b1001111); //3
			4'b0100: HEX_1 = ~(7'b1100110); //4
			4'b0101: HEX_1 = ~(7'b1101101); //5
			4'b0110: HEX_1 = ~(7'b1111101); //6
			4'b0111: HEX_1 = ~(7'b0000111); //7
			4'b1000: HEX_1 = ~(7'b1111111); //8
			4'b1001: HEX_1 = ~(7'b1100111); //9
		endcase
	end
	
	always @ * begin
		case (centenas)
			4'b0000: HEX_2 = ~(7'b0111111); //0
			4'b0001: HEX_2 = ~(7'b0000110); //1
			4'b0010: HEX_2 = ~(7'b1011011); //2
			4'b0011: HEX_2 = ~(7'b1001111); //3
			4'b0100: HEX_2 = ~(7'b1100110); //4
			4'b0101: HEX_2 = ~(7'b1101101); //5
			4'b0110: HEX_2 = ~(7'b1111101); //6
			4'b0111: HEX_2 = ~(7'b0000111); //7
			4'b1000: HEX_2 = ~(7'b1111111); //8
			4'b1001: HEX_2 = ~(7'b1100111); //9
		endcase
	end
	
	  always @ * begin
		case (millares)
			4'b0000: HEX_3 = ~(7'b0111111); //0
			4'b0001: HEX_3 = ~(7'b0000110); //1
			4'b0010: HEX_3 = ~(7'b1011011); //2
			4'b0011: HEX_3 = ~(7'b1001111); //3
			4'b0100: HEX_3 = ~(7'b1100110); //4
			4'b0101: HEX_3 = ~(7'b1101101); //5
			4'b0110: HEX_3 = ~(7'b1111101); //6
			4'b0111: HEX_3 = ~(7'b0000111); //7
			4'b1000: HEX_3 = ~(7'b1111111); //8
			4'b1001: HEX_3
			= ~(7'b1100111); //9
		endcase
	end
		


endmodule


