`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:22 09/06/2017 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file 
#(
  parameter NUM_REGS = 16, 
  parameter SIZE = 31
)(
  input clk,
  input  [3:0]  wr_addr,
  input         wr_en,
  input  [31:0] wr_data,
  input  [3:0]  rd_addr,
  output [31:0] rd_data
);
  
    reg [SIZE-1:0] rf [NUM_REGS-1:0];
  
    always @ (posedge clk)
      if (wr_en) 
        rf[wr_addr] <= wr_data;

    assign rd_data = rf[rd_addr];

endmodule
