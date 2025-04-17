`timescale 1ns / 1ps
module register_tb();
     reg [7:0]data_in;
     reg clk,rst;
     wire [7:0]data_out;
     integer i;
     regitser_bit uut(data_in,data_out,clk,rst);
     initial begin 
        clk=1'b0;
        rst=1'b0;
        data_in=8'b0;
     end
     always #5 clk=~clk;
     initial begin
        rst=1'b1;
        @(negedge clk);
        rst=1'b0;
        for(i=0;i<8;i=i+1)
            begin
                data_in=i;
                #10;
            end
     end    
endmodule
