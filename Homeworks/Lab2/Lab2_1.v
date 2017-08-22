`timescale 1ns / 1ps


module Lab2_1(
    input [5:0] switch,
    output reg [6:0] num0,
    output reg [6:0] num1
    );
   
   reg [3:0] unidades;
   reg [3:0] decenas;
  always @ (switch) begin
   if (switch > 60) begin
     decenas = 6;
     unidades = switch-60;
  end
  
  else if (switch > 50 ) begin
     decenas = 5;
     unidades = switch-50;  
  end
  
  else if (switch > 40 ) begin
     decenas = 4;
     unidades = switch-40;  
  end
  
  else if (switch > 30 ) begin
     decenas = 3;
     unidades = switch-30;  
  end
  
  else if (switch > 20 ) begin
     decenas = 2;
     unidades = switch-20;  
  end
  
  else if (switch > 10 ) begin
     decenas = 1;
     unidades = switch-10;  
  end
  
  else begin
     decenas = 0;
     unidades = switch;
  end 
end
//always for driven digit [0] in the first seven segment display
  always @ * begin
    case (unidades)
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

//always for driven digit [1] in the first seven segment display
  always @ * begin
    case (decenas)
      4'b0000: num1 = 7'b1000000; //0 
      4'b0001: num1 = 7'b1111001; //  1
      4'b0010: num1 = 7'b0100100; //2
      4'b0011: num1 = 7'b0110000; //3
      4'b0100: num1 = 7'b0011001; //4
      4'b0101: num1 = 7'b0010010; //5
      4'b0110: num1 = 7'b0000010; //6
      4'b0111: num1 = 7'b1111000; //7
      4'b1000: num1 = 7'b0000000; //8
      4'b1001: num1 = 7'b0011000; //9
    endcase
end

endmodule
