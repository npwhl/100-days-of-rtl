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
    for (int i=0; i<32; i++) begin
      a_i <= $urandom_range(0, 1);
      @(posedge clk);
    end
    $finish();
  end
endmodule
