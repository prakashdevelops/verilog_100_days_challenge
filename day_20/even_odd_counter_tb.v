`timescale 1ns / 1ps
module even_odd_counter_tb();
      reg rst,clk,load,mode;
      reg [3:0]data_in;
      wire  [3:0]count;
      integer i;
      even_odd_counter uut(rst,count,load,clk,mode,data_in);
      initial begin
        clk=1'b0;
        rst=1'b0;
        data_in=4'b0;
        load=1'b0;
        mode=1'b0;
      end
      always #10 clk=~clk;
      initial begin
        rst=1'b1;
        @(negedge clk);
            rst=1'b0;
             mode=1'b0;
        load=1'b1;
        data_in=4'd2;
        @(negedge clk);
            load=1'b0;
        #30;
        @(negedge clk);
            load=1'b1;
            data_in=4'd3;
            mode=1'b1;
            @(negedge clk);
                load=1'b0;
        #70;
        $finish;      
   end
    initial begin
        $monitor("mode=%d,data_in=%d,count=%d",mode,data_in,count);
    end
endmodule
