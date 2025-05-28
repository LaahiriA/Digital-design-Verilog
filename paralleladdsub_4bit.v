`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2023 17:11:29
// Design Name: 
// Module Name: paralleladdsub_4bit
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


module paralleladdsub_4bit(A1,B1,C,S2,Carry);
input [3:0] A1,B1;
input C;
output [3:0] S2;
output Carry;
wire [3:0] c1;
wire [3:0] d1;
 xor(d1[0],B1[0],C);
 xor(d1[1],B1[1],C);
 xor(d1[2],B1[2],C);
 xor(d1[3],B1[3],C);
fa fa1(S2[0],c1[0],A1[0],d1[0],C);
fa fa2(S2[1],c1[1],A1[1],d1[1],c1[0]);
fa fa3(S2[2],c1[2],A1[2],d1[2],c1[1]);
fa fa4(S2[3],c1[3],A1[3],d1[3],c1[2]);
assign Carry=c1[3];
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