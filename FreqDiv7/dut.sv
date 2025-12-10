// Code your design here
module clkDivide7_dut(
  input clk, rst,
  output clkDivide7
);
  
  reg clkDivide7_reg;
  reg [2:0] cnt; 
  
  always @(posedge clk or negedge rst) begin
    if (!rst)  begin
      clkDivide7_reg <= 0;
      cnt <= 6;
    end
    else if (cnt != 6) begin
      cnt <= cnt + 1;
    end
    else if (cnt == 6) begin
      clkDivide7_reg <= !clkDivide7_reg;
      cnt <= 0;
    end
    
  end
  
  
  always @(negedge clk) begin
    if (cnt == 3) begin
      clkDivide7_reg <= !clkDivide7_reg;
    end
  end
  
  assign clkDivide7 = clkDivide7_reg;
  
  
endmodule