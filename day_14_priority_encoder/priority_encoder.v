`timescale 1ns / 1ps
module priority_encoder(in,out,valid);
    input [7:0]in;
    output reg[2:0]out;
    output reg valid;
    always @(*)
        begin
            if(in==8'b0)
                begin
                out=3'bxxx;
                valid=0;
                end
            else
                begin
                valid=1;
                out=3'b0;
                case(1'b1)
                    in[7]:out=3'b111;
                    in[6]:out=3'b110;
                    in[5]:out=3'b101;
                    in[4]:out=3'b100;
                    in[3]:out=3'b011;
                    in[2]:out=3'b010;
                    in[1]:out=3'b001;
                    in[0]:out=3'b000;
                endcase
                end
        end    
endmodule
