`timescale 1ns / 1ps
module four_bit_register(clk,d_in,data_out);
    input clk;
    input [3:0]d_in;
    output [3:0]data_out;
    d_flip_flop dff1(d_in[0],clk,data_out[0]);
    d_flip_flop dff2(d_in[1],clk,data_out[1]);
    d_flip_flop dff3(d_in[2],clk,data_out[2]);
    d_flip_flop dff4(d_in[3],clk,data_out[3]);
endmodule
