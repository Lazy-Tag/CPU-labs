`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 21:30:48
// Design Name: 
// Module Name: BitOper
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


module BitOper(
    input [31:0] A,
    input [31:0] B,
    input [3:0] Op,
    output [31:0] C
    );

    wire [31:0] C_and, C_or, C_xor, C_nor;
    assign C_add = A & B;
    assign C_or = A | B;
    assign C_xor = A ^ B;
    assign C_nor = ~C_or;

    assign C = Op[2] == 0? (Op[0] == 0? C_and : C_or) : (Op[0] == 0? C_xor : C_nor);
endmodule
