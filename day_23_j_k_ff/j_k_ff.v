`timescale 1ns / 1ps
module jk_ff(j,k,rst,clk,q,q_b);
    input j,k,clk,rst;
    output reg q;
    output q_b;
    always @(posedge clk)
        begin
            if(rst)
                q<=1'b0;
            else
                begin
                case({j,k})
                    2'b00:q<=q;
                    2'b10:q<=1'b1;
                    2'b01:q<=1'b0;
                    2'b11:q<=~q;
                    default:q<=1'b0;
                endcase
                end
        end
        assign q_b=~q;
endmodule
