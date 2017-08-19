`timescale 1ns / 1ps


module part1(
		input [7:0] switch,
		output reg [6:0] display1,
		output reg [6:0] display2

    );
  always @ * begin
    case (switch[3:0])
      4'b0000: display1 = 7'b0111111 ; //asignar 0
      4'b0001: display1 = 7'b0000011 ; //asignar 1
      4'b0010: display1 = 7'b1011011 ; //asignar 2
      4'b0011: display1 = 7'b1001111 ; //asignar 3
      4'b0100: display1 = 7'b1100011 ; //asignar 4
      4'b0101: display1 = 7'b1101101 ; //asignar 5
      4'b0110: display1 = 7'b1000111 ; //asignar 6
      4'b0111: display1 = 7'b0111111 ; //asignar 7
      4'b1000: display1 = 7'b1111111 ; //asignar 8
      4'b1001: display1 = 7'b1100111 ; //asignar 9
      default: display1  = 7'b0111111 ; //asignar 0
    endcase
  end
  always @ * begin
    case (switch[7:4])
      4'b0000: display2  = 7'b0111111 ; //asignar 0
      4'b0001: display2  = 7'b0000011 ; //asignar 1
      4'b0010: display2  = 7'b1011011 ; //asignar 2
      4'b0011: display2  = 7'b1001111 ; //asignar 3
      4'b0100: display2  = 7'b1100011 ; //asignar 4
      4'b0101: display2  = 7'b1101101 ; //asignar 5
      4'b0110: display2  = 7'b1000111 ; //asignar 6
      4'b0111: display2  = 7'b0111111 ; //asignar 7
      4'b1000: display2  = 7'b1111111 ; //asignar 8
      4'b1001: display2  = 7'b1100111 ; //asignar 9
      default: display1  = 7'b0111111 ; //asignar 0
    endcase
end
endmodule
