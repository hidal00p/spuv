`include "fa.v"
`timescale 1ns / 1ns

module full_adder_tb;
    reg a, b, ci;
    wire so, co;

    full_adder uut(a, b, ci, so, co);

    initial begin
        $dumpfile("fa.vcd");
        $dumpvars(0, full_adder_tb);

        ci = 0; a = 0; b = 0;
        #10;

        a = 1; b = 0;
        #10;

        a = 0; b = 1;
        #10;

        a = 1; b = 1;
        #10;

        $display("Test Completed");
    end
endmodule
