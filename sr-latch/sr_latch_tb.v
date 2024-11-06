`include "sr_latch.v"
`timescale 1ns / 1ns

module latch_tb;
    reg s, r;
    wire q, q_bar;

    sr_latch uut(s, r, q, q_bar);

    initial begin
        $dumpfile("sr_latch.vcd");
        $dumpvars(0, latch_tb);

        s = 0; r = 0;
        #20;

        s = 1; r = 0;
        #20;

        s = 0; r = 0;
        #20;

        s = 0; r = 1;
        #20;

        s = 0; r = 0;
        #20;

        $display("Test Completed");
    end

endmodule
