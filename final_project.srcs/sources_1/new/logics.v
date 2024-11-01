module logics(
input[7:0] A, B,
output reg[7:0] Y,
input Enable,
input[3:0] sel
);
reg[7:0] y2;

always @(Enable) begin
    case (sel)
        4'b0100: Y = (A==B ?  0 : (A>B ? 1 : -1));
        4'b0101: Y = A&B;
        4'b0110: Y = A|B;
        4'b0111: Y = A^B;
        4'b1000: Y = ~(A&B);
        4'b1001: Y = ~(A|B);
        4'b1010: Y = A~^B;
        4'b1011: Y = ~A;
        4'b1100: Y = y2; 
    endcase
end  

twos_compliment twos(
.A(A),.Enable(1'b1), .Y(y2)
);
endmodule