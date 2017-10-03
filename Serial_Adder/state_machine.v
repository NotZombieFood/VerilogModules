`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:13:37 09/08/2017 
// Design Name: 
// Module Name:    state_machine 
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
   input rst,
   input counterflag,
   output reg [1:0] STATE
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
	if (~rst)
		STATE <= 0;
	else
		STATE<= NXT_STATE;
end


endmodule
