`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:59:23 05/08/2016
// Design Name:   FSM
// Module Name:   C:/Verilog/Test3.v
// Project Name:  marcapasos
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test3;

	// Inputs
	reg Rst;
	reg Start;
	reg Clk;
	reg Stop;
	reg SensorP;
	reg SensorB;
	reg [7:0] NumPill;

	// Outputs
	wire Valve;
	wire [15:0] Sum;
	wire BeltMotor;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.Rst(Rst), 
		.Start(Start), 
		.Clk(Clk), 
		.Stop(Stop), 
		.SensorP(SensorP), 
		.SensorB(SensorB), 
		.NumPill(NumPill), 
		.Valve(Valve), 
		.Sum(Sum), 
		.BeltMotor(BeltMotor)
	);

	initial begin
		// Initialize Inputs
		Clk=0;
		SensorB=0;
		SensorP=0;
		Rst = 1;
		NumPill=52;
		Start=0;
		Stop=0;
		#100;
		Rst=0;
		Start = 1;;
		#100;
		Start=0;
		#1500;
		Stop = 1;
		#100;	
		Stop=0;
		Start=1;
		#100;
		Start=0;
		#1000;
		Rst=1;
		#100;	

	end
 	
	initial begin
		forever #5 Clk = ~Clk;
	end     
	always begin
	 #100;
	 SensorB=BeltMotor;
	end
always @ (~Valve) begin
while(~Valve)
#5 SensorP=~SensorP;
end

endmodule

