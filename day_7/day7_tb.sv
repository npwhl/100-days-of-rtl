module day7_tb ();
  logic      clk; // REMEMBER: logic on highest level!!
  logic      reset;
  logic[3:0] lfsr_o;
  
  day7 tb (.*); 
  
  always begin // 100 MHz
    clk = 1; 
		#5; // ns
    clk = 0;
    #5;
  end
  
  initial begin
    reset = 1; 
    @(posedge clk); 
    reset = 0; 
    for(int i = 0; i < 32; i++) begin
      @(posedge clk); 
      @(posedge clk); 
      @(posedge clk); 
    end
  end
endmodule
