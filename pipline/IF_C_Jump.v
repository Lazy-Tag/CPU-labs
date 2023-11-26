`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 19:25:31
// Design Name: 
// Module Name: IF_C_Jump
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


module IF_C_Jump(
    input [31:0] A,
    input [31:0] B,
    input [3:0] Op,
    input usigned,
    output C_Jump
    );

    wire is_eq;
    assign is_eq = (A == B);

    assign C_Jump = (~Op[3] && ~Op[2] && ~Op[1]) && is_eq; 
endmodule
