`timescale 1ns / 1ps
module jk_ff_tb();
    reg j,k,clk,rst;
    wire q;
    wire q_b;
    integer i;
    jk_ff uut(j,k,rst,clk,q,q_b);
    initial begin
        clk=1'b0;
        rst=1'b0;
        {j,k}=2'b0;
        $monitor("rst=%b,j=%b,k=%b,q=%b,q_b=%b",rst,j,k,q,q_b);   
    end
    always #10 clk=~clk;
    initial begin
        rst=1'b1;
        {j,k}=2'b0;
        @(negedge clk);
        rst=1'b0;
        @(negedge clk);
        for(i=0;i<4;i=i+1)
            begin
                @(negedge clk);
                {j,k}=i;
                
            end
            #100;
            $finish;
    end
endmodule
