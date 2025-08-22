module day6(
  input     wire        clk,
  input     wire        reset,
  input     wire        x_i,      // Serial input

  output    wire[3:0]   sr_o
);

  always@(posedge clk or posedge reset) begin
    if(reset) assign sr_o = 4'd0;
    else begin
      assign sr_o[0] = x_i; 
      assign sr_o[1] = sr_o[0]; 
      assign sr_o[2] = sr_o[1]; 
      assign sr_o[3] = sr_o[2]; 
    end
  end

endmodule
