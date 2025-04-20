`timescale 1ns / 1ps

module tff_using_d(t_in,clk,rst,q,q_b);
    input t_in,clk,rst;
    output q,q_b;
    xor d0(w1,t_in,q);
    d_flip_flop d1(w1,rst,clk,q,q_b);
endmodule
