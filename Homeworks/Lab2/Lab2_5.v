module Lab2_5(
		input [7:0] sw,
		input carryIn,
		output reg [6:0] num0,
		output reg [6:0] num1,
    output reg [6:0] numA,
    output reg [6:0] numB

    );
wire  [7:0] sum;
wire [3:0] digit1;
wire [3:0] digit2 ;
reg [4:0] z;
reg cout;
reg [3:0] numA1;
reg [3:0] numB1;

always @ * begin
  if (sw[7:4]>9)
    numA1 = 9;
  else 
    numA1 = sw[7:4];
end
always @ * begin
  if (sw[3:0]>9)
    numB1 = 9;
  else 
    numB1 = sw[3:0];
end
assign sum = numA1 + numB1 + carryIn;

always @ * begin
if (sum>9) begin
		z = 10;
		cout = 1;
	end else begin
		z = 0;
		cout = 0;
	end
 end

 assign digit1 =  sum -z;
assign digit2 = cout;
//Drive for seven segment
//always for digit s1 of the sum in the first seven segment display
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
 //always for  digit s2 of the sum in the first seven segment display
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
//always for digit A of the sum in the first seven segment display
  always @ * begin
    case (numA1)
      4'b0000: numA = 7'b1000000; //0 
      4'b0001: numA = 7'b1111001; //  1
      4'b0010: numA = 7'b0100100; //2
      4'b0011: numA = 7'b0110000; //3
      4'b0100: numA = 7'b0011001; //4
      4'b0101: numA = 7'b0010010; //5
      4'b0110: numA = 7'b0000010; //6
      4'b0111: numA = 7'b1111000; //7
      4'b1000: numA = 7'b0000000; //8
      4'b1001: numA = 7'b0011000; //9
      4'b1010: numA = 7'b0011000; //9
      4'b1011: numA = 7'b0011000; //9
      4'b1101: numA = 7'b0011000; //9
      4'b1110: numA = 7'b0011000; //9
      4'b1100: numA = 7'b0011000; //9

      4'b1111: numA = 7'b0011000; //9


    endcase
end
//always for digit A of the sum in the first seven segment display
  always @ * begin
    case (numB1)
      4'b0000: numB = 7'b1000000; //0 
      4'b0001: numB = 7'b1111001; //  1
      4'b0010: numB = 7'b0100100; //2
      4'b0011: numB = 7'b0110000; //3
      4'b0100: numB = 7'b0011001; //4
      4'b0101: numB = 7'b0010010; //5
      4'b0110: numB = 7'b0000010; //6
      4'b0111: numB = 7'b1111000; //7
      4'b1000: numB = 7'b0000000; //8
      4'b1001: numB = 7'b0011000; //9
      4'b1010: numB = 7'b0011000; //9
      4'b1100: numB = 7'b0011000; //9
      4'b1011: numB = 7'b0011000; //9
      4'b1101: numB = 7'b0011000; //9
      4'b1110: numB = 7'b0011000; //9
      4'b1111: numB = 7'b0011000; //9
    endcase
end
endmodule
