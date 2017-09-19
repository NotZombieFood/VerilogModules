`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:23:24 08/15/2017 
// Design Name: 
// Module Name:    Exercise1 
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
module Exercise1(
    input [7:0] SW,
    output reg[6:0] HEX1,
    output reg [6:0] HEX2
    );
	 
	  always @ * begin
		case (SW[3:0])
			0: HEX1 = 7'b011111; //0
			1: HEX1 = 7'b0000110; //1
			2: HEX1 = 7'b1011011; //2
			3: HEX1 = 7'b1001111; //3
			4: HEX1 = 7'b1100110; //4
			5: HEX1 = 7'b1101101; //5
			6: HEX1 = 7'b1111101; //6
			7: HEX1 = 7'b0000111; //7
			8: HEX1 = 7'b1111111; //8
			9: HEX1 = 7'b1100111; //9
		endcase
	end
	
	always @ * begin
		case (SW[7:4])
			0: HEX2 = 7'b011111; //0
			1: HEX2 = 7'b0000110; //1
			2: HEX2 = 7'b1011011; //2
			3: HEX2 = 7'b1001111; //3
			4: HEX2 = 7'b1100110; //4
			5: HEX2 = 7'b1101101; //5
			6: HEX2 = 7'b1111101; //6
			7: HEX2 = 7'b0000111; //7
			8: HEX2 = 7'b1111111; //8
			9: HEX2 = 7'b1100111; //9
		endcase
	end
		

endmodule
