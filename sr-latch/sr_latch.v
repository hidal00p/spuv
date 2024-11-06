module sr_latch (s, r, q, q_bar);

    input wire s, r;
    output wire q, q_bar;

    assign q = ~(r | q_bar);
    assign q_bar = ~(s | q);

endmodule
