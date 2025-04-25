`timescale 1ns / 1ps
module shift_reg_8(clk,d_in,load,shift,d_out,rst);
    input clk,load,shift,rst;
    input [7:0]d_in;
    output [7:0]d_out;
    reg [7:0] temp;
    always @(posedge clk)
        begin
            if(rst)
                temp<=8'b0;
            else 
                if(load)
                    temp<=d_in;
                else if(shift)
                    temp<=temp<<1'b1;
                else 
                    temp<=temp;
        end
    assign d_out=temp;    
endmodule
