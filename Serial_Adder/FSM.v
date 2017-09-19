`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:27:26 09/08/2017 
// Design Name: 
// Module Name:    FSM 
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
module FSM
  (input clk,
   input go,
   input Mrst,
   input counterflag,
   output reg [1:0] STATE,
	output reg rst_sum,
	output reg enable,
	output reg load,
	output reg rst_reg
   );

//internal wires begin
reg [1:0] NXT_STATE;
//internal wires ending

always @ * begin
	case(STATE)
	2'b00: if (go) //wait sate
			NXT_STATE = 2'b01; //if signal start is detected, change the state to working
		else
			NXT_STATE = 2'b00; //if there is not signal detected, just wait
	2'b01:  //working state
		if (counterflag)
			NXT_STATE = 2'b10;
		else
			NXT_STATE = 2'b01;
	2'b10:  //Contamos uno
		if (~go)
			NXT_STATE = 2'b00;
		else
			NXT_STATE = 2'b10; 
	endcase
end
always @ (posedge clk) begin
	if (Mrst)
		STATE <= 0;
	else
		STATE<= NXT_STATE;
end

always @ * begin
	if (Mrst == 1 ) begin
		rst_sum = 1;
		rst_reg=1;
		load = 0;
		enable = 0;
	end
	else begin
	case (STATE)
		0: begin
		if (go == 1) begin
			rst_sum=1;
			enable = 1;	
			load = 1;
			rst_reg=0;
			end
		else rst_reg=1;
		end
		1: begin//initial
			rst_sum = 0;
			rst_reg=0;
			enable = 1;
			load = 0;
		end
		2: begin// S0
			rst_sum = 0;
			rst_reg=0;
			load = 0;
			enable = 0;
		end
	endcase
	end
end



endmodule
