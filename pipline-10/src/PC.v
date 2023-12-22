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


module PC(NextPC, clock, reset, address, stall, stall2);  
    input clock;
    input reset;     
    input[31:0] NextPC;
    input stall, stall2;
    output reg[31:0] address;
    wire enable;

    assign enable = (~stall) & (~stall2);
    
    initial begin
        address <= 32'h00003000;
    end
    
    always @(posedge clock or negedge reset) begin  
        if(enable == 1) begin
            if (!reset)  begin  
                address <= 32'h00003000;  
            end else begin
                address <= NextPC;  
            end  
        end
    end  
endmodule

