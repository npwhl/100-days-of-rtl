module day5 (
  input     wire        clk,
  input     wire        reset,

  output    logic[7:0]  cnt_o
);

  always@(posedge clk) begin
    if(reset) cnt_o <= 8'h1; 
    else begin
      cnt <= cnt + 2; 
    end
  end

endmodule
