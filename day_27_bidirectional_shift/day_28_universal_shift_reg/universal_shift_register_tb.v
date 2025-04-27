
`timescale 1ns / 1ps
module universal_shift_reg_tb;
    reg clk, rst;
    reg [1:0] select;
    reg [3:0] p_din;
    reg s_left_din, s_right_din;
    wire [3:0] p_dout;

    universal_shift_reg uut(clk, rst, select, p_din, s_left_din, s_right_din, p_dout);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1'b1;
        select = 2'b00;
        p_din = 4'h0;
        s_left_din = 1'b0;
        s_right_din = 1'b0;
        #10;
        rst = 1'b0;

        // Parallel Load
        select = 2'b11;
        p_din = 4'hA;
        #10;
        select = 2'b00;
        #10;

        // Shift Left
        select = 2'b10;
        s_left_din = 1'b1;
        #10;
        #10;
        #10;
        #10;

        // Shift Right
        select = 2'b01;
        s_right_din = 1'b0;
        #10;
        #10;
        #10;
        #10;

        // Hold
        select = 2'b00;
        #10;
        #1000;

        $finish;
    end

    initial begin
        $monitor("Time = %d, clk = %b, rst = %b, select = %b, p_din = %b, s_left_din = %b, s_right_din = %b, p_dout = %b",
                 $time, clk, rst, select, p_din, s_left_din, s_right_din, p_dout);
    end
endmodule

