module day2_tb ();
  input     logic      clk;
  input     logic      reset;
  input     logic      d_i;
  output    logic      q_norst_o;
  output    logic      q_syncrst_o;
  output    logic      q_asyncrst_;
  
  day2 tb (.*); 
  
  initial begin
    clk <= 0; 
    reset <= 0; 
    d_i <= 0; 
    for(int i = 0; i < 6; i++) begin
      clk = ~clk; 
      if(i % 2 == 0) d_i = ~d_i; 
      if(i == 3) reset = ~reset; 
      if(i == 4) reset = ~reset; 
    end
  end

endmodule
