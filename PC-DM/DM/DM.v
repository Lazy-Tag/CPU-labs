`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 19:10:02
// Design Name: 
// Module Name: DM
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


module DataMemory(
    input reset,
    input clock,
    input [31:0] address,
    input writeEnabled,
    input [31:0] writeInput,
    output [31:0] readResult
);

    reg [31:0] data [0:1023];  // 32位×1024的存储器
    integer i;

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            // 在复位时将存储器清零
            for (i = 0; i < 1024; i = i + 1) begin
                data[i] <= 32'h00000000;
            end
        end else if (writeEnabled) begin
            // 在写入使能时，写入数据到指定地址
            data[address[31:2]] <= writeInput;
        end
    end

    // 组合逻辑，读取指定地址的数据
    assign readResult = data[address[31:2]];

endmodule

