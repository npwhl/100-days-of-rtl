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
  
  // synchronus reset, ONLY on clock
  always_ff@(posedge clk) begin
    if(reset) begin
      q_syncrst_o <= 0; 
    end else begin
      q_syncrst_o <= d_i; 
    end
  end
  
  // async reset should also be on positive edge to be consistent
  always_ff@(posedge clk or posedge reset) begin
    if(reset) begin
      q_asyncrst_o <= 0; 
    end else begin
      q_asyncrst_o <= d_i; 
    end
  end

endmodule
