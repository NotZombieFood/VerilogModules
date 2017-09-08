module top
  (input clk,
   input go,
   input rst,
   input [7:0] a,
   input [7:0] b,
   output [8:0] sumFinal
   );

//internal wires begin
wire reset_sum;
wire enable_ABS;
wire load_AB;
wire [1:0] STATE;
wire countflag;
wire shiftA;
wire carryOut;
wire shiftB;
reg carryIn;
reg shiftSum;
wire sum;
//internal wires ending


//FSM begin
FSM fsm1 (.go(go),.rst(rst),.counterflag(countflag),.STATE(STATE),.clk(clk));
//FSM ending

//Controller begin	
assign reset_sum = (STATE==0)&go;
assign load_AB = (STATE==0)&go;
assign enable_ABS = ((STATE==0)&go)|(STATE==1)|((STATE==1)&countflag);
//Controller ending

//Datapath components begin
shifter shifterA(.load(load_AB),.enable(enable_ABS),.A(a),.shift(shiftA),.rst(rst),.clk(clk));
shifter shifterB(.load(load_AB),.enable(enable_ABS),.A(b),.shift(shiftB),.rst(rst),.clk(clk));
shifter2 shifterC(.enable(enable_ABS),.A(shiftSum),.shift(sumFinal),.rst(rst),.clk(clk));
FA myMagicAdder (.x(shiftA),.y(shiftB),.cin(carryIn),.A(sum),.cout(carryOut));
counter CounterA (.clock(clk),.en_count(enable_ABS),.rst(reset_sum),.compare(countflag));
//Datapath components ending

//Registers for the carry in and value that we get into the final register (sum) (we dont have a reset bc the design doesnt specifies it)
//register begin
always @(posedge clk) begin
        carryIn <= rst ? 0 : carryOut;
        shiftSum <= countflag ? carryOut : sum; 
end
//Register ending

endmodule
