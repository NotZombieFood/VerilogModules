# System Verilog
## Differences
+ Reg & Wire are consolidated as logic
+ always @ * is change to always_comb (only for combinatorial logic)
+ always @ (posedge clk) is change to always_ff @ (posedge clk), it is used to declared flipflops
+ enum logic [1:0] {string1,string2,string3,string4} state, nxt_state; we are using strings instead of binary values. Example, state could be any of those values instead of 00,01,10,11 but in reality they are the same, it is just for it to being easier.
+ case reasmains the same also short IFs
+ we can declare type of variables (it can work with any type of variable), example:
''' typedef enum logic [1:0]
{
	IDDLE		= 2'b00;
	START		= 2'b01;
	END 		= 2'b10;
}test_variable; # Our type of variable will be called as test_variable and the number of the variable we assigned'''
+ You can also use typedef struct packed and create something like classes, is like the one before but with many inside.
  