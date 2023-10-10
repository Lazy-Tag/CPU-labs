`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/10 21:43:49
// Design Name: 
// Module Name: DM_tb
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


module DM_tb;

    reg reset, clock, writeEnabled;
    reg [31:0] address, writeInput, expectValue;
    wire [31:0] readResult;
    reg correct;

    // Instantiate the DataMemory module
    DataMemory DM_inst (
        .reset(reset),
        .clock(clock),
        .address(address),
        .writeEnabled(writeEnabled),
        .writeInput(writeInput),
        .readResult(readResult)
    );

    // Test duration and simulation steps
    integer i;
    integer sim_steps = 200;  // Number of simulation steps
    integer read_write_interval = 10;  // Read or write every 10 cycles

    // Clock generation
    initial begin
        clock = 0;
        reset = 1;
        writeEnabled = 0;
        address = 0;
        writeInput = 0;
        correct = 1;
        expectValue = 0;

        // Apply reset for one clock cycle
        #1 reset = 0;

        // Simulation steps
        for (i = 0; i < sim_steps; i = i + 1) begin
            // Toggle clock every cycle
            clock = ~clock;

            // Perform read or write based on interval
            if (i % read_write_interval == 0 && i > 0) begin
                // Randomly choose read or write
                if ($random % 2 == 0) begin
                    // Read operation
                    writeEnabled = 0;
                    address = $random & 1023;  // Random address within range

                    // Check if actual read result matches expected value
                    if (readResult !== expectValue) begin
                        $display("Mismatch at simulation step %0d. Expected data: %h, Actual data: %h", i, expectValue, readResult);
                        correct = 0;
                    end
                end else begin
                    // Write operation
                    writeEnabled = 1;
                    writeInput = $random;
                    address = $random & 1023;  // Random address within range

                    // Update expected data in DataMemory for correctness check
                    DM_inst.data[address] = writeInput;
                end
            end

            // Update expectValue for read operation
            expectValue = DM_inst.data[address];

            // Wait for a half clock cycle
            #0.5;
        end

        // Display test result
        if (correct)
            $display("Test passed!");
        else
            $display("Test failed!");

        // Finish simulation
        $finish;
    end

endmodule


