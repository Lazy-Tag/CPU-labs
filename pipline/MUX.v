`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 13:07:15
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

module MUX2X5(
    input [4:0] A,
    input [4:0] B,
    input signal,
    output [4:0] C
);
    function [4:0] select;
        input [4:0] A, B;
        input signal;
        case(signal)
            1'b0: select = A;
            1'b1: select = B;
        endcase
    endfunction
    assign C = select(A, B, signal);
endmodule

module MUX2X32(
    input [31:0] A,
    input [31:0] B,
    input signal,
    output [31:0] C
);
    function [31:0] select;
        input [31:0] A, B;
        input signal;
        case(signal)
            1'b0: select = A;
            1'b1: select = B;
        endcase
    endfunction
    assign C = select(A, B, signal);
endmodule

module MUX2X32_forward(
    input [31:0] A,
    input [31:0] B,
    input [1:0] signal,
    output [31:0] C
);
    function [31:0] select;
        input [31:0] A, B;
        input signal;
        case(signal)
            2'b00: select = A;
            2'b01: select = B;
        endcase
    endfunction
    assign C = select(A, B, signal);
endmodule

module MUX3X32(
    input [31:0] A,
    input [31:0] B,
    input [31:0] C,
    input [1:0] signal,
    output [31:0] D
);
    function [31:0] select;
        input [31:0] A, B, C;
        input [1:0]     signal;
        case(signal)
            2'b00: select = A;
            2'b01: select = B;
            2'b10: select = C;
        endcase
    endfunction
    assign D = select(A, B, C, signal);
endmodule

module MUX4X32_jump(
    input [31:0] A,
    input [31:0] B,
    input [31:0] C,
    input [31:0] D,
    input [2:0] signal,
    output [31:0] E
);
    function [31:0] select;
        input [31:0] A, B, C, D;
        input [2:0] signal;
        case(signal)
            3'b000: select = A;
            3'b001: select = B;
            3'b010: select = C;
            3'b011: select = C;
            3'b100: select = D;
            3'b101: select = D;
        endcase
    endfunction
    assign E = select(A, B, C, D, signal);
endmodule






