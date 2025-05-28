`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 08:31:37
// Design Name: 
// Module Name: RCA
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


module RCA(Sum,Co,Aarr,Barr,C);
input [3:0]Aarr;
input [3:0]Barr;
input C;
output [3:0]Sum;
output Co;
wire C1,C2,C3;
fa fa1(Sum[0],C1,Aarr[0],Barr[0],C);
fa fa2(Sum[1],C2,Aarr[1],Barr[1],C1);
fa fa3(Sum[2],C3,Aarr[2],Barr[2],C2);
fa fa4(Sum[3],Co,Aarr[3],Barr[3],C3);
endmodule

module fa(S,Cout,A,B,Cin);
input A,B,Cin;
output S,Cout;
wire S1,C1,C2;
 ha a1(S1,C1,A,B);
 ha a2(S,C2,S1,Cin);
 or (Cout,C1,C2);
endmodule

module ha(c,d,a,b);
  input a,b;
  output c,d;
  assign c=a^b;
  assign d=a&&b;
endmodule

