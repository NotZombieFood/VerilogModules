module part4(
		input [7:0] sw,
		input carryIn,
		output reg [6:0] num0,
		output reg [6:0] num1

    );
reg  [7:0] sum;
reg [3:0] digit1;
reg [3:0] digit2 ;
reg [5:0] z;
reg cout;
 
always @ * begin
if (sum>9) begin
		z <= 10;
		cout <= 1;
	end else begin
		z <= 0;
		cout <= 0;
	end
 end
always @ (sw) begin
sum = sw[7:4] + sw[3:0] + carryIn;
digit1 =  sum -z;
digit2 = cout;
end
 
//Drive for seven segment
//always for driven digit [0] in the first seven segment display
  always @ * begin
    case (digit1)
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
 //always for driven digit [0] in the first seven segment display
  always @ * begin
    case (digit2)
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
