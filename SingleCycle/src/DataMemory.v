`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:57:00
// Design Name: 
// Module Name: DataMemory
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
    input [31:0] address,
    input [31:0] writeInput,
    input clock,
    input Wmem,
    output [31:0] Dout
);

    reg [31:0] data [0:2047];  // 32位×1024的存储器
    integer i;

    initial begin
        for (i = 0; i < 1024; i = i + 1) begin
            data[i] <= 32'h00000000;
        end
    end

    always @(posedge clock) begin  
        if (Wmem) begin
            // 在写入使能时，写入数据到指定地址
            data[address[12:2]] <= writeInput;
        end
    end

    // 组合逻辑，读取指定地址的数据
    assign Dout = data[address[31:2]];

endmodule
