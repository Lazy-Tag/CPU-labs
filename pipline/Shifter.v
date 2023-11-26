`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 21:26:23
// Design Name: 
// Module Name: Shifter
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


module Shifter(
    input [31:0] B,
    input [31:0] A,
    input [3:0] Op,
    input usigned,
    output [31:0] C
    );

    wire [31:0] LShift, RShift, ARShift;

    assign LShift = B << A;
    assign RShift = B >> A;
    assign ARShift = $signed(B) >>> A;

    assign C = Op[3] == 1? LShift : (usigned == 1? ARShift : RShift);
endmodule
