`include "dff.v"
`timescale 1ns / 1ns

module dff_tb;
    reg clk, data;
    wire q;

    dff uut(clk, data, q);

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0, dff_tb);

        clk = 1; data = 0;
        #10

        clk = 0; data = 0;
        #10

        clk = 0; data = 1;
        #10

        clk = 1; data = 1;
        #10

        clk = 0; data = 0;
        #10

        $display("Test Completed");
    end
endmodule
