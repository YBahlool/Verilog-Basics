module Triple_TB();
  reg [3:0] a;
  wire [5:0] result;
  
  
  triple FL(a, result);
  
  initial begin
    $monitor ("The triple of %d is %d", a, result);
    a = 0; #10;
    a = 1; #10;
    a = 3; #10;
    a = 5; #10;
    a = 10; #10;
    a = 15; #10;
    
    $finish;
  end
  
  
  
endmodule
