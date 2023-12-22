`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/25 16:47:49
// Design Name: 
// Module Name: im_4k
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


module InstMemory(Addr, Inst);
    input [31:0] Addr;
    reg [31:0] Rom[2047:0];

    output [31:0] Inst;
    
    integer i;
    initial begin
        $display("start simulation");
        for (i = 0; i < 2048; i = i + 1)
            Rom[i] = 32'b0;
        $readmemh("C:\\Users\\HBW\\Desktop\\pipeline-tester-py\\test\\code.txt", Rom);
    end

    assign Inst = Rom[Addr[12:2] - 11'b10000000000];

endmodule

