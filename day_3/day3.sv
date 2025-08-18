module day3 (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    wire    rising_edge_o,
  output    wire    falling_edge_o
);
	
  reg prev = 0; 
  always@(a_i) begin
    if(a_i && ~prev) begin
      assign rising_edge_o = 1; 
      assign falling_edge_o = 0; 
      prev = 1; 
    end else if(~a_i && prev) begin
      assign rising_edge_o = 0; 
      assign falling_edge_o = 1; 
      prev = 0; 
    end else begin
      assign rising_edge_o = 0; 
      assign falling_edge_o = 0; 
    end
  end
  

endmodule
