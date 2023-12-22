`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: REG_MEME_WB
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


module REG_MEM_WB(
    ME_RegWrite, ME_MemtoReg, ME_Alu_Result, ME_Dout, ME_WriteReg, ME_load_option, ME_PC, ME_PCSrc, clock, reset,
    WB_RegWrite, WB_MemtoReg, WB_Alu_Result, WB_Dout, WB_WriteReg, WB_load_option, WB_PC, WB_PCSrc
);

    input [31:0] ME_Alu_Result, ME_Dout, ME_PC;
    input [4:0] ME_WriteReg;
    input [2:0] ME_load_option, ME_PCSrc;
    input clock, reset, ME_RegWrite, ME_MemtoReg;

    output reg [31:0] WB_Alu_Result, WB_Dout, WB_PC;
    output reg [4:0] WB_WriteReg;
    output reg [2:0] WB_load_option, WB_PCSrc;
    output reg WB_RegWrite, WB_MemtoReg;

    initial begin
        WB_RegWrite = 0;
        WB_MemtoReg = 0;
        WB_Alu_Result = 0;
        WB_Dout = 0;
        WB_WriteReg = 0;
        WB_load_option = 0;
        WB_PC = 0;
        WB_PCSrc = 0;
    end

    always @(posedge clock) begin  
        WB_RegWrite = ME_RegWrite;
        WB_MemtoReg = ME_MemtoReg;
        WB_Alu_Result = ME_Alu_Result;
        WB_Dout = ME_Dout;
        WB_WriteReg = ME_WriteReg;
        WB_load_option = ME_load_option;
        WB_PC = ME_PC;
        WB_PCSrc = ME_PCSrc;
    end

    always @(negedge reset) begin  
        WB_RegWrite = 0;
        WB_MemtoReg = 0;
        WB_Alu_Result = 0;
        WB_Dout = 0;
        WB_WriteReg = 0;
        WB_load_option = 0;
        WB_PC = 0;
        WB_PCSrc = 0;
    end
endmodule
