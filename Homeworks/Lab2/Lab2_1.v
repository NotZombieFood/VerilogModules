`timescale 1ns / 1ps


module Lab2_1(
  input [3:0] switch,
  output reg [6:0] num0,
  output [6:0] num1 
    );
  wire comparator;
  assign comparator = (switch>9);
  reg [3:0] mux;  
  wire [3:0] MAGIC;
  

//10 is 1010 then it must be 0000
//11 is 1011 then it must be 0001 
//12 is 1100 then it must be 0010
//13 is 1101 then it must be 0011
//14 is 1110 then it must be 0100
//15 is 1111 then it must be 0101
//logic for 10 to 15
assign MAGIC [3] = 0;
assign MAGIC [2] = (switch[2]&switch[1]);
assign MAGIC [1] = (switch[2]&~switch[1]);
assign MAGIC [0] = (switch[0]);
  
//MUX at logic level
always @*begin
  case (comparator)
    1'b0: mux <= switch; //0 
    1'b1: mux <= MAGIC; //  1
  endcase
end
  //combinatorial logic using the comparator to drive the second seven segment display, alternating between 0s and 1s
  assign num1[0]=(comparator);
  assign num1[1]=0;
  assign num1[2]=0;
  assign num1[3]=(comparator);
  assign num1[4]=(comparator);
  assign num1[5]=(comparator);
  assign num1[6]=1;
 //always for driven digit [0] in the first seven segment display
  always @ * begin
    case (mux)
      4'b0000: num0 = 7'b1000000; //0 
      4'b0001: num0 = 7'b1111001; //  1
      4'b0010: num0 = 7'b0100100; //2
      4'b0011: num0 = 7'b0110000; //3
      4'b0100: num0 = 7'b0011001; //4
      4'b0101: num0 = 7'b0010010; //5
      4'b0110: num0 = 7'b0000010; //6
      4'b0111: num0 = 7'b1111000; //7
      4'b1000: num0 = 7'b0000000; //8
      4'b1001: num0 = 7'b0011000; //9
    endcase
end
endmodule
