module load(
    input [7:0]A,
    input Enable,
    output [7:0]Y
);

memory loadA(
    .D(A), .E(Enable), .Q(Y)
);
endmodule