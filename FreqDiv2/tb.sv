module tb;
  logic clk, rst;
  logic clkDivide2;
  logic clkDivide4;
  logic clkDivide8;
  logic clkDivide16;
  logic clkDivide32;
  
  clkDivide2_dut dut(.clk(clk), .rst(rst),
                     .clkDivide2(clkDivide2),
                     .clkDivide4(clkDivide4),
                     .clkDivide8(clkDivide8),
                     .clkDivide16(clkDivide16),
                     .clkDivide32(clkDivide32)
                    );
  
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst = 1'b0;
    #17;
    rst = 1'b1;
    #500;
    $finish();
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  
endmodule