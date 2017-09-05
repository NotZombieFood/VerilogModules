module top
  (input clk,
   input start,
   input rst,
   output [31:0] data,
   output flag
   );

//internal wires begin
wire [31:0] num;
assign num = 0;
wire enableCounter;
wire enableRegister;
wire reset;
wire [3:0] readAddress;
wire [3:0] count;
reg [2:0] STATE, NXT_STATE;
//internal wires ending
assign readAddress = 0; 

//FSM begin
always @ * begin
			case(STATE)
			3'b000:  //Reseteamos todo
				NXT_STATE = 3'b001;
			3'b001: if (start) //Comenzamos
				NXT_STATE = 3'b011; 
			3'b010:  //Contamos uno
				NXT_STATE = 3'b011; 
			3'b011: if (count==16) //Guardamos el valor en el register
							NXT_STATE = 3'b100; //volvemos a sumar 1
					  else
							NXT_STATE= 3'b010; //muestra flag de completado en el next state
			3'b100: 
					NXT_STATE= 3'b100; //wait until reset
			endcase
		end
always @ (posedge clk) begin
	if (rst)
		STATE <= 0;
	else
		STATE<= NXT_STATE;
end
//FSM ending

//Controller begin	
assign reset = (STATE==0);
assign enableCounter = (STATE==2);
assign enableRegister = (STATE==3);
assign flag = (STATE==4);
//Controller ending

//Datapath begin
counter CounterA (.clock(clk),.en_count(enableCounter),.rst(reset),.count(count));
registerFile registerA (.clk(clk),.write(enableRegister),.wrAddr(count),.wrData(num),.rdAddrA(readAddress),.rdDataA(data));
//Datapath ending
endmodule
