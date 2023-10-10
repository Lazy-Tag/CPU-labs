`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/9 21:43:49
// Design Name: 
// Module Name: PC_tb
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


module PC_tb;

    reg reset, clock, jumpEnabled;
    reg [31:0] jumpInput;
    wire [31:0] pcValue;
    reg [31:0] expected_pc;
    reg correct;
    
    // 实例化 ProgramCounter 模块
    ProgramCounter PC_inst (
        .reset(reset),
        .clock(clock),
        .jumpEnabled(jumpEnabled),
        .jumpInput(jumpInput),
        .pcValue(pcValue)
    );

    // 测试持续时间和仿真步数
    integer i;
    integer sim_steps = 200;  // 仿真步数
    integer jump_interval = 40;  // 每 40 个周期跳转一次

    // 时钟生成
    initial begin
        clock = 0;
        reset = 1;
        jumpEnabled = 0;
        jumpInput = 0;
        expected_pc = 32'h00003000;
        correct <= 1;

        // 应用复位信号一个时钟周期
        #1 reset = 0;

        // 仿真步骤
        for (i = 0; i < sim_steps; i = i + 1) begin
            // 每个周期切换时钟
            clock = ~clock;

            // 检查是否是跳转或常规增量的时间
            if (jumpEnabled) begin
                expected_pc = jumpInput;
                jumpEnabled = 0;
            end else if (i % jump_interval == 0 && i > 0) begin
                // 将跳转输入设置为随机值
                jumpInput = $random;
                jumpEnabled = 1;
                // 跳转后的预期 PC 值
                expected_pc = jumpInput;
            end else if (clock) begin
                // 时钟上升沿后的预期 PC 值
                expected_pc = expected_pc + 4;
            end

            // 在时钟的负边沿检查正确性
            if (~clock) begin
                correct <= (expected_pc == pcValue);
            end

            // 等待半个时钟周期
            #0.5;
        end

        // 显示测试结果
        if (correct)
            $display("测试通过!");
        else
            $display("测试失败!");

        // 结束仿真
        $finish;
    end

endmodule



