`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 20:29:14
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


module REG_ID_EX(ID_md_signal, ID_B_code, ID_sa, ID_RegDst, ID_WriteEnable, ID_ALUXSrc, ID_ALUYSrc, ID_ALUControl, ID_md_control, ID_MemWrite, ID_MemtoReg, ID_WriteReg, ID_usigned, ID_Qa, ID_Qb, ID_ext32, ID_FA, ID_FB, ID_load_option, ID_save_option, ID_PC, 
                 clock, reset, stall, stall2,
                 EX_md_signal, EX_B_code, EX_sa, EX_RegDst, EX_WriteEnable, EX_ALUXSrc, EX_ALUYSrc, EX_ALUControl, EX_md_control, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_usigned, EX_Qa, EX_Qb, EX_ext32, EX_FA, EX_FB, EX_load_option, EX_save_option, EX_PC);
    
    input [31:0] ID_Qa, ID_Qb, ID_ext32, ID_sa, ID_PC;
    input [4:0] ID_WriteReg;
    input [3:0] ID_ALUControl;
    input [2:0] ID_load_option, ID_md_control;
    input [1:0] ID_FA,ID_FB, ID_save_option;
    input ID_RegDst, ID_WriteEnable, ID_ALUYSrc, ID_MemWrite, ID_MemtoReg, ID_ALUXSrc, ID_usigned, ID_B_code, ID_md_signal;
    input clock, reset, stall, stall2;

    output reg[31:0] EX_Qa, EX_Qb, EX_ext32, EX_sa, EX_PC;
    output reg[3:0] EX_ALUControl;
    output reg[4:0] EX_WriteReg;
    output reg[2:0] EX_load_option, EX_md_control;
    output reg[1:0] EX_FA, EX_FB, EX_save_option;
    output reg EX_RegDst, EX_WriteEnable, EX_ALUYSrc, EX_MemWrite, EX_MemtoReg, EX_ALUXSrc, EX_usigned, EX_B_code, EX_md_signal;

    wire nop;
    assign nop = (~stall) & (~stall2);

    initial begin
        EX_PC = 32'h00003000;
        EX_sa = 0;
        EX_ALUControl = 0;
        EX_ALUXSrc = 0;
        EX_ALUYSrc = 0;
        EX_ext32 = 0;
        EX_FA = 0;
        EX_FB = 0;
        EX_MemtoReg = 0;
        EX_MemWrite = 0;
        EX_Qa = 0;
        EX_Qb = 0;
        EX_RegDst = 0;
        EX_WriteEnable = 0;
        EX_WriteReg = 0;  
        EX_usigned = 0;
        EX_B_code = 0;
        EX_load_option = 0;
        EX_save_option = 0;
        EX_md_control = 0;
        EX_md_signal = 0;
    end

    always@(posedge clock or negedge reset) begin
        if (nop == 0) begin
            EX_PC = 32'h00003000;
            EX_sa = 0;
            EX_ALUControl = 0;
            EX_ALUXSrc = 0;
            EX_ALUYSrc = 0;
            EX_ext32 = 0;
            EX_FA = 0;
            EX_FB = 0;
            EX_MemtoReg = 0;
            EX_MemWrite = 0;
            EX_Qa = 0;
            EX_Qb = 0;
            EX_RegDst = 0;
            EX_WriteEnable = 0;
            EX_WriteReg = 0;  
            EX_usigned = 0;
            EX_B_code = 0;
            EX_load_option = 0;
            EX_save_option = 0;
            EX_md_control = 0;
            EX_md_signal = 0;
        end else begin
            EX_PC = ID_PC;
            EX_sa = ID_sa;
            EX_ALUControl = ID_ALUControl;
            EX_ALUXSrc = ID_ALUXSrc;
            EX_ALUYSrc = ID_ALUYSrc;
            EX_ext32 = ID_ext32;
            EX_FA = ID_FA;
            EX_FB = ID_FB;
            EX_MemtoReg = ID_MemtoReg;
            EX_MemWrite = ID_MemWrite;
            EX_Qa = ID_Qa;
            EX_Qb = ID_Qb;
            EX_RegDst = ID_RegDst;
            EX_WriteEnable = ID_WriteEnable;
            EX_WriteReg = ID_WriteReg;  
            EX_usigned = ID_usigned;
            EX_B_code = ID_B_code;
            EX_load_option = ID_load_option;
            EX_save_option = ID_save_option;
            EX_md_control = ID_md_control;
            EX_md_signal = ID_md_signal;
        end
    end
endmodule
