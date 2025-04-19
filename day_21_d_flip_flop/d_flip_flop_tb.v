`timescale 1ns / 1ps
module d_ff_tb();
    reg d,rst,clk;
    wire q, q_b;
    d_flip_flop uut(d,rst,clk,q,q_b);
    always #5 clk=~clk;
    initial begin
        clk=1'b0;
        rst=1'b1;
        d=1'b1;
        @(negedge clk);
        rst=1'b0;
        d=1'b1;
        @(negedge clk);
        d=1'b0;
        @(negedge clk);
        d=1'b0;
        @(negedge clk);
        d=1'b1;
     end
     initial 
        $monitor("rst=%b,d=%b,q=%b,q_b=%b",rst,d,q,q_b);
endmodule
