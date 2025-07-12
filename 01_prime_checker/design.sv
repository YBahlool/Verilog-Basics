module challenge1 (
  input C,
  input B,
  input A, 
  output P

	);
  
  wire notToAnd;
  wire andToOr;
  wire andToOrBottom;
  
  
  not Not_Gate(notToAnd, C);
  and And_Gate(andToOr, notToAnd, B);
  and b_and_gate(andToOrBottom, A, C);
  or final_or(P, andToOrBottom, andToOr);
  
endmodule
  
