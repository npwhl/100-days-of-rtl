module day3_tb ();
logic    clk; // logic at the highest level!
logic    reset;

logic    a_i;

logic    rising_edge_o;
logic    falling_edge_o;

  day3 tb (.*);
  always begin
    clk <= 1; // use nonblockings!
    #5; 
    clk <= 0; 
    #5; 
  end
  initial begin
    a_i <= 0; 
    reset <= 1; 
    @(posedge clk);
    reset <= 0; 
    a_i <= 1; 
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);
    a_i <= 0; 
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);
    a_i <= 1; 
  end
endmodule
