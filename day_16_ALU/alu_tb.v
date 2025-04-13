`timescale 1ns / 1ps
module alu_tb();
    reg [3:0]a,b,op;
    wire [7:0]out;
    integer i;
    alu uut(a,b,op,out);
    initial begin
          a=4'b0001;
          b=4'b1000;
          for(i=0;i<16;i=i+1)
            begin
            op=i;
            #5;
            end
            #100;
            $finish;
        end
endmodule
