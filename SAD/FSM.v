`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:19:14 09/19/2017 
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
module FSM(
    input go,
	 input clk,
	 input comp,
	 input Mrst,
    output reg rst,
    output reg en,
	 output reg en_reg
    );
	 
reg [2:0] NXT_STATE;
reg [2:0] STATE;

//ESTADOS
always @ * begin
	case(STATE)
		3'b000: if (go)     //S0
			NXT_STATE = 3'b001;
		else
			NXT_STATE = 3'b000;
		3'b001:      //S1
			NXT_STATE = 3'b010;
		3'b010: if (comp)     //S2
			NXT_STATE = 3'b100;
		else
			NXT_STATE = 3'b011;
		3'b011:      //S3
			NXT_STATE = 3'b010;
		3'b100:      //S4
			NXT_STATE = 3'b000;
		default: NXT_STATE = 3'b000;
	endcase
end

//ASIGNACION DEL ESTADO
always @ (posedge clk) begin
	if (Mrst)
		STATE <= 0;
	else
		STATE<= NXT_STATE;
end

//OUTPUTS
always @ * begin
	if (Mrst == 1 ) begin
		rst=1;
		en=0;
	end
	else begin
	case (STATE)
		3'b000: begin
			rst=0;
			en=0;
			en_reg=0;
		end
		3'b001: begin
			rst=1;
			en=0;
			en_reg=0;
		end
		3'b010: begin
			rst=0;
			en=0;
			en_reg=0;
		end
		3'b011: begin
			rst=0;
			en=1;
			en_reg=0;
		end
		3'b101:begin
			rst=0;
			en=0;
			en_reg=1;
		end
		default: begin
			rst=1;
			en=0;
			en_reg=0;
		end
	endcase
	end
end


endmodule
