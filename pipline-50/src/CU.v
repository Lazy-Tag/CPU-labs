`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: CU
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


module CU(PC, Inst, Func, busy, EX_md, B_code, RegDst, Se, RegWrite, ALUXSrc, ALUYSrc, ALUControl, MemWrite, PCSrc, MemtoReg, load_option, save_option, usigned, c_adventure, md_control, md_start, is_md, next_inst, block);
    input [5:0] Func;
    input [31:0] PC, Inst;
    input c_adventure, busy, EX_md, next_inst;
    output RegDst, Se, RegWrite, ALUXSrc, ALUYSrc, MemWrite, MemtoReg, usigned, md_start, B_code, block, is_md;
    output [2:0] PCSrc, load_option, md_control;
    output [1:0] save_option;
    output [3:0] ALUControl;

    wire R_type=~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & ~Inst[27] & ~Inst[26];
    wire ID_lb = Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & ~Inst[27] & ~Inst[26];
    wire ID_lbu = Inst[31] & ~Inst[30] & ~Inst[29] & Inst[28] & ~Inst[27] & ~Inst[26];
    wire ID_lh = Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & ~Inst[27] & Inst[26];
    wire ID_lhu = Inst[31] & ~Inst[30] & ~Inst[29] & Inst[28] & ~Inst[27] & Inst[26];
    wire ID_lw = Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & Inst[27] & Inst[26];
    wire ID_sb = Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & ~Inst[27] & ~Inst[26];
    wire ID_sh = Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & ~Inst[27] & Inst[26];
    wire ID_sw = Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & Inst[27] & Inst[26];
    wire ID_add = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & ~Func[1] & ~Func[0];
    wire ID_addu = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & ~Func[1] & Func[0];
    wire ID_sub = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & Func[1] & ~Func[0];
    wire ID_subu = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & Func[1] & Func[0];
    wire ID_sll = R_type & ~Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & ~Func[1] & ~Func[0] & (PC != 0);
    wire ID_srl = R_type & ~Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & Func[1] & ~Func[0];
    wire ID_sra = R_type & ~Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & Func[1] & Func[0];
    wire ID_sllv = R_type & ~Func[5] & ~Func[4] & ~Func[3] & Func[2] & ~Func[1] & ~Func[0];
    wire ID_srlv = R_type & ~Func[5] & ~Func[4] & ~Func[3] & Func[2] & Func[1] & ~Func[0];
    wire ID_srav = R_type & ~Func[5] & ~Func[4] & ~Func[3] & Func[2] & Func[1] & Func[0];
    wire ID_and = R_type & Func[5] & ~Func[4] & ~Func[3] & Func[2] & ~Func[1] & ~Func[0];
    wire ID_or = R_type & Func[5] & ~Func[4] & ~Func[3] & Func[2] & ~Func[1] & Func[0];
    wire ID_xor = R_type & Func[5] & ~Func[4] & ~Func[3] & Func[2] & Func[1] & ~Func[0];
    wire ID_nor = R_type & Func[5] & ~Func[4] & ~Func[3] & Func[2] & Func[1] & Func[0];
    wire ID_addi = ~Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & ~Inst[27] & ~Inst[26];
    wire ID_addiu = ~Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & ~Inst[27] & Inst[26];
    wire ID_andi = ~Inst[31] & ~Inst[30] & Inst[29] & Inst[28] & ~Inst[27] & ~Inst[26];
    wire ID_ori = ~Inst[31] & ~Inst[30] & Inst[29] & Inst[28] & ~Inst[27] & Inst[26];
    wire ID_xori = ~Inst[31] & ~Inst[30] & Inst[29] & Inst[28] & Inst[27] & ~Inst[26];
    wire ID_lui = ~Inst[31] & ~Inst[30] & Inst[29] & Inst[28] & Inst[27] & Inst[26];
    wire ID_slt = R_type & Func[5] & ~Func[4] & Func[3] & ~Func[2] & Func[1] & ~Func[0];
    wire ID_slti = ~Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & Inst[27] & ~Inst[26];
    wire ID_sltiu = ~Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & Inst[27] & Inst[26];
    wire ID_sltu = R_type & Func[5] & ~Func[4] & Func[3] & ~Func[2] & Func[1] & Func[0];
    wire ID_beq = ~Inst[31] & ~Inst[30] & ~Inst[29] & Inst[28] & ~Inst[27] & ~Inst[26];
    wire ID_bne = ~Inst[31] & ~Inst[30] & ~Inst[29] & Inst[28] & ~Inst[27] & Inst[26];
    wire ID_blez = ~Inst[31] & ~Inst[30] & ~Inst[29] & Inst[28] & Inst[27] & ~Inst[26];
    wire ID_bgtz = ~Inst[31] & ~Inst[30] & ~Inst[29] & Inst[28] & Inst[27] & Inst[26];
    wire ID_bltz = ~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & ~Inst[27] & Inst[26] & ~Inst[16];
    wire ID_bgez = ~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & ~Inst[27] & Inst[26] & Inst[16];
    wire ID_j = ~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & Inst[27] & ~Inst[26];
    wire ID_jal = ~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & Inst[27] & Inst[26];
    wire ID_jalr = R_type & ~Func[5] & ~Func[4] & Func[3] & ~Func[2] & ~Func[1] & Func[0];
    wire ID_jr = R_type & ~Func[5] & ~Func[4] & Func[3] & ~Func[2] & ~Func[1] & ~Func[0];
    wire ID_mult = R_type & ~Func[5] & Func[4] & Func[3] & ~Func[2] & ~Func[1] & ~Func[0];
    wire ID_multu = R_type & ~Func[5] & Func[4] & Func[3] & ~Func[2] & ~Func[1] & Func[0];
    wire ID_div = R_type & ~Func[5] & Func[4] & Func[3] & ~Func[2] & Func[1] & ~Func[0];
    wire ID_divu = R_type & ~Func[5] & Func[4] & Func[3] & ~Func[2] & Func[1] & Func[0];
    wire ID_mthi = R_type & ~Func[5] & Func[4] & ~Func[3] & ~Func[2] & ~Func[1] & Func[0];
    wire ID_mtlo = R_type & ~Func[5] & Func[4] & ~Func[3] & ~Func[2] & Func[1] & Func[0];
    wire ID_mfhi = R_type & ~Func[5] & Func[4] & ~Func[3] & ~Func[2] & ~Func[1] & ~Func[0];
    wire ID_mflo = R_type & ~Func[5] & Func[4] & ~Func[3] & ~Func[2] & Func[1] & ~Func[0];
    
    assign RegDst = ID_lb | ID_lbu | ID_lh | ID_lhu | ID_lw | ID_addi | ID_addiu | ID_andi | ID_ori | ID_xori | ID_lui | ID_slti | ID_sltiu;
    assign Se = ID_lb | ID_lbu | ID_lh | ID_lhu | ID_lw | ID_sb | ID_sh | ID_sw | ID_addi | ID_addiu | ID_slti | ID_sltiu | ID_beq | ID_bne | ID_blez | ID_bgtz | ID_bltz | ID_bgez;
    assign RegWrite = ID_lb | ID_lbu | ID_lh | ID_lhu | ID_lw | ID_add | ID_addu | ID_sub | ID_subu | ID_sll | ID_srl | ID_sra | ID_sllv | ID_srlv | ID_srav | ID_and | ID_or | ID_xor | ID_nor | ID_addi | ID_addiu | ID_andi | ID_ori | ID_xori | ID_lui | ID_slt | ID_slti | ID_sltiu | ID_sltu | ID_mfhi | ID_mflo | ID_jalr;
    assign ALUXSrc = ID_sll | ID_srl | ID_sra;
    assign ALUYSrc = ID_add | ID_addu | ID_sub | ID_subu | ID_and | ID_or | ID_xor | ID_nor | ID_slt | ID_sltu | ID_beq | ID_bne | ID_j | ID_jal | ID_jalr | ID_jr | ID_sll | ID_srl | ID_sra | ID_sllv | ID_srlv | ID_srav;
    assign ALUControl[0] =ID_sub | ID_subu | ID_sll | ID_sllv | ID_or | ID_nor | ID_ori | ID_slt | ID_slti | ID_sltiu | ID_sltu | ID_beq | ID_bne | ID_bgtz | ID_bgez;
    assign ALUControl[1] =ID_sll | ID_sllv | ID_and | ID_or | ID_andi | ID_ori | ID_lui | ID_blez | ID_bgtz | ID_sra | ID_srav;
    assign ALUControl[2] =ID_sll | ID_sllv | ID_xor | ID_nor | ID_xori | ID_lui | ID_bltz | ID_bgez | ID_sra | ID_srav;
    assign ALUControl[3] =ID_srl | ID_sra | ID_srlv | ID_srav | ID_slt | ID_slti | ID_sltiu | ID_sltu | ID_blez | ID_bgtz | ID_bltz | ID_bgez | ID_sll | ID_sllv;
    assign MemWrite = ID_sb | ID_sh | ID_sw;
    assign PCSrc[0] = (ID_blez & c_adventure) | (ID_bgtz & c_adventure)| (ID_bltz & c_adventure)| (ID_bgez & c_adventure)| ID_jal | ID_jalr | (ID_beq & c_adventure) | (ID_bne & ~c_adventure);
    assign PCSrc[1] = ID_j | ID_jal;
    assign PCSrc[2] = ID_jalr | ID_jr;
    assign MemtoReg = ID_lb | ID_lbu | ID_lh | ID_lhu | ID_lw;
    assign load_option[0] = ID_lb | ID_lbu | ID_lh | ID_lhu;
    assign load_option[1] = ID_lh | ID_lhu;
    assign load_option[2] = ID_lh | ID_lb;
    assign save_option[0] = ID_sb;
    assign save_option[1] = ID_sh;
    assign usigned = ID_lbu | ID_lhu | ID_addu | ID_subu | ID_addiu | ID_sltiu | ID_sltu;
    assign B_code = Inst[16];

    assign md_control[0] = ID_multu | ID_divu | ID_mtlo | ID_mflo;
    assign md_control[1] = ID_div | ID_divu | ID_mtlo | ID_mthi;
    assign md_control[2] = ID_multu | ID_mult | ID_div | ID_divu;

    assign md_start = ID_multu | ID_mult | ID_div | ID_divu | ID_mthi | ID_mtlo | ID_mfhi | ID_mflo;
    assign is_md = ID_multu | ID_divu | ID_div | ID_divu;
    assign block = (busy | EX_md | next_inst) & md_start;
endmodule

