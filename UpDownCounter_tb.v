`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2023 11:54:58
// Design Name: 
// Module Name: UpDownCounter_tb
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


module UpDownCounter_tb();
reg [3:0] D;
reg rst,ld,u_d,clk;
wire [3:0] Q;
reg i;
UpDownCounter ud1(.D(D), .rst(rst), .clk(clk), .ld(ld), .u_d(u_d),.Q(Q));
initial 
 clk=0;
 always #1 clk=~clk;
initial
begin

rst=0;
 ld=1;
 u_d=1;
 i=0;
 D=4'b0000;
 #1 D=4'b0001;
 #1 D=4'b0010;
 #1 D=4'b0011;
 #1 D=4'b0100;
 #1 D=4'b0101;
 #1 D=4'b0110;
 #1 D=4'b0111;
 #1 D=4'b1000;
 #1 D=4'b1001;
 #1 D=4'b1010;
 #1 D=4'b1011;
 #1 D=4'b1100;
 #1 D=4'b1101;
 #1 D=4'b1110;
 #1 D=4'b1111;
		/*for(i=0;i<16;i=i+1)
		begin
		#1
		D=D+i;
	    end*/
#10
rst=0;
 ld=0;
 u_d=1;
 i=0;
 D=4'b0000;
 #1 D=4'b0001;
 #1 D=4'b0010;
 #1 D=4'b0011;
 #1 D=4'b0100;
 #1 D=4'b0101;
 #1 D=4'b0110;
 #1 D=4'b0111;
 #1 D=4'b1000;
 #1 D=4'b1001;
 #1 D=4'b1010;
 #1 D=4'b1011;
 #1 D=4'b1100;
 #1 D=4'b1101;
 #1 D=4'b1110;
 #1 D=4'b1111;
#10
rst=0;
 ld=0;
 u_d=0;
 i=0;
 D=4'b0000;
 #1 D=4'b0001;
 #1 D=4'b0010;
 #1 D=4'b0011;
 #1 D=4'b0100;
 #1 D=4'b0101;
 #1 D=4'b0110;
 #1 D=4'b0111;
 #1 D=4'b1000;
 #1 D=4'b1001;
 #1 D=4'b1010;
 #1 D=4'b1011;
 #1 D=4'b1100;
 #1 D=4'b1101;
 #1 D=4'b1110;
 #1 D=4'b1111;
	     #10
 rst=1;
 ld=0;
 u_d=1;
 i=0;
D=4'b0000;
 #1 D=4'b0001;
 #1 D=4'b0010;
 #1 D=4'b0011;
 #1 D=4'b0100;
 #1 D=4'b0101;
 #1 D=4'b0110;
 #1 D=4'b0111;
 #1 D=4'b1000;
 #1 D=4'b1001;
 #1 D=4'b1010;
 #1 D=4'b1011;
 #1 D=4'b1100;
 #1 D=4'b1101;
 #1 D=4'b1110;
 #1 D=4'b1111;    
	    end

endmodule
