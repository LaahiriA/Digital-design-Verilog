`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2023 11:54:22
// Design Name: 
// Module Name: UpDownCounter
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


module UpDownCounter(D, rst, clk, ld, u_d,Q);
input [3:0] D;
input rst,ld,u_d;
input clk;
output [3:0] Q;
reg [3:0] Q;
always @(posedge clk)
begin
if(rst)
Q<=4'b0000;
else if(ld)
Q<=D;
else if(u_d)
Q<=Q+4'b0001;
else
Q<=Q-4'b0001;
end
endmodule
