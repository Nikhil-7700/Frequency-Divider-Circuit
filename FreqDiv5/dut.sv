// Code your design here
module clkDivide5_dut(
  input clk, rst,
  output clkDivide5
);
  
  reg clkDivide5_reg;
  
  reg [2:0] cnt;
  
  always @(negedge rst) begin
    if (!rst) clkDivide5_reg <= 0;
  end
  
  always @(posedge clk) begin
    if (cnt != 4) begin
      cnt <= cnt + 1;
    end
    else begin
      clkDivide5_reg <= !clkDivide5_reg;
      cnt <= 0;
    end
  end
  
  always @(negedge clk) begin
    if (cnt == 2) begin
      clkDivide5_reg <= !clkDivide5_reg;
    end
  end
  
  
  
  
  assign clkDivide5 = clkDivide5_reg;
  
  
endmodule