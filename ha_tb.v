`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 13:57:12
// Design Name: 
// Module Name: tb
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

module tb();
  reg i1,i2;
  wire o1,o2;
  ha dut(.c(o1), .d(o2), .a(i1), .b(i2));
  initial begin
//i1=0;
//i2=0;
#10
i1=0;
i2=0;
  #10
 i1=0;
 i2=1;
  #10
 i1=1;
 i2=0;
  #10
 i1=1;
 i2=1;
 $finish;
  end
endmodule
