// Code your design here
module clkDividerN(
  input clk, rst,
  input [7:0] N,
  output clkOut
);
  
  reg pos_signal, neg_signal;
  reg [7:0] cnt;
  
  always @(posedge clk or negedge rst) begin
    if (!rst) cnt <= 0;
    
    else begin
      if (cnt == N - 1) cnt <= 0;
      else cnt <= cnt + 1;
    end
  end
  
  always @(posedge clk or negedge rst) begin
    if (!rst) pos_signal <= 0;
    
    else begin
      if (cnt == (N-1)>>1) pos_signal <= 1'b1;
      else if (cnt == N-1) pos_signal <= 1'b0;
    end
  end
  
  always @(negedge clk or negedge rst) begin
    if (!rst) neg_signal <= 0;
    
    else if (N[0]) neg_signal <= pos_signal;
  end
  
  
  assign clkOut = pos_signal | neg_signal;
  
endmodule