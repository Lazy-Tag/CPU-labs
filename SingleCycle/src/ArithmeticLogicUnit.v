`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:57:00
// Design Name: 
// Module Name: ProgramCounter
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

module ArithmeticLogicUnit(
    input [31:0] A,
    input [31:0] B,
    input [1:0] Op,
    output [31:0] C,
    output Z
);
    wire [31:0] negB, d_add, d_sub;
    Adder adder(A, B, d_add);
    Adder notB(~B, 32'b00000000000000000000000000000001, negB);
    Adder suber(A, negB, d_sub);
    MUX4X32 mux4x32(d_add, d_sub, B << 5'b10000, A | B, Op, C);
    assign Z = ~|C;
endmodule