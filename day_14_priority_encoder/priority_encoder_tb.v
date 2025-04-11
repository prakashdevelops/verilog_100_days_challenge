module priority_encoder_tb();
    reg [7:0]in;
    wire [2:0]out;
    wire valid;
    integer i;
    priority_encoder uut(in,out,valid);
    initial begin
        in=8'b0;
        #5;
        in=8'b00001010;
        #5;
        in=8'b01010000;
        #5;
        in=8'b00000010;
        #5;
        in=8'b1xxx0000;
        #5;
        in=8'bxx10001x;
       #100;
       $finish;        
    end
endmodule
