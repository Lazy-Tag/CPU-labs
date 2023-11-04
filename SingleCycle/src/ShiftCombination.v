`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/02 19:36:08
// Design Name: 
// Module Name: ShiftCombination
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

    
module ShiftCombination(
    input [25:0] X,
    input [31:0] PCadd4,
    output [31:0] result
    );
    parameter z = 2'b00;
    assign result = {PCadd4[31:28], X[25:0], z};
endmodule
