`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/20 22:32:54
// Design Name: 
// Module Name: REG_IF_ID
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


module REG_IF_ID(
    input [31:0] IF_PCadd4,
    input [31:0] IF_Inst,
    input [31:0] IF_PC,
    input clock,
    input reset,
    input stall,
    input stall2,
    output reg [31:0] ID_PCadd4,
    output reg [31:0] ID_Inst,
    output reg [31:0] ID_PC
    );

    wire enable;
    assign enable = (~stall) & (~stall2);

    initial begin
        ID_PC = 32'h00003000;
        ID_Inst = 0;
        ID_PCadd4 = 32'h00003000;
    end

    always @(posedge clock) begin 
        if(enable == 1) begin
            ID_PC = IF_PC;
            ID_PCadd4 = IF_PCadd4;
            ID_Inst = IF_Inst;             
        end else begin
            ID_PC = 32'h00003000;
            ID_PCadd4 = 32'h00003000;
            ID_Inst = 0;   
        end
    end  

endmodule
