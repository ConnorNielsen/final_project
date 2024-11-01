`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 11:29:54 AM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
input[7:0] In,
output [7:0] Yout,
input btnC,
input[3:0] sel
    );
    reg[7:0] A,B,Y;
    wire [7:0] carry;
    
    assign Yout = Y;
    
    always @(btnC) begin
    case(sel)
        4'b1101: A = Y;
        4'b1110: begin
                A = A ^ B;
                B = A ^ B;
                A = A ^ B;
            end
        4'b1111: A = In;
    endcase
    end
    
    Ebitadder add(
    .A(A), .B(B), .Enable(carry[0]), .Y(Y)
    );
    
    Ebitsub sub(
    .A(A), .B(B), .Enable(carry[1]), .Y(Y)
    );
    
    shiftL shiftL(
    .A(A), .Y(Y), .Enable(carry[2])
    );
    
    shiftR shiftR(
    .A(A), .Y(Y), .Enable(carry[3])
    );
    
    logics logics(
    .A(A), .B(B), .Y(Y), .Enable(carry[4]), .sel(sel)
    );
    
    demult D(
    .sel(sel), .A(carry[0]), .B(carry[1]), .C(carry[2]), .D(carry[3]), .E(carry[4]), .F(carry[5]), .G(carry[6]), .H(carry[7]), .Enable(btnC)
    );
endmodule
