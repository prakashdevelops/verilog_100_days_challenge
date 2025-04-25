`timescale 1ns / 1ps
module shift_reg_8_tb;
    reg clk, load, shift, rst;
    reg [7:0] d_in;
    wire [7:0] d_out;

    shift_reg_8 uut(clk, d_in, load, shift, d_out, rst);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1'b1;
        load = 1'b0;
        shift = 1'b0;
        d_in = 8'h0;
        #10;
        rst = 1'b0;
        load = 1'b1;
        d_in = 8'h55;
        #10;
        load = 1'b0;
        shift = 1'b1;
        #10;
        //shift = 1'b0;
        #1000;
        $finish;
    end
endmodule
