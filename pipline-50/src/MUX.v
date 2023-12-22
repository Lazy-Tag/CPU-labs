`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 16:47:49
// Design Name: 
// Module Name: MUX
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

module MUX2X5(rd, rt, RegDst, Y);
    input [4:0] rd, rt;
    input RegDst;
    output [4:0] Y;

    function [4:0] select;
        input [4:0] rd, rt;
        input RegDst;
        case(RegDst)
            1:select = rt;
            0:select = rd;
        endcase
    endfunction
    assign Y = select(rd, rt, RegDst);
endmodule
  
module MUX2X32(A, B, signal, C);
    input [31:0] A, B;
    input signal;
    output [31:0] C;

    function [31:0] select;
        input [31:0] A, B;
        input signal;
        case(signal)
            0: select = A;
            1: select = B;
        endcase
    endfunction
    assign C = select(A, B, signal);
endmodule

module MUX3X32(A, B, C, signal, D);
    input [31:0] A, B, C;
    input [1:0] signal;
    output [31:0] D;

    function [31:0] select;
        input [31:0] A, B, C;
        input [1:0] signal;
        case(signal)
            2'b00: select = A;
            2'b01: select = B;
            2'b10: select = C;
        endcase
    endfunction
    assign D = select (A, B, C, signal);
endmodule

module MUX3X32_WriteInput(A, B, C, signal, D);
    input [31:0] A, B, C;
    input [1:0] signal;
    output [31:0] D;

    function [31:0] select;
        input [31:0] A, B, C;
        input [1:0] signal;
        case(signal)
            2'b00: select = A;
            2'b01: select = C;
            2'b10: select = B;
            2'b11: select = C;
        endcase
    endfunction
    assign D = select (A, B, C, signal);
endmodule

module MUX4X32_addr (PCAdd4, B, J, Jr, PCSrc, choice);
    input [31:0] PCAdd4, B, J, Jr;
    input [2:0] PCSrc;
    output [31:0] choice;

    function [31:0] select;
        input [31:0] PCAdd4, B, J, Jr;
        input [2:0] PCSrc;
        case(PCSrc)
            3'b000: select = PCAdd4;
            3'b001: select = B;
            3'b010: select = J;
            3'b011: select = J;
            3'b100: select = Jr;
            3'b101: select = Jr;
        endcase
    endfunction

    assign choice = select (PCAdd4, B, J, Jr, PCSrc);
endmodule

module MUX5X32(A, B, D, C, E, signal, F);
    input [31:0] A, B, D, C, E;
    input [2:0] signal;
    output [31:0] F;

    function [31:0] select;
        input [31:0] A, B, D, C, E;
        input [2:0] signal;
        case(signal)
            3'b000: select = E;
            3'b101: select = A;
            3'b001: select = B;
            3'b111: select = D;
            3'b011: select = C;
        endcase
    endfunction
    assign F = select(A, B, D, C, E, signal);
endmodule