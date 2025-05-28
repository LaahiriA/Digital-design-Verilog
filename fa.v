`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 16:51:04
// Design Name: 
// Module Name: fa
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

