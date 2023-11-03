`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/02 19:32:33
// Design Name: 
// Module Name: Shift2Left
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


module Shift2Left(
    input [31:0] X,
    output [31:0] result
    );

    parameter z = 2'b00;
    assign result = {X[29:0], z};
endmodule
