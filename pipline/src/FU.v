`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 17:40:15
// Design Name: 
// Module Name: if_c_adventure
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

module FU(
    EX_RegWrite, EX_WriteReg, EX_MemtoReg, ME_RegWrite, ME_WriteReg, ME_MemtoReg, EX_PCSrc, ME_PCSrc, 
    ID_rs, ID_rt, ID_FwdA, ID_FwdB, ID_Op, ID_func, c_adventure, stall, stall2
);
    input [4:0] EX_WriteReg, ME_WriteReg, ID_rs, ID_rt;
    input EX_RegWrite, ME_RegWrite, EX_MemtoReg, ME_MemtoReg, c_adventure;
    input [5:0] ID_Op, ID_func;
    input [2:0] EX_PCSrc, ME_PCSrc;
    output reg [1:0] ID_FwdA, ID_FwdB;
    output stall, stall2;
    
    wire ID_beq = ~ID_Op[5] & ~ID_Op[4] & ~ID_Op[3] & ID_Op[2] & ~ID_Op[1] & ~ID_Op[0];
    wire ID_bne = ~ID_Op[5] & ~ID_Op[4] & ~ID_Op[3] & ID_Op[2] & ~ID_Op[1] & ID_Op[0];
    wire ID_jalr = ~ID_Op[5] & ~ID_Op[4] & ~ID_Op[3] & ~ID_Op[2] & ~ID_Op[1] & ~ID_Op[0] & ~ID_func[5] & ~ID_func[4] & ID_func[3] & ~ID_func[2] & ~ID_func[1] & ID_func[0];
    wire ID_lui = ~ID_Op[5] & ~ID_Op[4] & ID_Op[3] & ID_Op[2] & ID_Op[1] & ID_Op[0];

    always @ (EX_WriteReg, ME_WriteReg, EX_RegWrite, ME_RegWrite, ID_rs, ID_rt) begin
        ID_FwdA = 2'b00;
        if (((ID_rs == EX_WriteReg) & (EX_WriteReg != 0) & (EX_RegWrite == 1)) | ((ID_rs == 5'b11111) & (EX_PCSrc == 3'b011))) begin
            ID_FwdA = 2'b01;
        end else begin
            if ((ID_rs == ME_WriteReg) & (ME_WriteReg != 0) & (ME_RegWrite == 1) | ((ID_rs == 5'b11111) & (ME_PCSrc == 3'b011))) begin
                ID_FwdA = 2'b10;
            end
        end
    end

    always @ (EX_WriteReg, ME_WriteReg, EX_RegWrite, ME_RegWrite, ID_rs, ID_rt) begin
        ID_FwdB = 2'b00;
        if ((ID_rt == EX_WriteReg) & (EX_WriteReg != 0) & (EX_RegWrite == 1) | ((ID_rt == 5'b11111) & (EX_PCSrc == 3'b011))) begin
            ID_FwdB = 2'b01;
        end else begin
            if ((ID_rt == ME_WriteReg) & (ME_WriteReg != 0) & (ME_RegWrite == 1) | ((ID_rt == 5'b11111) & (ME_PCSrc == 3'b011))) begin
                ID_FwdB = 2'b10;
            end
        end
    end
    
    assign stall = stall2 | (((ID_rs == EX_WriteReg) | (ID_rt == EX_WriteReg)) & (EX_MemtoReg == 1) & (EX_WriteReg != 0) & (EX_RegWrite == 1) & ~ID_lui) | ((ID_beq | ID_bne | ID_jalr) & ((ID_rs == EX_WriteReg) | (ID_rt == EX_WriteReg)) & (EX_WriteReg != 0) & (EX_RegWrite == 1)) | (((ID_rs == ME_WriteReg) | (ID_rt == ME_WriteReg)) & (ME_MemtoReg == 1) & (ME_WriteReg != 0) & (ME_RegWrite == 1) & ID_beq);
    assign stall2 = ((ID_rs == EX_WriteReg) | (ID_rt == EX_WriteReg)) & (EX_MemtoReg == 1) & (EX_WriteReg != 0) & (EX_RegWrite == 1) & ID_beq;
   
endmodule
