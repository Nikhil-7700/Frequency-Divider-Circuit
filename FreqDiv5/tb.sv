module tb;
  logic clk, rst;
  logic clkDivide5;
  
  clkDivide5_dut dut(.clk(clk), .rst(rst),
                     .clkDivide5(clkDivide5)
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