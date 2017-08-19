`timescale 1ns / 1ps


module part2(
	input [3:0] switch,
	output reg [6:0] num0,
	output [6:0] num0
    );
  wire comparator;
  assign comparator = (switch>9);
  wire [3:0] mux;  
  wire [3:0] MAGIC;
  //wire [3:0] mux;
//MUX at logic level
  assign mux = ((comparator&MAGIC)|(~comparator&switch));
  //combinatorial logic using the comparator to drive the second seven segment display, alternating between 0s and 1s
  assign num0[0]=1;
  assign num0[1]=1;
  assign num0[2]=(~comparator);
  assign num0[3]=(~comparator);
  assign num0[4]=(~comparator);
  assign num0[5]=(~comparator);
  assign num0[6]=0;
 //always for driven digit [0] in the first seven segment display
  always @ * begin
    case (mux)
      4'b0000: num0  = 7'b0111111 ; //asignar 0
      4'b0001: num0  = 7'b0000011 ; //asignar 1
      4'b0010: num0  = 7'b1011011 ; //asignar 2
      4'b0011: num0  = 7'b1001111 ; //asignar 3
      4'b0100: num0  = 7'b1100011 ; //asignar 4
      4'b0101: num0  = 7'b1101101 ; //asignar 5
      4'b0110: num0  = 7'b1000111 ; //asignar 6
      4'b0111: num0  = 7'b0111111 ; //asignar 7
      4'b1000: num0  = 7'b1111111 ; //asignar 8
      4'b1001: num0  = 7'b1100111 ; //asignar 9
      default: num0  = 7'b0111111 ; //asignar 0
    endcase
end
//logic for 10 to 15
assign MAGIC [3] = 0;
assign MAGIC [2] = (switch[2]&switch[1]);
assign MAGIC [1] = (switch[2]&~switch[1]);
assign MAGIC [0] = (switch[0]);

endmodule
