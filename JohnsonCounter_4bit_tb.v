`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2023 14:13:46
// Design Name: 
// Module Name: JohnsonCounter_4bit_tb
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


module JohnsonCounter_4bit_tb();
reg CLK1,reset;
wire Q1,Q2,Q3,Q4;
JohnsonCounter_4bit dut(.reset(reset),.CLK1(CLK1),.Q1(Q1),.Q2(Q2),.Q3(Q3),.Q4(Q4));
initial 
 CLK1=0;
 always #1 CLK1=~CLK1;
 initial
 begin
 reset=1;
 #20
 reset=0;
 end
endmodule
