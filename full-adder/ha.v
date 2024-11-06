module half_adder(a, b, so, co);
    input a, b;
    output so, co;

    assign co = a & b;
    assign so = ~(a & b) & (a | b);
endmodule
