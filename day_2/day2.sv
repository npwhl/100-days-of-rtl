module day2 (
  input     logic      clk,
  input     logic      reset,

  input     logic      d_i,

  output    logic      q_norst_o,
  output    logic      q_syncrst_o,
  output    logic      q_asyncrst_o
);

  // ONLY the clock signal will affect variables
  // non-resettable
  always_ff@(posedge clk) begin
  	q_norst_o <= d_i; 
  end
  
  // synchronus reset
  always_ff@(posedge clk) begin
    if(reset) begin
      q_syncrst_o <= 0; 
    end else begin
      q_syncrst_o <= d_i; 
    end
  end
  
  always_ff@(posedge clk, reset) begin
    if(reset) begin
      q_syncrst_o <= 0; 
    end else begin
      q_syncrst_o <= d_i; 
    end
  end

endmodule
