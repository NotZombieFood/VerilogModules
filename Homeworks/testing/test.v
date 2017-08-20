`timescale 1ns / 1ps


module Lab2_1(
		input [7:0] switch,
		output  [6:0] num0,
		output  [6:0] num1,
		output [7:0] led 
    );
   assign  num0 [0] = switch[0] ;
   assign  num0 [1] = switch[1] ;
   assign  num0 [2] = switch[2] ;
   assign  num0 [3] = switch[3] ;
   assign  num0 [4] = switch[4] ;
   assign  num0 [5] = switch[5] ;
   assign  num0 [6] = switch[6] ;
   assign  num0 [0] = switch[0] ;
   assign  num1 [1] = switch[1] ;
   assign  num1 [2] = switch[2] ;
   assign  num1 [3] = switch[3] ;
   assign  num1 [4] = switch[4] ;
   assign  num1 [5] = switch[5] ;
   assign  num1 [6] = switch[6] ;
endmodule
