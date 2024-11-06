`include "ha.v"

module full_adder(a, b, ci, so, co);
    input a, b, ci;
    output so, co;

    wire operand_so, operand_co;
    half_adder operand_ha(.a(a), .b(b), .so(operand_so), .co(operand_co));

    wire carry_co;
    half_adder carry_ha(.a(ci), .b(operand_ha.so), .so(so), .co(carry_co));

    assign co = carry_co | operand_co;
endmodule
