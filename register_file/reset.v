`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:00:18 09/06/2017 
// Design Name: 
// Module Name:    reset 
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
module reset(
input clk,
input go,
input rst,
input enable,
input  [3:0]  wr_addr,
input  [31:0] wr_data,
input  [3:0]  rd_addr,
output [31:0] rd_data
    );

wire wirecompare;
wire wirerst;
wire wireenable;
wire wireactivo;
wire [3:0]wireaddr;
reg en;
reg [3:0] addres;
reg [31:0] wrdata;
	 

State_Machine stm1(
.go(go),
.compare(wirecompare),
.clk(clk),
.Mrst(rst),
.rst(wirerst),
.enable(wireenable),
.activo(wireactivo)
);

dataPath dp1(
.clk(clk),
.rst(wirerst),
.enable(wireenable),
.compare(wirecompare),
.addr(wireaddr)
);

reg_file rf1(
.clk(clk),
.wr_addr(addres),
.wr_en(en),
.wr_data(wrdata),
.rd_addr(rd_addr),
.rd_data(rd_data)
);

always @ * begin
	if (wireactivo == 1) begin
		addres = wireaddr;
		en = wireenable;
		wrdata = 0;
	end
	else begin
		addres = wr_addr;
		en = enable;
		wrdata = wr_data;
	end
end


endmodule
