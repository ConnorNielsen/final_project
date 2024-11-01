`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 10:01:20 AM
// Design Name: 
// Module Name: top
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


module top(
    input [15:8]sw,
    input [3:0] sw,
    input btnC,
    output [7:0] led
    );
    
    ALU alu(
    .In(sw[15:8]), .Yout(led), .btnC(btnC), .sel(sw[3:0])
    );
endmodule
