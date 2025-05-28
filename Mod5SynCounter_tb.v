`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2023 18:54:46
// Design Name: 
// Module Name: Mod5SynCounter_tb
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


module Mod5SynCounter_tb();
reg CLK,rst;
wire [2:0] Q;
Mod5SynCounter dut(.CLK(CLK),.rst(rst),.q1(q1),.q2(q2),.q3(q3),.Q(Q));
initial 
 CLK=0;
 always #1 CLK=~CLK;
 initial
 begin
rst=1;
#1
rst=0;
 end
endmodule