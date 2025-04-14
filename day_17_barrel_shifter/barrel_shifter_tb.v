`timescale 1ns / 1ps
module barrel_shifter_tb();
    reg in0,in1,in2,in3;
    reg shift_by0,shift_by1;
    wire out0,out1,out2,out3;
    integer i;
    barrel_shifter uut(in0,in1,in2,in3,shift_by0,shift_by1,out0,out1,out2,out3);
    initial begin
        {in0,in1,in2,in3}=4'b1010;
        for(i=0;i<4;i=i+1)
            begin
                {shift_by1,shift_by0}=i;
                
                #10;
            end
            #50;
            $finish;
    end
    initial begin
        $monitor("out3=%b,out2=%b,out1=%b,out0=%b,shift_by1=%b,shift_by0=%b",out3,out2,out1,out0,shift_by1,shift_by0);
    end
endmodule
