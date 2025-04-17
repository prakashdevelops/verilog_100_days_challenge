`timescale 1ns / 1ps
module regitser_bit(data_in,data_out,clk,rst);
    input [7:0]data_in;
    input clk,rst;
    output reg [7:0]data_out;
    always @(posedge clk)
        begin
            if(rst)
                data_out<=8'b0;
            else 
                data_out<=data_in;
        end 
endmodule
