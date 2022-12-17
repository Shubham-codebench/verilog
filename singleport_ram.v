`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 22:10:58
// Design Name: 
// Module Name: singleport_ram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module singleport_ram(addr,clk,rd,wr,cs,data_in,data_out);
input [9:0]addr;
input clk,rd,wr,cs;
input [7:0]data_in;
output [7:0]data_out;
reg [7:0]data_out;
reg[7:0] mem[1023:0];
always@(posedge clk)
begin
if(cs&&wr&&!rd)
mem[addr]<=data_in;
if(cs&&rd&&!wr)
data_out<=mem[addr];
end
endmodule



   
