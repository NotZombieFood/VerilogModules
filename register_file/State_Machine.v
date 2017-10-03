`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:20:22 09/06/2017 
// Design Name: 
// Module Name:    State_Machine 
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
module State_Machine(
input go,
input compare,
input clk,
input Mrst,
output reg rst,
output reg enable,
output reg activo
    );
	 
reg [2:0] state, nextState;

always @ * begin
	case(state)
		0: //wait
		if (go == 1) nextState = 1;
		else nextState = 0;
		1: //initial
		nextState = 2;
		2: // enable;
		nextState = 4;
		3: //Compare
		if ( compare == 1 ) nextState=0;
		else nextState = 2;
	endcase
end
	
always @ (posedge clk) begin
	if (Mrst == 1 ) state = 0;
	else state = nextState;
end

always @ * begin
	if (Mrst == 1 ) begin
		rst = 1;
		enable = 0;
	end
	else begin
	case (state)
		0: begin
		activo = 0;
		rst = 0;
		enable = 0;
		end
		1: begin//initial
		activo = 1;
		rst = 1;
		enable = 0;
		end
		2: begin// S0
		activo = 1;
		rst = 0;
		enable = 1;
		end
		3: begin //compare
		activo = 1;
		rst = 0;
		enable = 0;
		end
	endcase
	end
end

endmodule
