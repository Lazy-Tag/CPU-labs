`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 19:30:51
// Design Name: 
// Module Name: FowardUnit
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


module FowardUnit(
    input [4:0] EX_WriteReg,
    input [4:0] ME_WriteReg,
    input [4:0] ID_rs,
    input [4:0] ID_rt,
    input EX_WriteEnable,
    input ME_WriteEnable,
    input EX_MemtoReg,
    input ME_MemtoReg,
    input C_Jump,
    input [5:0] ID_Op,
    input [5:0] ID_func,
    output stall,
    output stall2,
    output reg [1:0] ID_FA,
    output reg [1:0] ID_FB
    );

    always@(EX_WriteReg, ME_WriteReg, EX_WriteEnable, ME_WriteEnable, ID_rs, ID_rt) begin
        ID_FA = 2'b00;
        ID_FB = 2'b00;

        if (ID_rs == EX_WriteReg & EX_WriteEnable != 0 & EX_WriteReg != 0) begin
            ID_FA = 2'b01;
        end else if ((ID_rs == ME_WriteReg) && ME_WriteEnable != 0 && ME_WriteReg != 0) begin 
            ID_FA = 2'b10;
        end

        if (ID_rt == EX_WriteReg & EX_WriteEnable != 0 & EX_WriteReg != 0) begin
            ID_FB = 2'b01;
        end else if ((ID_rt == ME_WriteReg) && ME_WriteEnable != 0 && ME_WriteReg != 0) begin 
            ID_FB = 2'b10;
        end
    end

    wire Ins_beq = ~ID_Op[5] & ~ID_Op[4] & ~ID_Op[3] & ID_Op[2] & ~ID_Op[1] & ~ID_Op[0];
    wire Ins_jal = ~ID_Op[5]  &~ID_Op[4] & ~ID_Op[3] & ~ID_Op[2] & ~ID_Op[1] & ~ID_Op[0]
                     & ~ID_func[5] & ~ID_func[4] & ID_func[3] & ~ID_func[2] & ~ID_func[1] & ID_func[0];
    assign stall = ((ID_rs == EX_WriteReg | ID_rt == EX_WriteReg) & EX_WriteReg != 0 & EX_WriteEnable == 1 & EX_MemtoReg == 1) 
                    | ((Ins_beq | Ins_jal) & (ID_rs == EX_WriteReg | ID_rt == EX_WriteReg) & EX_WriteReg != 0 & EX_WriteEnable == 1) 
                    | ((ID_rs == ME_WriteReg | ID_rt == ME_WriteReg) & ME_MemtoReg == 1 & ME_WriteReg != 0 & ME_WriteEnable == 1 & Ins_beq)
                    | stall2;
    assign stall2 = (ID_rs == EX_WriteReg | ID_rt == EX_WriteReg) & EX_MemtoReg == 1 & EX_WriteReg != 0 & EX_WriteEnable == 1 & Ins_beq; 
endmodule
