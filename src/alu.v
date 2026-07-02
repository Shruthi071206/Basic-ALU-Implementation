//======================================================
// 4-Bit Basic ALU
// Supported Operations:
// 000 - Addition
// 001 - Subtraction
// 010 - AND
// 011 - OR
// 100 - XOR
// 101 - NOT A
// 110 - Left Shift A
// 111 - Right Shift A
//======================================================

module alu(
    input [3:0] A,
    input [3:0] B,
    input [2:0] Sel,
    output reg [3:0] Result,
    output reg Carry
);

always @(*) begin

    Carry = 0;

    case(Sel)

        3'b000:
        begin
            {Carry, Result} = A + B;
        end

        3'b001:
        begin
            Result = A - B;
        end

        3'b010:
        begin
            Result = A & B;
        end

        3'b011:
        begin
            Result = A | B;
        end

        3'b100:
        begin
            Result = A ^ B;
        end

        3'b101:
        begin
            Result = ~A;
        end

        3'b110:
        begin
            Result = A << 1;
        end

        3'b111:
        begin
            Result = A >> 1;
        end

    endcase

end

endmodule