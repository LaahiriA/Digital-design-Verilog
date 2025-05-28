`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2023 17:12:09
// Design Name: 
// Module Name: paralleladdsub_4bit_tb
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


module paralleladdsub_4bit_tb();
reg [3:0] A1,B1;
reg C;
wire [3:0]S2;
wire Carry;
paralleladdsub_4bit pas1(.A1(A1),.B1(B1),.C(C),.S2(S2),.Carry(Carry));
initial
 C=1;
 always #5 C=~C;
initial
begin
A1=4'b0;
B1=4'b0;
#10
A1=4'b1111;
B1=4'b0010;
#10
A1=4'b1101;
B1=4'b1010;
#10
A1=4'b0111;
B1=4'b0010;
#10
A1=4'b1111;
B1=4'b0011;
end
endmodule
