`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: REG_ID_EX
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


module REG_ID_EX(ID_B_code, ID_sa, ID_RegDst, ID_RegWrite, ID_ALUXSrc, ID_ALUYSrc, ID_ALUControl, ID_MemWrite, ID_MemtoReg, ID_WriteReg, ID_usigned, ID_Qa, ID_Qb, ID_Ext32, ID_FA, ID_FB, ID_load_option, ID_save_option, ID_PC, ID_PCSrc, ID_md_control, ID_start, clock, reset,
                 EX_B_code, EX_sa, EX_RegDst, EX_RegWrite, EX_ALUXSrc, EX_ALUYSrc, EX_ALUControl, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_usigned, EX_Qa, EX_Qb, EX_Ext32, EX_FA, EX_FB, EX_load_option, EX_save_option, EX_PC, EX_PCSrc, EX_md_control, EX_start, stall, stall2);

    input [31:0] ID_Qa, ID_Qb, ID_Ext32, ID_sa, ID_PC;
    input [4:0] ID_WriteReg;
    input [1:0] ID_FA, ID_FB;
    input [3:0] ID_ALUControl;
    input [2:0] ID_load_option, ID_PCSrc, ID_md_control;
    input [1:0] ID_save_option;
    input clock, reset, stall, stall2;
    input ID_RegDst, ID_RegWrite, ID_ALUYSrc, ID_MemWrite, ID_MemtoReg, ID_ALUXSrc, ID_usigned, ID_B_code, ID_start;

    wire enable;
    assign enable = (~stall) & (~stall2);

    output reg [31:0] EX_Qa, EX_Qb, EX_Ext32, EX_sa, EX_PC;
    output reg [1:0] EX_FA, EX_FB;
    output reg [3:0] EX_ALUControl;
    output reg [4:0] EX_WriteReg;
    output reg [2:0] EX_load_option, EX_PCSrc, EX_md_control;
    output reg [1:0] EX_save_option;
    output reg EX_RegDst, EX_RegWrite, EX_ALUYSrc, EX_MemWrite, EX_MemtoReg, EX_ALUXSrc, EX_usigned, EX_B_code, EX_start;

    initial begin
        EX_sa = 0;
        EX_ALUControl = 0;
        EX_ALUXSrc = 0;
        EX_ALUYSrc = 0;
        EX_Ext32 = 0;
        EX_FA = 0;
        EX_FB = 0;
        EX_MemtoReg = 0;
        EX_MemWrite = 0;
        EX_Qa = 0;
        EX_Qb = 0;
        EX_RegDst = 0;
        EX_RegWrite = 0;
        EX_WriteReg = 0;  
        EX_usigned = 0;
        EX_B_code = 0;
        EX_load_option = 0;
        EX_save_option = 0;
        EX_PC = 0;
        EX_PCSrc = 0;
        EX_start = 0;
        EX_md_control = 0;
    end

    always @(posedge clock) begin  
        if (enable == 0) begin  
            EX_sa = 0;
            EX_ALUControl = 0;
            EX_ALUXSrc = 0;
            EX_ALUYSrc = 0;
            EX_Ext32 = 0;
            EX_FA = 0;
            EX_FB = 0;
            EX_MemtoReg = 0;
            EX_MemWrite = 0;
            EX_Qa = 0;
            EX_Qb = 0;
            EX_RegDst = 0;
            EX_RegWrite = 0;
            EX_WriteReg = 0;  
            EX_usigned = 0;
            EX_B_code = 0;
            EX_load_option = 0;
            EX_save_option = 0;
            EX_PC = 0;
            EX_PCSrc = 0;
            EX_start = 0;
            EX_md_control = 0;
        end else begin
            EX_sa = ID_sa;
            EX_ALUControl = ID_ALUControl;
            EX_ALUXSrc = ID_ALUXSrc;
            EX_ALUYSrc = ID_ALUYSrc;
            EX_Ext32 = ID_Ext32;
            EX_FA = ID_FA;
            EX_FB = ID_FB;
            EX_MemtoReg = ID_MemtoReg;
            EX_MemWrite = ID_MemWrite;
            EX_Qa = ID_Qa;
            EX_Qb = ID_Qb;
            EX_RegDst = ID_RegDst;
            EX_RegWrite = ID_RegWrite;
            EX_WriteReg = ID_WriteReg;  
            EX_usigned = ID_usigned;
            EX_B_code = ID_B_code;
            EX_load_option = ID_load_option;
            EX_save_option = ID_save_option;
            EX_PC = ID_PC;
            EX_PCSrc = ID_PCSrc;
            EX_start = ID_start;
            EX_md_control = ID_md_control;
        end  
    end
    
    always @(posedge reset) begin  
        EX_sa = 0;
        EX_ALUControl = 0;
        EX_ALUXSrc = 0;
        EX_ALUYSrc = 0;
        EX_Ext32 = 0;
        EX_FA = 0;
        EX_FB = 0;
        EX_MemtoReg = 0;
        EX_MemWrite = 0;
        EX_Qa = 0;
        EX_Qb = 0;
        EX_RegDst = 0;
        EX_RegWrite = 0;
        EX_WriteReg = 0;  
        EX_usigned = 0;
        EX_B_code = 0;
        EX_load_option = 0;
        EX_save_option = 0;
        EX_PC = 0;
        EX_PCSrc = 0;
        EX_start = 0;
        EX_md_control = 0;
    end

endmodule
