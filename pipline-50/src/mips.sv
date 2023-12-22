`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: mips
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

`include "MultiplicationDivisionUnit.sv"
module TopLevel(reset, clock);

    input clock, reset;
    wire [31:0] WriteInput, Alu_Y, Alu_X;
    wire [3:0] BE;
    wire c_adventure, stall, stall2, over;
    logic busy, block;

    reg sys;
    reg [2:0] count;

    // IF signal
    wire [31:0] IF_PC, IF_Choose, IF_PCAdd4, IF_Inst;

    // ID signal
    wire [31:0] ID_Ext32_L2, ID_B, ID_J, ID_PCAdd4, ID_Qa, ID_Qb, ID_rs, ID_rt, ID_Ext32, ID_Inst, ID_sa, ID_PC;
    wire [4:0] ID_WriteReg;
    wire [3:0] ID_ALUControl;
    wire [2:0] ID_PCSrc, ID_load_option, ID_md_control;
    wire [1:0] ID_FB, ID_FA, ID_save_option;
    wire ID_RegDst, ID_RegWrite, ID_ALUXSrc, ID_ALUYSrc, ID_MemtoReg, ID_MemWrite, ID_usigned, ID_B_code, ID_start, ID_md;

    // EX signal
    wire [31:0] EX_NUM_X, EX_NUM_Y, EX_Alu_Result, EX_Qa, EX_Qb, EX_Ext32, EX_sa, EX_PC, EX_md_Result;
    wire [4:0] EX_WriteReg;
    wire [3:0] EX_ALUControl;
    wire [2:0] EX_PCSrc, EX_load_option, EX_md_control;
    wire [1:0] EX_FA, EX_FB, EX_save_option;
    wire EX_MemtoReg, EX_MemWrite, EX_usigned, EX_B_code, EX_RegDst, EX_RegWrite, EX_ALUXSrc, EX_ALUYSrc, EX_start, EX_md;
    mdu_operation_t operation;

    // ME signal
    wire [31:0] ME_Result, ME_Alu_Result, ME_NUM_Y, ME_Dout, ME_PC;
    wire [4:0] ME_WriteReg;
    wire [2:0] ME_PCSrc, ME_load_option;
    wire [1:0] ME_save_option;
    wire ME_RegDst, ME_MemtoReg, ME_MemWrite, ME_RegWrite;

    // WB signal
    wire [31:0] WB_Alu_Result, WB_Dout, WB_ext_Dout, WB_PC;
    wire [4:0] WB_WriteReg;
    wire [2:0] WB_PCSrc, WB_load_option;
    wire WB_MemtoReg, WB_RegWrite;

    initial begin
        sys <= 1'b0;
        count <= 3'b0;
    end

    // IF
    MUX4X32_addr mux4x32(IF_PCAdd4, ID_B, ID_J, ID_rs, ID_PCSrc, IF_Choose);
    PC PC(IF_Choose, clock, reset, IF_PC, stall, stall2, block);
    PCAdd4 PCAdd4(IF_PC, IF_PCAdd4);
    InstMemory inst_memory(IF_PC, IF_Inst);
    REG_IF_ID REG_IF_ID(IF_PCAdd4, IF_Inst, IF_PC, clock, reset, ID_PCAdd4, ID_Inst, ID_PC, stall, stall2, block);

    // System call
    always@ (posedge clock) begin
        if (ID_Inst[31:26] == 6'b000000 && ID_Inst[4:0] == 5'b01100) begin
            sys = 1'b1;
            count = 3'b001;
        end

        if (sys == 1'b1) begin
            count = count + 1;;
        end

        if (count == 3'b101) begin
            $display("System call");
            $finish;
        end
    end

    // ID
    CU CU(ID_PC, ID_Inst, ID_Inst[5:0], busy, EX_md, ID_B_code, ID_RegDst, Se, ID_RegWrite, ID_ALUXSrc, ID_ALUYSrc, ID_ALUControl, ID_MemWrite, ID_PCSrc, ID_MemtoReg, ID_load_option, ID_save_option, ID_usigned, c_adventure, ID_md_control, ID_start, ID_md, EX_md_control[2], block);
    
    MUX2X5 mux2x5(ID_Inst[15:11], ID_Inst[20:16], ID_RegDst, ID_WriteReg);

    RegisterFile register_file(ID_Inst[25:21], ID_Inst[20:16], ID_Inst[15:11], WriteInput, WB_WriteReg, WB_RegWrite, clock, reset, ID_Qa, ID_Qb, WB_PCSrc, WB_PC, WB_PC);

    if_c_adventure if_c_adventure(ID_rs, ID_rt, ID_ALUControl, ID_usigned, c_adventure);
    FU FU(EX_RegWrite, EX_WriteReg, EX_MemtoReg, ME_RegWrite, ME_WriteReg, ME_MemtoReg, EX_PCSrc, ME_PCSrc, ID_Inst[25:21], ID_Inst[20:16], ID_FA, ID_FB, ID_Inst[31:26], ID_Inst[5:0], c_adventure, stall, stall2);
    MUX3X32 mux3x32_ID_X(ID_Qa, EX_Alu_Result, ME_Alu_Result, ID_FA, ID_rs);
    MUX3X32 mux3x32_ID_Y(ID_Qb, EX_Alu_Result, ME_Alu_Result, ID_FB, ID_rt);
    
    EXT16T32 ext16t32(ID_Inst[15:0], Se, ID_Ext32);
    EXT5T32 ext5t32(ID_Inst[10:6], ID_sa);
    Shifter32L2 shifter(ID_Ext32, ID_Ext32_L2);
    Adder adder(ID_PCAdd4, ID_Ext32_L2, ID_B);

    ShifterCombination get_j_address(ID_Inst[25:0], ID_PCAdd4, ID_J);
    REG_ID_EX REG_ID_EX(ID_B_code, ID_sa, ID_RegDst, ID_RegWrite, ID_ALUXSrc, ID_ALUYSrc, ID_ALUControl, ID_MemWrite, ID_MemtoReg, ID_WriteReg, ID_usigned, ID_Qa, ID_Qb, ID_Ext32, ID_FA, ID_FB, ID_load_option, ID_save_option, ID_PC, ID_PCSrc, ID_md_control, ID_start, ID_md, clock, reset,
                 EX_B_code, EX_sa, EX_RegDst, EX_RegWrite, EX_ALUXSrc, EX_ALUYSrc, EX_ALUControl, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_usigned, EX_Qa, EX_Qb, EX_Ext32, EX_FA, EX_FB, EX_load_option, EX_save_option, EX_PC, EX_PCSrc, EX_md_control, EX_start, EX_md, stall, stall2, block);
    
    // EX
    assign operation = (EX_md_control == 3'b000) ? MDU_READ_HI :
                   (EX_md_control == 3'b001) ? MDU_READ_LO :
                   (EX_md_control == 3'b010) ? MDU_WRITE_HI :
                   (EX_md_control == 3'b011) ? MDU_WRITE_LO :
                   (EX_md_control == 3'b100) ? MDU_START_SIGNED_MUL :
                   (EX_md_control == 3'b101) ? MDU_START_UNSIGNED_MUL :
                   (EX_md_control == 3'b110) ? MDU_START_SIGNED_DIV : MDU_START_UNSIGNED_DIV; // change to mdu_operation_t

    MUX3X32 mux3x32_ex_X(EX_Qa, ME_Alu_Result, WriteInput, EX_FA, EX_NUM_X);
    MUX2X32 choose_alu_x(EX_NUM_X, EX_sa, EX_ALUXSrc, Alu_X);

    MUX3X32 mux3x32_ex_Y(EX_Qb, ME_Alu_Result, WriteInput, EX_FB, EX_NUM_Y);
    MUX2X32 choose_alu_y(EX_Ext32, EX_NUM_Y, EX_ALUYSrc, Alu_Y);

    MultiplicationDivisionUnit MDU(reset, clock, EX_NUM_X, EX_NUM_Y, operation, EX_start, busy, EX_md_Result);
    ALU ALU(EX_PC, EX_PCSrc, Alu_X, Alu_Y, EX_ALUControl, EX_usigned, EX_Alu_Result, zero, over);

    REG_EX_MEM REG_EX_MEM(EX_RegWrite, EX_RegDst, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_NUM_Y, EX_Alu_Result, EX_load_option, EX_save_option, EX_PC, EX_PCSrc, EX_md_Result, EX_start, clock, reset, EX_md_control[2], 
                          ME_RegWrite, ME_RegDst, ME_MemWrite, ME_MemtoReg, ME_WriteReg, ME_NUM_Y, ME_Result, ME_load_option, ME_save_option, ME_PC, ME_PCSrc);
    
    // MEM
    Save2BE save_to_BE(ME_save_option, BE);
    MUX2X32 mux2x32_2(ME_Result, ME_PC + 8, ME_PCSrc[0], ME_Alu_Result);
    DataMemory data_memory(ME_Alu_Result, BE, ME_NUM_Y, ME_Dout, ME_MemWrite, clock, ME_PC);

    REG_MEM_WB REG_MEM_WB(ME_RegWrite, ME_MemtoReg, ME_Alu_Result, ME_Dout, ME_WriteReg, ME_load_option, ME_PC, ME_PCSrc, clock, reset,
                          WB_RegWrite, WB_MemtoReg, WB_Alu_Result, WB_Dout, WB_WriteReg, WB_load_option, WB_PC, WB_PCSrc);
    // WB
    data_ext_load data_ext_load(WB_Dout, WB_Alu_Result, WB_load_option, WB_ext_Dout);
    MUX2X32 mux2x32_3(WB_Alu_Result, WB_ext_Dout, WB_MemtoReg, WriteInput);

endmodule
