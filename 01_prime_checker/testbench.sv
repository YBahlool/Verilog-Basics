`timescale 1ns/1ps

module test;

  reg A, B, C;
  wire P;

  // Instantiate your module
  challenge1 uut (
    .A(A),
    .B(B),
    .C(C),
    .P(P)
  );

  initial begin
    $display("C B A | P");
    $monitor("%b %b %b | %b", C, B, A, P);

    // Cycle through all 8 input combinations
    {C, B, A} = 3'b000; #10;
    {C, B, A} = 3'b001; #10;
    {C, B, A} = 3'b010; #10;
    {C, B, A} = 3'b011; #10;
    {C, B, A} = 3'b100; #10;
    {C, B, A} = 3'b101; #10;
    {C, B, A} = 3'b110; #10;
    {C, B, A} = 3'b111; #10;

    $finish;
  end

endmodule
