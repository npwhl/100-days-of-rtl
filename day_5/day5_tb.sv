module day5_tb ();
  wire        clk;
  wire        reset;
  logic[7:0]  cnt_;

	always begin
    clk = 1; 
    #5;
    clk = 0; 
    #5;
  end
  
  initial begin
  	reset = 1; 
    @(posedge clk);
    reset = 0; 
  end
endmodule
