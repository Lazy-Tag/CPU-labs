`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// enablegineer: 
// 
// Create Date: 2023/11/23 16:47:49
// Design Name: 
// Module Name: PC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Depenabledenablecies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Commenablets:
// 
//////////////////////////////////////////////////////////////////////////////////


module PC(NextPC, clock, reset, address, stall, stall2, block);  
    input clock;
    input reset;     
    input[31:0] NextPC;
    input stall, stall2, block;
    output reg[31:0] address;

    wire enable;

    assign enable = ~stall & ~stall2 & ~block;
    
    initial begin
        address <= 32'h00003000;
    end
    
    always @(posedge clock) begin  
        if(enable == 1) begin
            address <= NextPC;  
        end
    end  
    
    always @(posedge reset) begin  
        address <= 32'h00003000; 
    end
endmodule

