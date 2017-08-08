`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:29:01 05/01/2016 
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
    input Rst,
    input Start,
	 input Clk, //for fsm state changing
    input Stop,
	 input SensorP,//Sensor of the pills
	 input SensorB, //Sensor of bottle in place
	 input [7:0] NumPill,
    output Valve,
    output [15:0] Sum,
	 output BeltMotor
    );
wire Count; 
wire ResetCount;
wire [7:0] SumCount;
wire EnAdder;
wire ResetAdder;
wire [7:0] NumPills;
wire ResetRegister;
wire LoadRegister;
assign ResetRegister=(STATE==0);
assign LoadRegister=(STATE==1);
assign Valve =(STATE!=3);
assign BeltMotor=(STATE==2);
assign ResetAdder=(STATE==0);
assign ResetCount=(STATE==2|STATE==0);
assign EnAdder= (STATE==2);
/*if (STATE==0) begin
assign ResetRegister=1;
assign ResetCount=1;
assign ResetAdder=1;
end*/
Register RegisterA (.Clk(Clk),.Reset(ResetRegister),.A(NumPill),.Load(LoadRegister),.NumPills(NumPills));
Counter CounterA (.SensorP(SensorP),.Reset(ResetCount),.Compare(NumPills),.Result(Count),.Count(SumCount));
Adder AdderA (.En(EnAdder),.Reset(ResetAdder),.A(SumCount),.Sum(Sum));
reg [2:0] STATE, NXT_STATE,PST_STATE;
always @ * begin
			case(STATE)
			3'b000: if (Start)
				NXT_STATE = 3'b001; //Iddle, valve is closed. Everything else is 0
			3'b001: NXT_STATE = 3'b010; //Start, load A
			3'b010: if (SensorB)  //State 2, Move bottle
							NXT_STATE = 3'b011; //If there is a bottle in place, continue
					  else
							NXT_STATE=3'b010; //wait if there is not bottle
			3'b011: if (Count) //State3, getting the pills !open the valve!
							NXT_STATE = 3'b010; //it has all the pills !close valve!
					  else
							NXT_STATE= 3'b011; //continue adding
		3'b100: if (Start) 
					NXT_STATE = PST_STATE;					//Emergency stop
					else
					NXT_STATE= 3'b100;
			endcase
		end

		
		always @ (posedge Clk) begin
			if (Rst)
			STATE <= 0;
			else if (Stop)
			STATE<=4;
			else
			STATE<= NXT_STATE;
			
		end
always@ (negedge Clk) begin
if (STATE!=4)
PST_STATE<=NXT_STATE; //it takes the state and save ir for posterior use
end
endmodule
