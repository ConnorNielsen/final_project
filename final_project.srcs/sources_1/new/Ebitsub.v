`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 10:07:07 AM
// Design Name: 
// Module Name: Ebitsub
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


module Ebitsub(
    input [7:0] A, B,
    input Enable,
    output [7:0] Y
    );
    
    wire [7:0]b_comp;
    twos_compliment(
        .A(B), .Y(b_comp)
    );
    
    Ebitadder add(
        .A(A), .B(b_comp),
        .Enable(1'b1), .Y(Y)
    );
endmodule
