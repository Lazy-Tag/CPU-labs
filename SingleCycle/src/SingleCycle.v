`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 21:48:41
// Design Name: 
// Module Name: SingleCycle
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


module SingleCycle(
    input clock,
    input reset,
    output [31:0] address,
    output [31:0] Inst,
    output [31:0] Qa,
    output [31:0] Qb,
    output [31:0] ALU_R,
    output [31:0] NEXTADDR,
    output [31:0] D
    );

    wire [31:0] Result, PCadd4, EXTIMM, InstL2, EXTIMML2, Y, Dout, mux4x32_2, R;
    wire Z, Se, Wreg, Aluqb, Cout, Wmem;
    wire [1:0] Reg2reg, Aluc, Pcsrc, Regrt;
    wire [4:0] Wr;
    integer k;

    ProgramCounter program_counter(reset, clock, Result, address);
    PCadd4 pcadd4(address, PCadd4);
    InstructionMemory instruction_memory(address, Inst);

    always@ (posedge clock) begin
        if (Inst[31:26] == 6'b000000 && Inst[4:0] == 5'b01100) begin
            $display("Syscall");
            $finish;
        end
    end

    ControllerUnit controller_unit(Inst[31:26], Inst[5:0], Z, Regrt, Se, Wreg, Aluqb, Aluc, Wmem, Pcsrc, Reg2reg);
    MUX4X5 mux4x5(Inst[15:11], Inst[20:16], 5'b11111, 5'b00000, Regrt, Wr);
    Extend16To32 extend16to32(Inst[15:0], Se, EXTIMM);
    ShiftCombination shift_combination(Inst[25:0], PCadd4, InstL2);
    Shift2Left shift2left(EXTIMM, EXTIMML2);

    GeneralPurposeRegisters general_purpose_registers(Inst[25:21], Inst[20:16], D, Wr, Wreg, clock, reset, Qa, Qb);
    MUX2X32 mux2x321(EXTIMM, Qb, Aluqb, Y);
    ArithmeticLogicUnit alu(Qa, Y, Aluc, R, Z);
    DataMemory data_memory(R, Qb, clock, Wmem, Dout);
    MUX4X32 mux4x321(Dout, R, PCadd4, 0, Reg2reg, D);
    Adder adder(PCadd4, EXTIMML2, mux4x32_2);
    MUX4X32 mux4x322(PCadd4, R, mux4x32_2, InstL2, Pcsrc, Result);

    assign NEXTADDR = Result;
    assign ALU_R = R;
endmodule


