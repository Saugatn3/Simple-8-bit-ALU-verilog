// 8-bit ALU
module alu(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] opcode, // 000:add, 001:sub, 010:AND, 011:OR, 100:XOR, 101:INC, 110:DEC, 111:PASS
    output reg [7:0] Result,
    output Zero,
    output reg Carry
);

assign Zero = (Result == 8'b0);

always @(*) begin
    Carry = 0;
    case(opcode)
        3'b000: {Carry, Result} = A + B;
        3'b001: {Carry, Result} = A - B;
        3'b010: Result = A & B;
        3'b011: Result = A | B;
        3'b100: Result = A ^ B;
        3'b101: {Carry, Result} = A + 1;
        3'b110: {Carry, Result} = A - 1;
        3'b111: Result = A;
        default: Result = 8'b0;
    endcase
end

endmodule
