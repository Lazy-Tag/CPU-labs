`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:57:00
// Design Name: 
// Module Name: InstructionMemory
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

module InstructionMemory(
    input wire [31:0] address,
    output [31:0] instruction
);

reg [31:0] memory [0:2047]; // 8 KiB memory with 1024 words

integer i;
initial begin
    $readmemh("C:\\Users\\HBW\\Desktop\\pipeline-tester\\pipline\\code.txt", memory);
    $display("start simulation");
end

assign instruction = memory[address[11:2]];

endmodule
