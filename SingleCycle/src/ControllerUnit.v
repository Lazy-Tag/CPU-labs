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

module ControllerUnit(
    input [5:0] Op,
    input [5:0] Func,
    input Z,
    output [1:0] Regrt,
    output Se,
    output Wreg,
    output Aluqb,
    output [1:0] Aluc,
    output Wmem,
    output [1:0] Pcsrc,
    output [1:0] Reg2reg
    );

wire R_type = ~|Op;
wire I_addu = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & ~Func[1] & Func[0];
wire I_subu = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & Func[1] & Func[0];
wire I_ori = ~Op[5] & ~Op[4] & Op[3] & Op[2] & ~Op[1] & Op[0];
wire I_lw = Op[5] & ~Op[4] & ~Op[3] & ~Op[2] & Op[1] & Op[0];
wire I_sw = Op[5] & ~Op[4] & Op[3] & ~Op[2] & Op[1] & Op[0];
wire I_beq = ~Op[5] & ~Op[4] & ~Op[3] & Op[2] & ~Op[1] & ~Op[0];
wire I_lui = ~Op[5] & ~Op[4] & Op[3] & Op[2] & Op[1] & Op[0];
wire I_jal = ~Op[5] & ~Op[4] & ~Op[3] & ~Op[2] & Op[1] & Op[0];
wire I_jr = R_type & ~Func[5] & ~Func[4] & Func[3] & ~Func[2] & ~Func[1] & ~Func[0];
wire I_j = ~Op[5] & ~Op[4] & ~Op[3] & ~Op[2] & Op[1] & ~Op[0];

assign Regrt[0] = I_ori | I_lw | I_sw | I_beq | I_lui | I_jr | I_j;
assign Regrt[1] = I_jal;
assign Se = I_lw | I_sw | I_beq;
assign Wreg = I_addu | I_subu | I_ori | I_lw | I_lui | I_jal;
assign Aluqb = I_addu | I_subu | I_beq | I_jal | I_jr | I_j;
assign Aluc[1] = I_ori | I_lui;
assign Aluc[0] = I_subu | I_ori | I_beq;
assign Wmem = I_sw;
assign Pcsrc[1] = (I_beq & Z) | I_jal | I_j;
assign Pcsrc[0] = I_jr | I_jal | I_j;
assign Reg2reg[1] = I_jal;
assign Reg2reg[0] = I_addu | I_subu | I_ori | I_sw | I_beq | I_lui | I_jr | I_j;
assign IsSyscall = R_type & ~Func[5] & ~Func[4] & Func[3] & Func[2] & ~Func[1] & ~Func[0];

endmodule    