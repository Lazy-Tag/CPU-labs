`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 12:50:17
// Design Name: 
// Module Name: Shift
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


module ShiftLeft2(
    input [31:0] A,
    output [31:0] C 
    );

    parameter z = 2'b00;
    assign C = {A[29:0], z};
endmodule

module ShiftCombination(
    input [25:0] A,
    input [31:0] PC,
    output [31:0] C
);
    parameter z = 2'b00;
    assign C = {PC[31:28], A[25:0], z};
endmodule
