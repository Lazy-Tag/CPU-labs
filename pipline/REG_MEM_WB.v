`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 22:40:01
// Design Name: 
// Module Name: REG_MEM_WB
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


module REG_MEM_WB(ME_WriteEnable, ME_MemtoReg, ME_ALUResult, ME_Dout, ME_WriteReg, ME_load_option, ME_PC, 
                  clock, reset,
                  WB_WriteEnable, WB_MemtoReg, WB_ALUResult, WB_Dout, WB_WriteReg, WB_load_option, WB_PC);

    input [31:0] ME_ALUResult, ME_Dout, ME_PC;
    input [4:0] ME_WriteReg;
    input [2:0] ME_load_option;
    input ME_WriteEnable, ME_MemtoReg;
    input clock, reset;

    output reg[31:0] WB_ALUResult, WB_Dout, WB_PC;
    output reg[4:0] WB_WriteReg;
    output reg[2:0] WB_load_option; 
    output reg WB_WriteEnable, WB_MemtoReg;

    initial begin
        WB_ALUResult = 0;
        WB_Dout = 0;
        WB_WriteReg = 0;
        WB_load_option = 0;
        WB_WriteEnable = 0;
        WB_MemtoReg = 0;
        WB_PC = 0;
    end

    always @(posedge clock or negedge reset) begin
        if (!reset) begin
            WB_ALUResult = 0;
            WB_Dout = 0;
            WB_WriteReg = 0;
            WB_load_option = 0;
            WB_WriteEnable = 0;
            WB_MemtoReg = 0;
            WB_PC = 0;
        end else begin
            WB_ALUResult = ME_ALUResult;
            WB_Dout = ME_Dout;
            WB_WriteReg = ME_WriteReg;
            WB_load_option = ME_load_option;
            WB_WriteEnable = ME_WriteEnable;
            WB_MemtoReg = ME_MemtoReg;
            WB_PC = ME_PC;
        end
    end

endmodule
