`timescale 1ns / 1ps
module parity_tb();
    reg [3:0]in;
    reg  select;
    wire out;
    wire evn_parity_generate,odd_parity_detect,evn_parity_detect,odd_parity_generate;
    parity uut(in,out,evn_parity_generate,odd_parity_detect,evn_parity_detect,odd_parity_generate,select);
    initial begin
       in=4'b1010;
       select=1'b0;
       #10;
       in=4'b0010;
       select=1'b1;
       #10;
       in=4'b1011;
       select=1'b0;
       #10;
       in=4'b1110;
       select=1'b1;
       #10;
       in=4'b1110;
       select=1'b1;
       #60;
       $finish; 
    end
    initial 
        $monitor("in=%b ,select=%b,out=%b ,evn_parity_generate=%b ,odd_parity_detect=%b ,evn_parity_detect=%b,odd_parity_generate=%b",in,out,select,evn_parity_generate,odd_parity_detect,evn_parity_detect,odd_parity_generate);
        
endmodule
