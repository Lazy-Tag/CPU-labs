// Testbench file for 32-bit adder

`define ADDER_32BIT

module adder_tb();


`ifdef ADDER_32BIT
    localparam [31:0] ANS_MASK = 32'hFFFFFFFF;
`else
    localparam [31:0] ANS_MASK = 32'h0000000F;
`endif

    reg [31:0] a, b;
    wire [31:0] sum, c;
    adder uut(.a(a), .b(b), .sum(sum));
    
    assign c = (a + b - sum) & ANS_MASK;
    integer i;
    initial begin
        for (i = 0; i < 256; i = i + 1) begin
`ifdef ADDER_32BIT
            a <= $urandom();
            b <= $urandom();
`else
            a <= i % 16;
            b <= i / 16;
`endif
            #10;
        end
        $finish;
    end
endmodule
