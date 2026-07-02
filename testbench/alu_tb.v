`timescale 1ns/1ps

module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] Sel;

wire [3:0] Result;
wire Carry;

alu uut(
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Carry(Carry)
);

initial
begin

    A = 4'b0101;   //5
    B = 4'b0011;   //3

    Sel = 3'b000;  //Add
    #10;

    Sel = 3'b001;  //Subtract
    #10;

    Sel = 3'b010;  //AND
    #10;

    Sel = 3'b011;  //OR
    #10;

    Sel = 3'b100;  //XOR
    #10;

    Sel = 3'b101;  //NOT
    #10;

    Sel = 3'b110;  //Left Shift
    #10;

    Sel = 3'b111;  //Right Shift
    #10;

    $finish;

end

endmodule