`include "flipflop.v"
`timescale 1ps/1ps

module tb;
    reg d = 0,  clk = 0;
    wire q;
    
    flipflop f1(d,clk,q);
    always begin
        clk = ~clk;
        #10;
    end
    initial begin
        $dumpfile("flipflop.vcd");
        $dumpvars(0,tb);

        #40;
        d=1; 
        #40;
        d=0;
        $finish;
    end
endmodule