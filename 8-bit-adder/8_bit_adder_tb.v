`include "8_bit_adder.v"
`timescale 1ns / 1ns

module eight_bit_adder_tb;
    reg [7:0] a;
    reg [7:0] b;
    reg ci;
    reg [8:0] full_res;

    wire [7:0] so;
    wire co;

    eight_bit_adder uut(a, b, ci, so, co);

    initial begin
        ci = 0;
        #10;

        a = 8'b00000010; b = 8'b00000011;
        #10;
        full_res = {co, so};
        $display("%d + %d = %d", a, b, full_res);

        a = 8'b11111111; b = 8'b00000001;
        #10;
        full_res = {co, so};
        $display("%d + %d = %d", a, b, full_res);


        $display("Test Completed");
    end
endmodule
