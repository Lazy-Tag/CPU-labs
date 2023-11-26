`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 21:59:09
// Design Name: 
// Module Name: REG_EX_MEM
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


module REG_EX_MEM(EX_WriteEnable, EX_RegDst, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_NUM_B, EX_Alu_Result, EX_load_option, EX_save_option, EX_PC, 
                  clock, reset,
                  ME_WriteEnable, ME_RegDst, ME_MemWrite, ME_MemtoReg, ME_WriteReg, ME_NUM_B, ME_Alu_Result, ME_load_option, ME_save_option, ME_PC);

    input [31:0] EX_Alu_Result, EX_NUM_B, EX_PC;
    input [4:0] EX_WriteReg;
    input [2:0] EX_load_option;
    input [1:0] EX_save_option;
    input EX_WriteEnable, EX_RegDst, EX_MemWrite, EX_MemtoReg;
    input clock, reset;

    output reg[31:0] ME_Alu_Result, ME_NUM_B, ME_PC;
    output reg[4:0] ME_WriteReg;
    output reg[2:0] ME_load_option;
    output reg[1:0] ME_save_option;
    output reg ME_WriteEnable, ME_RegDst, ME_MemWrite, ME_MemtoReg;

    initial begin
        ME_Alu_Result = 0;
        ME_NUM_B = 0;
        ME_WriteReg = 0;
        ME_load_option = 0;
        ME_save_option = 0;
        ME_WriteEnable = 0;
        ME_RegDst = 0;
        ME_MemWrite = 0;
        ME_MemtoReg = 0;
        ME_PC = 32'h00003000;
    end

    always @(posedge clock or negedge reset) begin
        if (!reset) begin
            ME_Alu_Result = 0;
            ME_NUM_B = 0;
            ME_WriteReg = 0;
            ME_load_option = 0;
            ME_save_option = 0;
            ME_WriteEnable = 0;
            ME_RegDst = 0;
            ME_MemWrite = 0;
            ME_MemtoReg = 0;
            ME_PC = 32'h00003000;
        end else begin
            ME_Alu_Result = EX_Alu_Result;
            ME_NUM_B = EX_NUM_B;
            ME_WriteReg = EX_WriteReg;
            ME_load_option = EX_load_option;
            ME_save_option = EX_save_option;
            ME_WriteEnable = EX_WriteEnable;
            ME_RegDst = EX_RegDst;
            ME_MemWrite = EX_MemWrite;
            ME_MemtoReg = EX_MemtoReg;
            ME_PC = EX_PC;
        end
    end

endmodule
