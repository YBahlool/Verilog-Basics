module test_clock_divider();
  reg clk_in;
  wire clk_out;
  reg reset;
  reg [31:0] ratio;
  
  
  clock_divider AL (clk_in, clk_out, reset, ratio);
  
  initial begin
    clk_in = 0;
    
    forever #5 clk_in = ~clk_in;
    
  end
  
  
  initial begin
  $monitor ("Time=%0t | clk_out=%d", $time, clk_out);
  
  // Test 1
  ratio = 100;
  reset = 1; #10; reset = 0;
  #1000; // wait to observe clk_out toggling

  // Test 2
  ratio = 5000;
  reset = 1; #10; reset = 0;
  #1000; // wait to observe toggling

  // Test 3
  ratio = 10000;
  reset = 1; #10; reset = 0;
  #1000; // wait to observe toggling

  $finish;
end

endmodule
