`include "dff.v"

module eight_bit_latch(input clk, input [7:0] data, output [7:0] q);
    genvar i;
    generate
        for (i = 0; i <= 7; i = i + 1) begin : full_latch
            dff one_bit_latch(clk, data[i], q[i]);
        end
    endgenerate
endmodule
