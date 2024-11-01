module store(
    input [7:0]A,
    input Enable,
    output [7:0]Y
);

memory storeA(
    .D(A), .E(Enable), .Q(Y)
);
endmodule