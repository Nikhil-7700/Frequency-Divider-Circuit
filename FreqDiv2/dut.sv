module clkDivide2_dut(
  input clk, rst,
  output clkDivide2, clkDivide4, clkDivide8, clkDivide16, clkDivide32
);
  
  reg clkDivide2_reg;
  reg clkDivide4_reg;
  reg clkDivide8_reg;
  reg clkDivide16_reg;
  reg clkDivide32_reg;
  
  always @(posedge clk or negedge rst) begin
    if (!rst) clkDivide2_reg <= 0;
    else clkDivide2_reg <= !clkDivide2_reg;
  end
  
  
  always @(posedge clkDivide2_reg or negedge rst) begin
    if (!rst) clkDivide4_reg <= 0;
    else clkDivide4_reg <= !clkDivide4_reg;
  end
  
  always @(posedge clkDivide4_reg or negedge rst) begin
    if (!rst) clkDivide8_reg <= 0;
    else clkDivide8_reg <= !clkDivide8_reg;
  end
  
  always @(posedge clkDivide8_reg or negedge rst) begin
    if (!rst) clkDivide16_reg <= 0;
    else clkDivide16_reg <= !clkDivide16_reg;
  end
  
  always @(posedge clkDivide16_reg or negedge rst) begin
    if (!rst) clkDivide32_reg <= 0;
    else clkDivide32_reg <= !clkDivide32_reg;
  end
  
  assign clkDivide2 = clkDivide2_reg;
  assign clkDivide4 = clkDivide4_reg;
  assign clkDivide8 = clkDivide8_reg;
  assign clkDivide16 = clkDivide16_reg;
  assign clkDivide32 = clkDivide32_reg;
  
endmodule