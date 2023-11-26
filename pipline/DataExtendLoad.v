`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 22:56:05
// Design Name: 
// Module Name: DataExtendLoad
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


module DataExtendLoad(
    input [31:0] Dout,
    input [31:0] Addr,
    input [2:0] load_option,
    output [31:0] ExtDout
    );

    assign ExtDout = Dout;
endmodule
