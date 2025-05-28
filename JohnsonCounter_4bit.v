`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2023 14:13:12
// Design Name: 
// Module Name: JohnsonCounter_4bit
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


module JohnsonCounter_4bit(reset,CLK1,Q1,Q2,Q3,Q4);
input CLK1,reset;
output Q1,Q2,Q3,Q4;
DFF dff1(!(Q4),reset,CLK1,Q1);
DFF dff2(Q1,reset,CLK1,Q2);
DFF dff3(Q2,reset,CLK1,Q3);
DFF dff4(Q3,reset,CLK1,Q4);
endmodule

module DFF(D,rst,CLK,Q);
input D,rst,CLK;
output Q;
reg Q;
always @(posedge CLK, rst)
begin
if(rst)
Q<=0;
else
Q<=D;
end
endmodule