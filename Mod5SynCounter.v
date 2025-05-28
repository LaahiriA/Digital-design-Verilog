`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2023 18:54:21
// Design Name: 
// Module Name: Mod5SynCounter
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


module Mod5SynCounter(CLK,rst,q1,q2,q3,Q);
input CLK;
input rst;
output q1,q2,q3;
output [2:0] Q;
//assign rst=q1&&q3&&(!q2);
and and3(j2,q3,q2);
JK_ff ff1(!q1,1'b1,rst,CLK,q3);
JK_ff ff2(q3,q3,rst,CLK,q2);
JK_ff ff3(j2,1'b1,rst,CLK,q1);
assign Q[0]=q3;
assign Q[1]=q2;
assign Q[2]=q1;
endmodule
module JK_ff(j0,k0,rst1,CLK1,Q1);
input CLK1,j0,k0,rst1;
output Q1;
reg Q1;
always @(negedge CLK1)
begin
if(rst1)
Q1<=0;
else
if(j0==1 && k0==1)
Q1<=!Q1;
else if(j0==0 && k0==0)
Q1<=Q1;
else if(j0==0 && k0==1)
Q1<=0;
else if(j0==1 && k0==1)
Q1<=1;
end
endmodule