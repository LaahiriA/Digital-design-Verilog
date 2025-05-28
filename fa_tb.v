`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 16:53:10
// Design Name: 
// Module Name: fa_tb
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


module fa_tb();
  reg i1,i2,i3;
  wire o1,o2;
  fa dut(.S(o1), .Cout(o2), .A(i1), .B(i2), .Cin(i3));
  initial begin
i1=0;
i2=0;
i3=0;
  #10
 i1=0;
 i2=0;
 i3=1;
  #10
 i1=0;
 i2=1;
 i3=0;
  #10
 i1=0;
 i2=1;
 i3=1;
  #10
 i1=1;
 i2=0;
 i3=0;
  #10
 i1=1;
 i2=0;
 i3=1;
  #10
 i1=1;
 i2=1;
 i3=0;
  #10
 i1=1;
 i2=1;
 i3=1;
 $finish;
  end
endmodule

