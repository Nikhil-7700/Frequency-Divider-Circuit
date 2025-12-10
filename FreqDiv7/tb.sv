module tb;
  logic clk, rst;
  logic clkDivide7;
  
  clkDivide7_dut dut(.clk(clk), .rst(rst),
                     .clkDivide7(clkDivide7)
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