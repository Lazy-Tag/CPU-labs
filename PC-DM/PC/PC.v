`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/9 19:10:02
// Design Name: 
// Module Name: ProgramCounter
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


module ProgramCounter(
    input reset,
    input clock,
    input jumpEnabled,
    input [31:0] jumpInput,
    output reg [31:0] pcValue
);

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            pcValue <= 32'h00003000;
        end else if (jumpEnabled) begin 
            pcValue <= jumpInput;
        end else begin
            pcValue <= pcValue + 4;
        end
    end

endmodule
