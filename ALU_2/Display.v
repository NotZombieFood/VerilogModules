`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:13 08/31/2017 
// Design Name: 
// Module Name:    Display 
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
module Display(
	 input [7:0] SW,
    output reg[6:0] HEX_0,
    output reg[6:0] HEX_1,
	 output reg[6:0] HEX_2
    );
	 
	 reg [3:0] unidades;
	 reg [3:0] decenas;
	 reg [3:0] centenas;
	 reg [7:0] sc;
		
	 always @ * begin
	 
		if (SW > 200) begin
			centenas = 2;
			sc = SW-200;
		end
		else if (SW > 100) begin
			centenas = 1;
			sc = SW-100;
		end
		else begin
			centenas = 0;
			sc = SW;
		end
		
	if (sc > 60) begin
		 decenas = 6;
		 unidades = sc-60;
		end
	
	else if (sc > 50 ) begin
		decenas = 5;
		unidades = sc-50;	
		end
	
	else if (sc > 40 ) begin
		decenas = 4;
		unidades = sc-40;	
		end
	
	else if (sc > 30 ) begin
		decenas = 3;
		unidades = sc-30;	
		end
	
	else if (sc > 20 ) begin
		decenas = 2;
		unidades = sc-20;	
		end
	
	else if (sc > 10 ) begin
		decenas = 1;
		unidades = sc-10;	
		end
	
	else begin
		decenas = 0;
		unidades = sc;
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

endmodule
