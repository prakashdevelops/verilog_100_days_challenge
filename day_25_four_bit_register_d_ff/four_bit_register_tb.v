`timescale 1ns / 1ps
module four_bit_register_tb;
    reg clk;
    reg [3:0] d_in;
    wire [3:0] data_out;

    four_bit_register uut(clk, d_in, data_out);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time = %d, clk = %b, d_in = %d, data_out = %d", 
                 $time, clk, d_in, data_out);

        d_in = 4'd0;
        #10;
        d_in = 4'd10;
        #10;
        d_in = 4'd5;
        #10;
        d_in = 4'd15;
        #10;
        $finish;
    end
endmodule
