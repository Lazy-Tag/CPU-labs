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
  input wire [4:0] readReg1,  
  input wire [4:0] readReg2,  
  input wire [31:0] writeData, 
  input wire [4:0] writeReg,  
  input wire writeEnable,     
  input wire clock,             
  input wire reset,           
  output wire [31:0] readData1, 
  output wire [31:0] readData2  
);


  reg [31:0] registers[31:0];
  integer i;

  always @(posedge clock or posedge reset) begin
    if (reset) begin
      for (i = 0; i < 32; i = i + 1) begin
        registers[i] <= 32'h0;
      end
    end
  end

  assign readData1 = (readReg1 == 5'b00000) ? 32'h0 : registers[readReg1];
  assign readData2 = (readReg2 == 5'b00000) ? 32'h0 : registers[readReg2];

  always @(posedge clock) begin
    if (writeEnable) begin
      if (writeReg != 5'b00000) begin
        registers[writeReg] <= writeData;
      end
    end
  end

endmodule

