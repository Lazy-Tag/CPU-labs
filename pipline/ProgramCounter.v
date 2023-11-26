`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:57:00
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
    input [31:0] jumpInput,
    input stall,
    input stall2,
    output reg [31:0] pcValue
);
    wire enable;
    assign enable = (~stall) & (~stall2);

    initial begin
        pcValue <= 32'h00003000;
    end

    always @(posedge clock or posedge reset) begin
        if (enable == 1) begin
            if (!reset) begin
                pcValue = 32'h00003000;
            end else begin 
                pcValue = jumpInput;
            end 
        end
    end

endmodule