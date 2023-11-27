`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: shift
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


module Shifter32L2(X,Sh);
    input [31:0] X;
    output [31:0] Sh;
    parameter z=2'b00;
    assign Sh={X[29:0],z};
endmodule

module ShifterCombination(X,PCADD4,Sh);
    input [25:0] X;
    input [31:0] PCADD4;
    output [31:0] Sh;
    parameter z=2'b00;
    assign Sh={PCADD4[31:28],X[25:0],z};
endmodule
