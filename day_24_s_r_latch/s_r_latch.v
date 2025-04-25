module sr_latch(enb,s,r,q,qb);
input enb,s,r;
output reg q;
output qb;
always @(*)
    begin
        if(enb)
            case({s,r})
                2'b00:q=q;
                2'b01:q=1'b0;
                2'b10:q=1'b1;
                2'b11:q=1'bx;
            endcase
         else   
                q=1'b0;
    end
    assign qb=~q;
endmodule
