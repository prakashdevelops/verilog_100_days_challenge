`timescale 1ns / 1ps
module sr_latchtb();
    reg e,s, r;
    wire q, q_b;

    sr_latch uut(e,s, r, q, q_b);

    initial begin
        $monitor("Time = %d, s = %b, r = %b, q = %b, q_b = %b", 
                 $time, s, r, q, q_b);
        e=1;
        s = 0; r = 0; #10;
        s = 1; r = 0; #10;  // Set
        s = 0; r = 0; #10;  // Hold
        s = 0; r = 1; #10;  // Reset
        s = 0; r = 0; #10;  // Hold
        s = 1; r = 1; #10;
        s = 0; r = 0; #10;
         s = 1; r = 0; #10;
        #100; // Invalid state
        $finish;
    end

endmodule
