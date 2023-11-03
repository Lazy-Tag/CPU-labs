`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:57:00
// Design Name: 
// Module Name: GeneralPurposeRegisters
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

module GeneralPurposeRegisters(
  input wire [4:0] readReg1,  // 要读取的寄存器1的编号
  input wire [4:0] readReg2,  // 要读取的寄存器2的编号
  input wire [31:0] writeData, // 要写入的数据
  input wire [4:0] writeReg,  // 要写入的寄存器的编号
  input wire writeEnable,     // 写入使能信号
  input wire clock,             // 时钟信号
  input wire reset,           // 复位信号
  output wire [31:0] readData1, // 从寄存器1读取的数据
  output wire [31:0] readData2  // 从寄存器2读取的数据
);

  // 定义通用寄存器
  reg [31:0] registers[31:0];
  integer i;
  // 初始化：在reset信号时清零所有寄存器
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      for (i = 0; i < 32; i = i + 1) begin
        registers[i] <= 32'h0;
      end
    end
  end

  // 读取数据
  assign readData1 = (readReg1 == 5'b00000) ? 32'h0 : registers[readReg1];
  assign readData2 = (readReg2 == 5'b00000) ? 32'h0 : registers[readReg2];

  // 写入数据：如果写入使能信号为1，则写入指定寄存器的数据
  always @(posedge clock) begin
    if (writeEnable) begin
      if (writeReg != 5'b00000) begin
        registers[writeReg] <= writeData;
      end
    end
  end

endmodule

