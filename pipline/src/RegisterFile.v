`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(ReadReg1, ReadReg2, rd, WriteData, WriteReg, RegWrite, clock, reset, ReadData1, ReadData2, PCSrc, WB_PC, PC);
    input [4:0] ReadReg1, rd;
    input [4:0] ReadReg2;
    input [31:0] WriteData, PC;
    input [4:0] WriteReg;
    input RegWrite; 
    input clock;
    input reset;
    input [2:0] PCSrc;
    input [31:0] WB_PC;
    output [31:0] ReadData1;
    output [31:0] ReadData2;


    reg [31:0] regFile[0:31];
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1)
            regFile[i] <= 0;
    end
      
    assign ReadData1 = regFile[ReadReg1];
    assign ReadData2 = regFile[ReadReg2];
    
    always @(negedge clock) begin
        if (RegWrite) begin
            $display("@%h: $%d <= %h", PC, WriteReg, WriteData);
            if (WriteReg) begin
                regFile[WriteReg] = WriteData;
            end 
        end
        if (PCSrc == 3'b011) begin
            $display("@%h: $31 <= %h", PC, WB_PC + 8);
            regFile[31] = WB_PC + 8;
        end

        if (PCSrc == 3'b101) begin
            $display("@%h: $%d <= %h", PC, rd, WB_PC + 8);
            regFile[rd] = WB_PC + 8;
        end
    end
endmodule
