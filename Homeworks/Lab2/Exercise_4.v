`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:12:35 08/17/2017 
// Design Name: 
// Module Name:    Exercise_2 
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
module Exercise_2(
    input [3:0] SW_X,
    input [3:0] SW_Y,
    input SW_Cin,
    output [6:0] HEX_5,
    output [6:0] HEX_3,
    output [6:0] HEX_1,
    output [6:0] HEX_0,
    output LED_9,
	 output cout,
	 output [4:0] LED_R
    );
	
	wire [4:0] suma;
	
	assign suma = SW_X + SW_Y + SW_Cin;
	assign cout = suma [4];
	
	assign LED_9 = (SW_X[3] & SW_X[2]) + (SW_X[3] & SW_X[1]) + (SW_Y[3] & SW_Y[2]) + (SW_Y[3] & SW_Y[1]);
	
	//Ecuaciones Display 5
	assign HEX_5[0] = (SW_X[3] & ~SW_X[2] & ~SW_X[1]) + (~SW_X[3] & SW_X[2] & SW_X[0]) + (~SW_X[3] & SW_X[1]);
	assign HEX_5[1] = ( ~SW_X[3] & SW_X[2] & ~SW_X[1] & ~SW_X[0]) + ( SW_X[3] & ~SW_X[2] & ~SW_X[1] ) + ( ~SW_X[3] & ~SW_X[2] & SW_X[1] ) + ( ~SW_X[3] & SW_X[1] & SW_X[0] );
	assign HEX_5[2] = (SW_X[3] & ~SW_X[2] & ~SW_X[1] ) + (~SW_X[3] & SW_X[2] ) + (~SW_X[3] & SW_X[0] );
	assign HEX_5[3] = (SW_X[3] & ~SW_X[2] & ~SW_X[1] & ~SW_X[0] ) + (~SW_X[3] & SW_X[2] & ~SW_X[1] & SW_X[0] ) + ( ~SW_X[3] & ~SW_X[2] & SW_X[1] ) + ( ~SW_X[3] & SW_X[1] & ~SW_X[0] );
	assign HEX_5[4] = (SW_X[3] & ~SW_X[2] & ~SW_X[1] & ~SW_X[0] ) + ( ~SW_X[3] & SW_X[1] & ~SW_X[0] );
	assign HEX_5[5] = (SW_X[3] & ~SW_X[2] & ~SW_X[1] ) + ( ~SW_X[3] & SW_X[2] & ~SW_X[1] ) + ( ~SW_X[3] & SW_X[2] & SW_X[1] & ~SW_X[0] );
	assign HEX_5[6] = (SW_X[3] & ~SW_X[2] & ~SW_X[1] ) + ( ~SW_X[3] & SW_X[2] & ~SW_X[1] ) + ( ~SW_X[2] & ~SW_X[2] & SW_X[1] ) + ( ~SW_X[2] & SW_X[1] & ~SW_X[0] );

	//Display 3
	assign HEX_3[0] = (SW_Y[3] & ~SW_Y[2] & ~SW_Y[1]) + (~SW_Y[3] & SW_Y[2] & SW_Y[0]) + (~SW_Y[3] & SW_Y[1]);
	assign HEX_3[1] = ( ~SW_Y[3] & SW_Y[2] & ~SW_Y[1] & ~SW_Y[0]) + ( SW_Y[3] & ~SW_Y[2] & ~SW_Y[1] ) + ( ~SW_Y[3] & ~SW_Y[2] & SW_Y[1] ) + ( ~SW_Y[3] & SW_Y[1] & SW_Y[0] );
	assign HEX_3[2] = (SW_Y[3] & ~SW_Y[2] & ~SW_Y[1] ) + (~SW_Y[3] & SW_Y[2] ) + (~SW_Y[3] & SW_Y[0] );
	assign HEX_3[3] = (SW_Y[3] & ~SW_Y[2] & ~SW_Y[1] & ~SW_Y[0] ) + (~SW_Y[3] & SW_Y[2] & ~SW_Y[1] & SW_Y[0] ) + ( ~SW_Y[3] & ~SW_Y[2] & SW_Y[1] ) + ( ~SW_Y[3] & SW_Y[1] & ~SW_Y[0] );
	assign HEX_3[4] = (SW_Y[3] & ~SW_Y[2] & ~SW_Y[1] & ~SW_Y[0] ) + ( ~SW_Y[3] & SW_Y[1] & ~SW_Y[0] );
	assign HEX_3[5] = (SW_Y[3] & ~SW_Y[2] & ~SW_Y[1] ) + ( ~SW_Y[3] & SW_Y[2] & ~SW_Y[1] ) + ( ~SW_Y[3] & SW_Y[2] & SW_Y[1] & ~SW_Y[0] );
	assign HEX_3[6] = (SW_Y[3] & ~SW_Y[2] & ~SW_Y[1] ) + ( ~SW_Y[3] & SW_Y[2] & ~SW_Y[1] ) + ( ~SW_Y[2] & ~SW_Y[2] & SW_Y[1] ) + ( ~SW_Y[2] & SW_Y[1] & ~SW_Y[0] );

	//Display 1
	assign HEX_1[0] = (~suma[4] & ~suma[3]) + (~suma[4] & ~suma[2] & ~suma[1]);
	assign HEX_1[1] = (~suma[4]) + (~suma[3] & ~suma[2] & ~suma[1]) + (~suma[3] & ~suma[2] & ~suma[0]);
	assign HEX_1[2] = (~suma[4]) + (~suma[3] & ~suma[2] & ~suma[1]) + (~suma[3] & ~suma[2] & ~suma[0]);
	assign HEX_1[3] = (~suma[4] & ~suma[3]) + (~suma[4] & ~suma[2] & ~suma[1]);
	assign HEX_1[4] = (~suma[4] & ~suma[3]) + (~suma[4] & ~suma[2] & ~suma[1]);
	assign HEX_1[5] = (~suma[4] & ~suma[3]) + (~suma[4] & ~suma[2] & ~suma[1]);
	assign HEX_1[6] = 0;
	
	//Display 0
	assign HEX_0[0] = (~suma[4] & ~suma[2] & ~suma[0] ) + ( ~suma[3] & ~suma[2] & ~suma[0] ) + ( ~suma[4] & ~suma[3] & suma[1]) + ( ~suma[4] & suma[2] & suma[0]) + (~suma[4] & suma[3] & ~suma[1]) + ( suma[4] & ~suma[3] & ~suma[2] & ~suma[1]);
	assign HEX_0[1] = (~suma[4] & ~suma[2] ) + (~suma[4] & ~suma[1] & ~suma[0] ) + (~suma[3] & ~suma[2] & ~suma[1] & suma[0] ) + (~suma[3] & ~suma[2] & suma[1]  & ~suma[0]) + (~suma[4] & ~suma[3] & suma[1] & suma[0]) + (~suma[4] & suma[3] & ~suma[1]) + (~suma[4] & suma[3] & ~suma[0]);
	assign HEX_0[2] = (~suma[3] & ~suma[2] & ~suma[1]) + (~suma[4] & suma[0]) + (~suma[4] & ~suma[3] & suma[2]) + (~suma[4] & suma[3] & ~suma[2]) + (~suma[4] & suma[3] & suma[1]) + (suma[4] & ~suma[3] & ~suma[2] & ~suma[0]);
	assign HEX_0[3] = (~suma[4] & ~suma[2] & ~suma[0]) + (~suma[3] & ~suma[2] & ~suma[0]) + (~suma[4] & ~suma[3] & ~suma[2] & suma[1]) + (~suma[4] & ~suma[3] & suma[1] & ~suma[0]) + (~suma[4] & suma[2] & ~suma[1] & suma[0]) + (~suma[4] & suma[3] & ~suma[1] & ~suma[0] ) + (~suma[4] & suma[3] & suma[2] & suma[0]);
	assign HEX_0[4] = (~suma[4] & ~suma[2] & ~suma[0]) + (~suma[3] & ~suma[2] & ~suma[0]) + (~suma[4] & ~suma[3] & suma[1] & ~suma[0]) + (~suma[4] & suma[3] & ~suma[1] & ~suma[0]);
	assign HEX_0[5] = (~suma[3] & ~suma[2] & ~suma[1] & ~suma[0]) + (~suma[4] & ~suma[3] & suma[2] & ~suma[1]) + (~suma[4] & ~suma[3] & suma[2] & ~suma[0] ) + (~suma[4] & suma[3] & ~suma[2] & ~suma[1]) + (~suma[4] & suma[3] & ~suma[2] & ~suma[0]) + (~suma[4] & suma[3] & suma[2] & suma[1]) + (suma[4] & ~suma[3] & ~suma[2] & ~suma[0]);
	assign HEX_0[6] = (~suma[4] & ~suma[3] & ~suma[2] & suma[1]) + (~suma[4] & suma[2] & ~suma[1]) + (~suma[4] & suma[2] & ~suma[0]) + (~suma[4] & suma[3] & ~suma[1]) + (~suma[4] & suma[3] & suma[2]) + (suma[4] & ~suma[3] & ~suma[2] & ~suma[0]);

	//LEDS
	assign LED_R [0] = suma[0];
	assign LED_R [1] = suma[1];
	assign LED_R [2] = suma[2];
	assign LED_R [3] = suma[3];
	assign LED_R [4] = suma[4];

endmodule
