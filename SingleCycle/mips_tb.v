module mips_tb;

reg reset, clock;
wire [31:0] address, Inst, Qa, Qb, ALU_R, NEXTADDR, D;

// Change the TopLevel module's name to yours
SingleCycle single_cycle(
.clock(clock),
.reset(reset),
.address(address),
.Inst(Inst),
.Qa(Qa),
.Qb(Qb),
.ALU_R(ALU_R),
.NEXTADDR(NEXTADDR),
.D(D)
 );

integer k;
initial begin
    // posedge clock

    // Hold reset for one cycle
    reset = 1; 
    clock = 0; #5;
    // clock = 1; #1;
    // clock = 0; #1;
    reset = 0; 
    
    // $stop; // Comment this line if you don't need per-cycle debugging

    for (k = 0; k < 34000; k = k + 1) begin // 34000 clocks
        clock = 1; #5;
        clock = 0; #5;
    end

    // Please finish with `syscall`, finishes here may mean the clocks are not enough

    $finish;

end
    
endmodule
