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
    input [3:0] Op,
    input usigned,
    output [31:0] C,
    output over,
    output zero
);
    wire [31:0] C_shift, C_bitOp, C_add, C_cmp;
    wire [31:0] neg_B;

    Adder neg(~B, 32'b1, neg_B);

    Shifter shifter(B, A, Op, usigned, C_shift);
    Adder adder(A, Op[0]? neg_B : B, C_add);
    BitOper bitOper(A, B, Op, C_bitOp);
    Comparator comparator(A, B, Op, usigned, C_cmp);

    assign over = (~Op[3] & ~Op[2] & ~Op[1])? (usigned & A[31] == neg_B[31] & A[31] != C_add[31]) : 0;
    
    assign C = Op[3]? ((~Op[2] & ~Op[1] & Op[0])? C_cmp : C_shift) : ((~Op[2] & ~Op[1])? C_add : ((Op[2] & Op[1])? B << 16 : C_bitOp));
    
    assign zero = (C == 0) ? 1 : 0;

endmodule