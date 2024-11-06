`include "8_bit_latch.v"
`timescale 1ns / 1ns

module eight_bit_latch_tb;
    reg clk;
    reg [7:0] data;
    wire [7:0] q;

    eight_bit_latch uut(clk, data, q);

    initial begin
        clk = 1; data = 8'b00000000;
        #10
        $display("%b %b %b", clk, data, q);

        clk = 0; data = 8'b00000101;
        #10
        $display("%b %b %b", clk, data, q);

        clk = 1;
        #10
        $display("%b %b %b", clk, data, q);

        clk = 0; data = 8'b10000000;
        #10
        $display("%b %b %b", clk, data, q);

        $display("Test Completed");
    end
endmodule
