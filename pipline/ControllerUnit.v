`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:57:00
// Design Name: 
// Module Name: ControllerUnit
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

module ControllerUnit(Inst, Func, ID_B_code, RegDst, Se, WriteEnable, ALUXSrc, ALUYSrc, ALUControl, MemWrite, PCSrc, MemtoReg, load_option, save_option, usigned, C_Jump);
    input [5:0] Func;
    input [31:0] Inst;
    input C_Jump, ID_B_code;
    output RegDst, Se, WriteEnable, ALUXSrc, ALUYSrc, MemWrite, MemtoReg, usigned;
    output [1:0] save_option;
    output [2:0] PCSrc, load_option;
    output [3:0] ALUControl;

    wire R_type = ~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & ~Inst[27] & ~Inst[26];
    wire I_lw = Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & Inst[27] & Inst[26];
    wire I_sw = Inst[31] & ~Inst[30] & Inst[29] & ~Inst[28] & Inst[27] & Inst[26];
    wire I_addu = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & ~Func[1] & Func[0];
    wire I_subu = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & Func[1] & Func[0];
    wire I_ori = ~Inst[31] & ~Inst[30] & Inst[29] & Inst[28] & ~Inst[27] & Inst[26];
    wire I_lui = ~Inst[31] & ~Inst[30] & Inst[29] & Inst[28] & Inst[27] & Inst[26];
    wire I_beq = ~Inst[31] & ~Inst[30] & ~Inst[29] & Inst[28] & ~Inst[27] & ~Inst[26];
    wire I_j = ~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & Inst[27] & ~Inst[26];
    wire I_jal = ~Inst[31] & ~Inst[30] & ~Inst[29] & ~Inst[28] & Inst[27] & Inst[26];
    wire I_jr = R_type & ~Func[5] & ~Func[4] & Func[3] & ~Func[2] & ~Func[1] & ~Func[0];

    assign RegDst = I_lw | I_ori | I_lui;
    assign Se = I_lw | I_sw | I_beq;
    assign WriteEnable = I_lw | I_addu | I_subu | I_ori | I_lui | I_jal;
    assign ALUXSrc = 0;
    assign ALUYSrc = I_addu | I_subu | I_beq | I_j | I_jal | I_jr;
    assign ALUControl[0] = I_subu | I_ori | I_beq;
    assign ALUControl[1] = I_ori | I_lui;
    assign ALUControl[2] = I_lui;
    assign ALUControl[3] = 0;
    assign MemWrite = I_sw;
    assign PCSrc[0] = I_jal | (I_beq & C_Jump);
    assign PCSrc[1] = I_j | I_jal;
    assign PCSrc[2] = I_jr;
    assign MemtoReg = I_lw;
    assign usigned = I_addu | I_subu;

endmodule    