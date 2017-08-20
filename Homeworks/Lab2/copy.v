`timescale 1ns / 1ps


module Lab2_1(
		input [7:0] switch,
		output reg [6:0] num0,
		output reg [6:0] num1,
		output [7:0] led 
    );
   always @ * begin
    case (switch[7:4])
      4'b0000: num0 = 7'b0111111; //0 
      4'b0001: num0 = 7'b0000110; //  1
      4'b0010: num0 = 7'b1011011; //2
      4'b0011: num0 = 7'b1001111; //3
      4'b0100: num0 = 7'b1100110; //4
      4'b0101: num0 = 7'b1101101; //5
      4'b0110: num0 = 7'b1111101; //6
      4'b0111: num0 = 7'b0000111; //7
      4'b1000: num0 = 7'b1111111; //8
      4'b1001: num0 = 7'b1100111; //9
    endcase
  end
     assign led[0] = (switch [0]);
   assign led[1] = (switch [1]);
   assign led[2] = (switch [2]);
   assign led[3] = (switch [3]);
   assign led[4] = (switch [4]);
   assign led[5] = (switch [5]);
   assign led[6] = (switch [6]);
   assign led[7] = (switch [7]);

  always @ * begin
    case (switch[3:0])
      4'b0000: num1 = 7'b011111; //0
      4'b0001: num1 = 7'b0000110; //1
      4'b0010: num1 = 7'b1011011; //2
      4'b0011: num1 = 7'b1001111; //3
      4'b0100: num1 = 7'b1100110; //4
      4'b0101: num1 = 7'b1101101; //5
      4'b0110: num1 = 7'b1111101; //6
      4'b0111: num1 = 7'b0000111; //7
      4'b1000: num1 = 7'b1111111; //8
      4'b1001: num1 = 7'b1100111; //9
    endcase
  end
endmodule
