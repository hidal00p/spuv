`include "fa.v"

module eight_bit_adder (input [7:0] a, input [7:0] b, input ci, output [7:0] so, output co);
    wire co_0;
    full_adder fa_0 (a[0], b[0], ci, so[0], co_0);

    wire co_1;
    full_adder fa_1 (a[1], b[1], co_0, so[1], co_1);

    wire co_2;
    full_adder fa_2 (a[2], b[2], co_1, so[2], co_2);

    wire co_3;
    full_adder fa_3 (a[3], b[3], co_2, so[3], co_3);

    wire co_4;
    full_adder fa_4 (a[4], b[4], co_3, so[4], co_4);

    wire co_5;
    full_adder fa_5 (a[5], b[5], co_4, so[5], co_5);

    wire co_6;
    full_adder fa_6 (a[6], b[6], co_5, so[6], co_6);

    full_adder fa_7 (a[7], b[7], co_6, so[7], co);
endmodule
