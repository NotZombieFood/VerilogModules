`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:13:00 08/18/2017 
// Design Name: 
// Module Name:    Exercise6 
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
module Exercise6(
    input [5:0] SW,
    output reg[6:0] HEX_0,
    output reg[6:0] HEX_1
    );
	 
	 reg [3:0] unidades;
	 reg [3:0] decenas;
	 
	 always @ * begin
		 if (SW > 60) begin
		 decenas = 6;
		 unidades = SW-60;
		end
	
	else if (SW > 50 ) begin
		decenas = 5;
		unidades = SW-50;	
		end
	
	else if (SW > 40 ) begin
		decenas = 4;
		unidades = SW-40;	
		end
	
	else if (SW > 30 ) begin
		decenas = 3;
		unidades = SW-30;	
		end
	
	else if (SW > 20 ) begin
		decenas = 2;
		unidades = SW-20;	
		end
	
	else if (SW > 10 ) begin
		decenas = 1;
		unidades = SW-10;	
		end
	
	else begin
		decenas = 0;
		unidades = SW;
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

endmodule
