module ALU(
  input [3:0] a,
  input [3:0] b, 
  input [1:0] op,
  output [7:0] result);
  
  assign result = 
  (op == 0) ? (a + b) :
  (op == 1) ? (a * b) :
  (op == 2) ? (a % b) :
  (a & b) ;
  
  
endmodule
