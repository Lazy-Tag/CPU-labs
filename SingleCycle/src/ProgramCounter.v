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
    output reg [31:0] pcValue
);

    initial begin
        pcValue <= 0;
    end

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            pcValue <= 32'h00003000;
        end else  begin 
            pcValue <= jumpInput;
        end 
    end

endmodule