`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/03 22:07:51
// Design Name: 
// Module Name: MUX4X5
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


module MUX4X5(
    input [4:0] A0,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [1:0] S,
    output [4:0] Y);

    function [4:0] select;
        input [4:0] A0, A1, A2, A3;
        input [1:0] S;
        case(S)
            2'b00:select = A0;
            2'b01:select = A1;
            2'b10:select = A2;
            2'b11:select = A3;
        endcase
    endfunction
    assign Y = select(A0, A1, A2, A3, S);
endmodule
