`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 08:41:07
// Design Name: 
// Module Name: RCA_tb
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


/*module RCA_tb;
reg [3:0]Aarr;
reg [3:0]Barr;
//reg count;
reg C;
wire [3:0]Sum;
wire Co;
RCA rca(.Sum(Sum),.Co(Co),.Aarr(Aarr), .Barr(Barr), .C(C));
initial
begin
        Aarr = 4'b0000;
		Barr = 4'b0000;
	    C=1'b0;
		//count = 0;

		//for (count = 0; count < 1024; count = count + 1) begin
		//	#5 {Aarr} = count;
			//   {Barr} = count;
			  // C=1'b0;
		//end
		#10
		Aarr=4'b0000;
		Barr=4'b0000;
		C=1'b1;
		#10
		Aarr=4'b0001;
		Barr=4'b0010;
		C=1'b0;
		#10
		Aarr=4'b0001;
		Barr=4'b0010;
		C=1'b1;
		#10
		Aarr=4'b1010;
		Barr=4'b1100;
		C=1'b1;
		#10
		Aarr=4'b1010;
		Barr=4'b1100;
		C=1'b0;
		#10
		Aarr=4'b1111;
		Barr=4'b1010;
		C=1'b0;
		#10
		Aarr=4'b1111;
		Barr=4'b1010;
		C=1'b1;
	end
initial begin
		$dumpfile("RCA.vcd");
		$dumpvars(0, RCA_tb);
		$monitor($time, ": %b + %b +%b = %b, %b", Aarr, Barr, C, Sum, Co);
	end
endmodule*/
module RCA_tb;
reg [3:0]Aarr;
reg [3:0]Barr;
reg C;
wire [3:0]Sum;
wire Co;
reg i;
RCA rca(.Sum(Sum),.Co(Co),.Aarr(Aarr), .Barr(Barr), .C(C));
initial
begin
        Aarr = 4'b0000;
		Barr = 4'b0000;
	    C=1'b0;
		i=0;
		for(i=0;i<16;i=i+1)
		begin
		#5
		Aarr=Aarr+i;
		Barr=Barr+i;
		#5 C=~C;
	    end
	    end
	    initial begin
		$dumpfile("RCA.vcd");
		$dumpvars(0, RCA_tb);
		$monitor($time, ": %b + %b +%b = %b, %b", Aarr, Barr, C, Sum, Co);
	end
endmodule