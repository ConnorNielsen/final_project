module Ebitadder(
    input [7:0] A, B,
    input Enable,
    output [7:0] Y
);
wire[7:0] carry;

full_adder adder(
    .A(A[0]), .B(B[0]), 
    .Cin(1'b0), .Y(Y[0]),
    .Cout(carry[0])
);
genvar i;
generate
    for (i = 1; i <= 7; i = i+1) begin
        full_adder adder(
            .A(A[i]), .B(B[i]), 
            .Cin(carry[i-1]), .Y(Y[i]),
            .Cout(carry[i])
        );
    end
endgenerate
endmodule