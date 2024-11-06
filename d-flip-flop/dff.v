module dff (clk, data, q, q_bar);
    input clk, data;
    output q, q_bar;

    wire into_q, into_q_bar;

    assign into_q = clk & ~data;
    assign into_q_bar = clk & data;

    assign q = ~(into_q | q_bar);
    assign q_bar = ~(into_q_bar | q);
endmodule
