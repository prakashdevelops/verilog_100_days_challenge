`timescale 1ns / 1ps
module parity(in,out,evn_parity_generate,odd_parity_detect,evn_parity_detect,odd_parity_generate,select);
    input [3:0]in;
    input select;
    output reg out;
    output reg evn_parity_generate,odd_parity_detect,evn_parity_detect,odd_parity_generate;
        always @(*)
            begin
                if(!select)
                    begin
                    out=(in[3]^in[2]^in[1]^in[0]);
                    odd_parity_detect=1'b1;
                    evn_parity_generate=1'b1;
                    odd_parity_generate=1'b0;
                    evn_parity_detect=1'b0;
                    end
                    
                else 
                    begin
                    out=~(in[3]^in[2]^in[1]^in[0]);
                    odd_parity_generate=1'b1;
                    evn_parity_detect=1'b1;
                    odd_parity_detect=1'b0;
                    evn_parity_generate=1'b0;
                    end
            end
    
endmodule
