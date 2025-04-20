`timescale 1ns / 1ps
module t_ff_tb();
    reg t_in,clk,rst;
    wire q,q_b;
    tff_using_d uut(t_in,clk,rst,q,q_b);
    initial begin
        clk=1'b0;
        rst=1'b0;
        t_in=1'b0;
    end
    always #10 clk=~clk;
    initial begin
        rst=1'b1;
        @(negedge clk);
        rst=1'b0;
        @(negedge clk);
        t_in=1'b0;
        @(negedge clk);
        t_in=1'b1;
        @(negedge clk);
        t_in=1'b0;
        @(negedge clk);
        t_in=1'b1;
        #100;
        $finish;
    end
    initial begin
        $monitor("rst=%b,clk=%b,t_in=%b,q=%b,q_b=%b",rst,clk,t_in,q,q_b);
    end
endmodule
