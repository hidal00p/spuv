`include "8_bit_latch.v"
`timescale 1ns / 1ns

module eight_bit_latch_tb;
    reg write;
    reg [7:0] data;
    wire [7:0] q;

    eight_bit_latch uut(write, data, q);

    initial begin
        write = 1; data = 8'b00000000;
        #10
        $display("%b %b %b", write, data, q);

        write = 0; data = 8'b00000101;
        #10
        $display("%b %b %b", write, data, q);

        write = 1;
        #10
        $display("%b %b %b", write, data, q);

        write = 0; data = 8'b10000000;
        #10
        $display("%b %b %b", write, data, q);

        $display("Test Completed");
    end
endmodule
