`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/03 15:46:59
// Design Name: 
// Module Name: PCadd4
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


module PCadd4(
    input [31:0] PC,
    output [31:0] PCadd4
    );
    Adder adder(PC, 32'b00000000000000000000000000000100, PCadd4);
endmodule
