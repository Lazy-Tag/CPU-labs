module alu(
    input [31:0] A,
    input [31:0] B,
    input [5:0] Op,
    output reg [31:0] C,
    output reg Over
);
    reg [32:0] S;
    integer i;
    always @* begin
        case (Op)
            6'b100000: begin
                C <= A + B;
                Over <= (A[31] & B[31] & !C[31]) | (!A[31] & !B[31] & C[31]); 
            end
            6'b100001: begin
                C <= A + B;
                Over <= 0;
            end
            6'b100010: begin
                C <= A - B;
                Over <= (!A[31] & B[31] & C[31]) | (A[31] & !B[31] & !C[31]);
            end
            6'b100011: begin
                C <= A - B;
                Over <= 0;
            end
            6'b000000: begin
                Over <= 0;
                C <= B << A;
            end
            6'b000010: begin
                Over <= 1'b0;
                C <= B >> A;
            end
            6'b000011: begin
                Over <= 1'b0;
                C <= B;
                for (i = 0; i < A; i = i + 1) begin // 使用符号位进行扩展
                    C = {C[31], C[31:1]};
                end
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
