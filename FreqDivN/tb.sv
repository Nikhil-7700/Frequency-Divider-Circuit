// Code your testbench here
// or browse Examples
module tb;
  logic clk, rst;
  logic [7:0] N = 8'd9;
  logic clkOut;
  
  clkDividerN dut( .clk(clk), .rst(rst), .N(N), .clkOut(clkOut) );
  
  
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst = 1'b0;
    #7;
    rst = 1'b1;
    #500;
    $finish();
  end
  
  initial begin
    $dumpfiles("dump.vcd");
    $dumpvars();
  end
  
endmodule