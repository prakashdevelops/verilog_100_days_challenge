`timescale 1ns / 1ps
module d_flip_flop(d,clk,q,q_b);
    input d,clk;
    output reg q;
    output q_b;
    always @(posedge clk)
        begin
            if(d==1'b0)
                q<=1'b0;
            else    
                q<=1'b1;
        end
        assign q_b=~q;
endmodule
