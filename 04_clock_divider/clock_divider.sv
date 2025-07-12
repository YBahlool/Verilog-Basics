module clock_divider(
  input clk_in,
  output reg clk_out,
  input reset,
  input [31:0] ratio);
  
  reg [31:0] counter;
  
  
  always@ (posedge clk_in) begin
    if (reset == 1) begin
      counter <= 0;
      clk_out <= 0;
      
    end 
      else begin
        counter <= counter + 1;
        if(counter == ratio - 1) begin
          clk_out <= ~clk_out;
          counter <= 0;
        end
      end
  end
  
  
endmodule
