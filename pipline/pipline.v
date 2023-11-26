`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:48:41
// Design Name: 
// Module Name: pipline
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


module pipline (
    input clock,
    input reset
    );

    wire [31:0] IF_ADDR, EX_R, EX_A, EX_B;
    wire [31:0] IF_Choose, IF_Addr, IF_PCadd4, IF_Inst;
    wire [31:0] ID_sa, ID_B, ID_J, ID_rt, ID_rs, ID_ext32, ID_ext32_l2, ID_PCadd4, ID_Qa, ID_Qb, ID_Inst, ID_PC;
    wire [31:0] EX_sa, EX_Qa, EX_Qb, EX_NUM_A, EX_NUM_B, EX_Alu_Result, EX_ext32, EX_PC;
    wire [31:0] ME_Dout, ME_Alu_Result, ME_NUM_B, ME_PC;
    wire [31:0] WB_Ext_Dout, WB_Alu_Result, WB_Dout, WB_PC;
    wire [31:0] WriteInput, Alu_A, Alu_B;
    
    wire [4:0] ID_WriteReg, EX_WriteReg, ME_WriteReg, WB_WriteReg;
    wire [3:0] ID_ALUControl,EX_ALUControl;

    wire [2:0] ID_PCSrc, ID_load_option, ID_md_control;
    wire [2:0] EX_load_option, EX_md_control;
    wire [2:0] ME_load_option, ME_md_control;
    wire [2:0] WB_load_option, WB_md_control;

    wire [1:0] ID_save_option, EX_save_option, ME_save_option;
    wire [1:0] ID_FA, ID_FB, EX_FA, EX_FB;

    wire ID_RegDst, ID_WriteEnable, ID_ALUXSrc, ID_ALUYSrc, ID_MemtoReg, ID_MemWrite, ID_usigned, ID_B_code, ID_md_signal;
    wire EX_RegDst, EX_WriteEnable, EX_ALUXSrc, EX_ALUYSrc, EX_MemtoReg, EX_MemWrite, EX_usigned, EX_B_code, EX_md_signal;
    wire ME_RegDst, ME_WriteEnable, ME_MemtoReg, ME_MemWrite, ME_md_signal;
    wire WB_WriteEnable, WB_MemtoReg, WB_md_signal;
    wire se, zero, C_Jump, over, start, busy, stall, stall2;
   
    // IF
    MUX4X32_jump mux4x32(IF_PCadd4, ID_B, ID_J, ID_rs, ID_PCSrc, IF_Choose);
    ProgramCounter program_counter(reset, clock, IF_Choose, stall, stall2, IF_Addr);
    PCAdd4 pc_add4(IF_Addr, IF_PCadd4);
    // always@(posedge clock) begin
    //     $display("IF_Addr: %h", IF_Addr);
    // end
    InstructionMemory instruction_memory(IF_Addr, IF_Inst);
    
    REG_IF_ID reg_if_id(IF_PCadd4, IF_Inst, IF_Addr, clock, reset, stall, stall2, ID_PCadd4, ID_Inst, ID_PC);

    // ID
    ControllerUnit control_unit(ID_Inst, ID_Inst[5:0], ID_Inst[16], 
                             ID_RegDst, se, ID_WriteEnable, ID_ALUXSrc, ID_ALUYSrc, ID_ALUControl, ID_MemWrite, ID_PCSrc, ID_MemtoReg, ID_load_option, ID_save_option, ID_usigned, C_Jump);

    MUX2X5 mux2x5(ID_Inst[15:11], ID_Inst[20:16], ID_RegDst, ID_WriteReg);
    RegisterFile register_file(ID_Inst[25:21], ID_Inst[20:16], ID_Inst[15:11], WriteInput, WB_WriteReg, WB_WriteEnable, WB_PC, clock, reset, ID_PCSrc, ID_PCadd4, ID_Qa, ID_Qb);

    // Foward Signal
    MUX2X32_forward mux2x32_id_Qa(ID_Qa, ME_Alu_Result, ID_FA, ID_rs);
    MUX2X32_forward mux2x32_id_Qb(ID_Qb, ME_Alu_Result, ID_FB, ID_rt);

    IF_C_Jump if_c_jump(ID_rs, ID_rt, ID_ALUControl, ID_usigned, C_Jump);
    FowardUnit foward_unit(EX_WriteReg, EX_WriteReg, ID_Inst[25:21], ID_Inst[20:16], EX_WriteEnable, ME_WriteEnable, EX_MemtoReg, ME_MemtoReg, C_Jump, ID_Inst[31:26], ID_Inst[5:0], stall, stall2, ID_FA, ID_FB);

    Extend16to32 extend16to32(ID_Inst[15:0], se, ID_ext32);
    Extend5to32 extend5to32(ID_Inst[4:0], ID_sa);
    ShiftLeft2 shift_left2(ID_ext32, ID_ext32_l2);
    Adder adder(ID_PCadd4, ID_ext32_l2, ID_B);
    ShiftCombination shift_combination(ID_Inst[25:0], ID_PCadd4, ID_J);

    REG_ID_EX reg_id_ex(ID_md_signal, ID_B_code, ID_sa, ID_RegDst, ID_WriteEnable, ID_ALUXSrc, ID_ALUYSrc, ID_ALUControl, ID_md_control, ID_MemWrite, ID_MemtoReg, ID_WriteReg, ID_usigned, ID_Qa, ID_Qb, ID_ext32, ID_FA, ID_FB, ID_load_option, ID_save_option, ID_PC, 
                        clock, reset, stall, stall2,
                        EX_md_signal, EX_B_code, EX_sa, EX_RegDst, EX_WriteEnable, EX_ALUXSrc, EX_ALUYSrc, EX_ALUControl, EX_md_control, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_usigned, EX_Qa, EX_Qb, EX_ext32, EX_FA, EX_FB, EX_load_option, EX_save_option, EX_PC);
    
    // EX
    MUX3X32 mux3x32_ex_a(EX_Qa, ME_Alu_Result, WriteInput, EX_FA, EX_NUM_A);
    MUX3X32 mux3x32_ex_b(EX_Qb, ME_Alu_Result, WriteInput, EX_FB, EX_NUM_B);

    MUX2X32 choose_a(EX_NUM_A, EX_sa, EX_ALUXSrc, Alu_A);
    MUX2X32 choose_b(EX_ext32, EX_NUM_B, EX_ALUYSrc, Alu_B);

    ArithmeticLogicUnit ALU(Alu_A, Alu_B, EX_ALUControl, EX_usigned, EX_Alu_Result, over, zero);

    REG_EX_MEM reg_ex_mem(EX_WriteEnable, EX_RegDst, EX_MemWrite, EX_MemtoReg, EX_WriteReg, EX_NUM_B, EX_Alu_Result, EX_load_option, EX_save_option, EX_PC, 
                          clock, reset,
                          ME_WriteEnable, ME_RegDst, ME_MemWrite, ME_MemtoReg, ME_WriteReg, ME_NUM_B, ME_Alu_Result, ME_load_option, ME_save_option, ME_PC);

    // MEM
    DataMemory data_memory(ME_NUM_B, ME_Alu_Result, ME_PC, clock, ME_MemWrite, ME_Dout);
    REG_MEM_WB reg_mem_wb(ME_WriteEnable, ME_MemtoReg, ME_Alu_Result, ME_Dout, ME_WriteReg, ME_load_option, ME_PC,
                          clock, reset,
                          WB_WriteEnable, WB_MemtoReg, WB_Alu_Result, WB_Dout, WB_WriteReg, WB_load_option, WB_PC);
    // WB
    DataExtendLoad data_extend_load(WB_Dout, WB_Alu_Result, WB_load_option, WB_Ext_Dout);
    MUX2X32 mux232(WB_Alu_Result, WB_Ext_Dout, WB_MemtoReg, WriteInput);

    assign IF_ADDR = IF_Addr;
    assign EX_R = EX_Alu_Result;
    assign EX_A = Alu_A;
    assign EX_B = Alu_B;

endmodule


