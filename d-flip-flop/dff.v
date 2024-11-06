module dff (clk, data, q);
    input clk, data;
    output q;

    wire q_bar;

    assign q = ~((clk & ~data) | q_bar);
    assign q_bar = ~((clk & data) | q);
endmodule
