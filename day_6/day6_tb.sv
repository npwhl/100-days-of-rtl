module day6_tb ();
  logic        clk;
  logic        reset;
  logic        x_i;
  logic[3:0]   sr_o;
  
  day6 tb (.*); 
  
  always begin
    clk = 1; 
    #5; 
    clk = 0; 
    #5; 
  end
  
	initial begin
    x_i = 1;
    for(int i = 0; i < 8; i++) begin
      x_i = ~x_i; 
      @(posedge clk); 
      @(posedge clk); 
      @(posedge clk); 
    end
  end
  
endmodule
