`timescale 1ns / 1ps
module d_flip_flop(d,clk,q,clr,q_b);
    input d,clk,clr;
    output reg q;
    output q_b;
    always @(posedge clk)
        begin
            if(clr)
                q<=1'b0;
            else 
                q<=d;
        end
        assign q_b=~q;
endmodule
