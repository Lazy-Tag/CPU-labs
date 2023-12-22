`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
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


module REG_EX_MEM(
    EX_RegWrite, EX_RegDst, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_Qb, EX_ALUanswer, EX_load_option, EX_save_option, EX_PC, EX_PCSrc, clock, reset,
    ME_RegWrite, ME_RegDst, ME_MemWrite, ME_MemtoReg, ME_WriteReg, ME_Qb, ME_ALUanswer, ME_load_option, ME_save_option, ME_PC, ME_PCSrc
);

    input [31:0] EX_ALUanswer, EX_Qb, EX_PC;
    input [4:0] EX_WriteReg;
    input [2:0] EX_load_option, EX_PCSrc;
    input [1:0] EX_save_option;
    input clock, reset;
    input EX_RegWrite, EX_RegDst, EX_MemWrite, EX_MemtoReg;

    output reg [31:0] ME_ALUanswer, ME_Qb, ME_PC;
    output reg [4:0] ME_WriteReg;
    output reg [2:0] ME_load_option, ME_PCSrc;
    output reg [1:0] ME_save_option;
    output reg ME_RegWrite, ME_RegDst, ME_MemWrite, ME_MemtoReg;

    initial begin
        ME_ALUanswer = 0;
        ME_MemtoReg = 0;
        ME_MemWrite = 0;
        ME_Qb = 0;
        ME_RegDst = 0;
        ME_RegWrite = 0;
        ME_WriteReg = 0;
        ME_load_option = 0;
        ME_save_option = 0;
        ME_PC = 0;
        ME_PCSrc = 0;
    end

    always @(posedge clock or negedge reset) begin  
        ME_ALUanswer = EX_ALUanswer;
        ME_MemtoReg = EX_MemtoReg;
        ME_MemWrite = EX_MemWrite;
        ME_Qb = EX_Qb;
        ME_RegDst = EX_RegDst;
        ME_RegWrite = EX_RegWrite;
        ME_WriteReg = EX_WriteReg;
        ME_load_option = EX_load_option;
        ME_save_option = EX_save_option;
        ME_PC = EX_PC;
        ME_PCSrc = EX_PCSrc;
    end

    always @(negedge reset) begin  
        ME_ALUanswer = 0;
        ME_MemtoReg = 0;
        ME_MemWrite = 0;
        ME_Qb = 0;
        ME_RegDst = 0;
        ME_RegWrite = 0;
        ME_WriteReg = 0;
        ME_load_option = 0;
        ME_save_option = 0;
        ME_PC = 0;
        ME_PCSrc = 0;
    end

endmodule
