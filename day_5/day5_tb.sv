module day5_tb ();
  logic clk; // logic on highest!
  logic reset;
  logic[7:0] cnt_o;

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
    for(int i = 0; i < 20; i++) begin
        @(posedge clk);
    end
  end
endmodule
