`timescale 1ns / 1ps
module alu(a,b,op,out);
    parameter add=4'b0000,
              sub=4'b0001,
              mul=4'b0010,
              div=4'b0011,
              or_=4'b0100,
              and_=4'b0101,
              not_=4'b0110,
              increment=4'b0111,
              decrement=4'b1000,
              reduction_or=4'b1001,
              bit_wise_and=4'b1010,
              bit_wise_or=4'b1011,
              bit_wise_xor=4'b1100,
              bit_wise_xnor=4'b1101,
              shift_left=4'b1110,
              shift_right=4'b1111;
    input [3:0]a,b; 
    input [3:0]op;
    output reg [7:0]out;
    always @(*)
        begin
            case(op)
               add:out=a+b;
               sub:out=a-b;
               mul:out=a*b;
               div:out=a/b;
               or_:out=a||b;
               and_:out=a&&b;
               not_:out=!a;
               increment:out=a+1;
               decrement:out=a-1;
               reduction_or:out=|a;
               bit_wise_and:out=a&b;
               bit_wise_or:out=a|b;
               bit_wise_xor:out=a^b;
               bit_wise_xnor:out=a^b;
               shift_left:out=a<<1;
               shift_right:out=a>>1;
              endcase
        end
           
endmodule
