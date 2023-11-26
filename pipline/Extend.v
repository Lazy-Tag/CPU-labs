`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 13:00:14
// Design Name: 
// Module Name: Extend
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


module Extend16to32(
    input [15:0] A,
    input se,
    output [31:0] C
    );

    wire [31:0] C1, C2;
    wire [15:0] f;
    assign f = {16{A[15]}};
    parameter z = 16'b0;
    assign C1 = {z, A};
    assign C2 = {f, A};

    MUX2X32 i(C1, C2, se, C);

endmodule

module Extend5to32(
    input [4:0] A,
    output [31:0] C
);
    parameter z = 27'b0;
    assign C = {z, A};

endmodule
