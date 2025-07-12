module ALU_Test();
  reg [3:0] firstNum;
  reg [3:0] secNum;
  reg [1:0] decideOp;
  wire [7:0] result;
  
  ALU FL(firstNum, secNum, decideOp, result);
  
  
  initial begin
    $monitor ("The result of the operator is %d", result);
    
    firstNum = 3; secNum = 2; decideOp = 0; #10;
    
    
    
    $finish;
  end
  
  
endmodule
