`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: PCAdd4
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


module PCAdd4(PC, PCAdd4);
    input [31:0] PC;
    output [31:0] PCAdd4;
    Adder adder(PC, 32'b100, PCAdd4);
endmodule
