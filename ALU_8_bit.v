`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 18:20:55
// Design Name: 
// Module Name: ALU_8_bit
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


module ALU_8_bit(A,B,S1,S2,S3,O);
input [7:0] A;
input [7:0] B;
input [1:0] S1;
input [2:0] S2;
input [3:0] S3;
output [7:0] O;
reg [7:0] O;
always @(*)
begin
case(S1)
   1'b0:
     case(S2)
        2'b001:
         O=A+B;
        2'b010:
         O=A-B;
        2'b011:
         O=A*B;
        default: O = 0;  
      endcase
    1'b1:
      case(S3)
        4'b0000:
        O=A & B;
        4'b0001:
        O=A | B;
        4'b0010:
        O=~(A & B);
        4'b0011:
        O=~A;
        4'b0100:
        O=~(A | B);
        4'b0101:
        O=A ^ B;
        4'b0110:
        O=~(A ^ B);
        4'b0111:
        O=A<<1;
        4'b1000:
        O=B>>1;
        4'b1001:
        O=(A==B)?1'b1:1'b0;
        default: O = 1;
        endcase
        default: O = 2'b11;
endcase        
        end 

endmodule

