`timescale 1ns / 1ps
module barrel_shifter(in0,in1,in2,in3,shift_by0,shift_by1,out0,out1,out2,out3);
    input in0,in1,in2,in3;
    input shift_by0,shift_by1;
    output reg out0,out1,out2,out3;
    always @(*)
        case({shift_by1,shift_by0})
             2'b00:
                    begin 
                    out3=in3;out2=in2;out1=in1;out0=in0;
                    end
             2'b01: begin 
                    out3=in0;out2=in3;out1=in2;out0=in1;
                    end
             2'b10: begin 
                    out3=in1;out2=in0;out1=in3;out0=in2;
                    end
             2'b11: begin 
                    out3=in2;out2=in1;out1=in0;out0=in3;
                    end 
             default:begin 
                    out3=1'b0;out2=1'b0;out1=1'b0;out0=1'b0;
                    end
        endcase
endmodule
