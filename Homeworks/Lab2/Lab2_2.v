`timescale 1ns / 1ps


module part2(
		input [3:0] SW,
		output reg [6:0] display1,
		output reg [6:0] display2
    );
  wire comparator;
  assign comparator = (SW>8);
  reg [3:0] mux;
  reg [3:0] MAGIC;
  always @ * begin
    case (comparator)
      1'b0: display2  = 7'b0111111 ; //asignar 0
      1'b1: display2  = 7'b0000011 ; //asignar 1
      default: display2  = 7'b0111111 ; //asignar 0
    endcase
  end
  always @ * begin
    case (comparator)
      1'b0: mux  = SW; //asignar 0
      1'b1: mux  = MAGIC; //asignar 1
      default: mux  = 4'b0000 ; //asignar 0
    endcase
  end
  always @ * begin
    case (mux)
      4'b0000: display1  = 7'b0111111 ; //asignar 0
      4'b0001: display1  = 7'b0000011 ; //asignar 1
      4'b0010: display1  = 7'b1011011 ; //asignar 2
      4'b0011: display1  = 7'b1001111 ; //asignar 3
      4'b0100: display1  = 7'b1100011 ; //asignar 4
      4'b0101: display1  = 7'b1101101 ; //asignar 5
      4'b0110: display1  = 7'b1000111 ; //asignar 6
      4'b0111: display1  = 7'b0111111 ; //asignar 7
      4'b1000: display1  = 7'b1111111 ; //asignar 8
      4'b1001: display1  = 7'b1100111 ; //asignar 9
      default: display1  = 7'b0111111 ; //asignar 0
    endcase
end
always @ * begin
  case (SW)
    4'b0000: MAGIC  = 4'b0000 ; //asignar 0
    4'b0001: MAGIC  = 4'b0001 ; //asignar 1
    4'b0010: MAGIC  = 4'b0010 ; //asignar 2
    4'b0011: MAGIC  = 4'b0011 ; //asignar 3
    4'b0100: MAGIC  = 4'b0100 ; //asignar 4
    4'b0101: MAGIC  = 4'b0101 ; //asignar 5
    default: MAGIC  = 4'b0110 ; //asignar 0
  endcase
end
endmodule
