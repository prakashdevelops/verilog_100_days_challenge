`timescale 1ns / 1ps
module even_odd_counter(rst,count,load,clk,mode,data_in);
    input rst,clk,load,mode;
    input [3:0]data_in;
    output reg [3:0]count;
    always @(posedge clk)
        begin
            if(rst)
                count<=4'b0;
            else if(mode==1'b0 && data_in%2==1'b0)
                if(load)
                    count<=data_in;
                else 
                    count<=count+2'd2;
           else if(mode==1'b1 && data_in%2!=1'b0)
                if(load)
                    count<=data_in;
                else 
                    count<=count+2'd2;
          else 
            count<=count;     
        end
endmodule
