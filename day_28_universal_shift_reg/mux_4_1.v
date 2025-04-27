`timescale 1ns / 1ps
module mux_4_1(in0,in1,in2,in3,o,s);
    input in0,in1,in2,in3;
    output reg o;
    input [1:0]s;
    always@(*)
        begin
            case(s)
                2'b00:o=in0;
                2'b01:o=in1;
                2'b10:o=in2;
                2'b11:o=in3;
                default:o=1'b0;    
            endcase
        end
endmodule
