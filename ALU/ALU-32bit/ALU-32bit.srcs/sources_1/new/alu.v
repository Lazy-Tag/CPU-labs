module alu(
    input [31:0] A,
    input [31:0] B,
    input [5:0] Op,
    output reg [31:0] C,
    output reg Over
);
    reg [31:0] _B;
    reg [32:0] SS;

    always @* begin
        case (Op)
            6'b100000: begin
                C <= A + B;
                Over <= (A[31] & B[31] & !C[31]) | (!A[31] & !B[31] & C[31]); 
            end
            6'b100001: begin
                SS <= A + B;
                Over <= SS[32];
            end
            6'b100010: begin
                _B <= ~B + 1'b1;
                C <= A + _B;
                Over <= (A[31] & _B[31] & !C[31]) | (!A[31] & !_B[31] & C[31]);
            end
            6'b100011: begin
                _B <= ~B + 1'b1;
                SS <= A + _B;
                Over <= SS[32];
                C <= SS[31:0];
            end
            6'b000000: begin
                Over <= 0;
                C <= $unsigned(B) << A;
            end
            6'b000010: begin
                Over <= 1'b0;
                C <= $unsigned(B) >> A;
            end
            6'b000011: begin
                Over <= 1'b0;
                C <= $signed(B) >> A;
            end
            6'b100100: begin
                Over <= 1'b0;
                C <= A & B;
            end
            6'b100101: begin
                Over <= 1'b0;
                C <= A | B;
            end
            6'b100110: begin
                Over <= 1'b0;
                C <= A ^ B;
            end
            6'b100111: begin
                Over <= 1'b0;
                C <= ~(A | B);
            end
        endcase
    end

endmodule
