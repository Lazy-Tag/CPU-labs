`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
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


module REG_IF_ID (IF_PCAdd4, IF_Inst, IF_PC, clock, reset, ID_PCAdd4, ID_Inst, ID_PC, stall, stall2, block);
    input [31:0] IF_PCAdd4, IF_Inst, IF_PC;
    input clock, reset, stall, stall2, block;
    output reg [31:0] ID_PCAdd4, ID_Inst, ID_PC;

    wire enable;
    assign enable = ~stall & ~stall2 & ~block;
    initial begin
        ID_Inst = 0;
        ID_PCAdd4 = 0 ;
        ID_PC = 0;
    end
    
    always @(posedge clock) begin 
        if(enable == 1)begin
            ID_PCAdd4 = IF_PCAdd4;
            ID_Inst = IF_Inst;   
            ID_PC = IF_PC;          
        end
    end  
    
    always @(posedge reset) begin 
        ID_Inst = 0;
        ID_PCAdd4 = 0 ;
        ID_PC = 0;          
    end  
endmodule
    