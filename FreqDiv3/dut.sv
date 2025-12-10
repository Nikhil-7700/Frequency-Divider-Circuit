// Code your design here
module clkDivide3_dut(
  input clk, rst,
  output clkDivide3
);
  
  reg clkDivide3_reg;
  
  reg [1:0] cnt;
  
  always @(negedge rst) begin
    if (!rst) clkDivide3_reg <= 0;
  end
  
  always @(posedge clk) begin
    if (cnt != 2) begin
      cnt <= cnt + 1;
    end
    else begin
      clkDivide3_reg <= !clkDivide3_reg;
      cnt <= 0;
    end
  end
  
  always @(negedge clk) begin
    if (cnt == 1) begin
      clkDivide3_reg <= !clkDivide3_reg;
    end
  end
  
  
  
  
  assign clkDivide3 = clkDivide3_reg;
  
  
endmodule