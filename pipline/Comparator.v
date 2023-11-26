`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 21:37:04
// Design Name: 
// Module Name: Comparator
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


module Comparator(
    input [31:0] A,
    input [31:0] B,
    input [3:0] Op,
    input usigned,
    output [31:0] C
    );
    wire [31:0] C_eq;
    assign C_eq = A == B;

endmodule
