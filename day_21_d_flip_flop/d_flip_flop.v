`timescale 1ns / 1ps
module d_flip_flop(d,rst,clk,q,q_b);
    input d,rst,clk;
    output reg q;
    output q_b;
    always @(posedge clk)
        begin
            if(rst)
                q<=1'b0;
            else    
                q<=d;
        end
        assign q_b=~q;
endmodule
