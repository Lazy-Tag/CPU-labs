`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/20 23:43:34
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


module RegisterFile(
    input wire [4:0] readReg1,  
    input wire [4:0] readReg2,  
    input wire [4:0] rd,  
    input wire [31:0] writeData, 
    input wire [4:0] writeReg,  
    input wire writeEnable,  
    input wire [31:0] PC,   
    input wire clock,             
    input wire reset,         
    input [2:0] PCSrc,
    input [31:0] PcAdd4,
    output wire [31:0] readData1, 
    output wire [31:0] readData2  
    );

    reg [31:0] register[31:0];
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1 )
            register[i] = 0;
    end

    assign readData1 = register[readReg1];
    assign readData2 = register[readReg2];

    always@(negedge clock) begin
        if(writeEnable && writeReg) begin
            $display("@%h: $%d <= %h", PC, writeReg, writeData);
            register[writeReg] = writeData;
        end

        if(PCSrc == 3'b011) begin
            register[31] = PcAdd4;
        end

        if(PCSrc == 3'b101) begin
            register[rd] = PcAdd4;
        end
    end

endmodule
