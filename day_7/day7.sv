module day7 ( // "pseudorandom"
  input     wire      clk,
  input     wire      reset,

  output    wire[3:0] lfsr_o
);

  // first clock cycle - bit 1 and 3 are driven 
  // second clock cycle - bit 0 is driven
  
  logic[3:0] ff; // clock cycle 1
  logic[3:0] ff_2; // clock cycle 2

  always@(posedge clk or posedge reset) begin
    if(reset) ff <= 4'hE; 
    else begin
      ff_2 <= ff; // cycle 2 - update the output
    end
  end

  // cycle 1 - find the output w/ bit 1 and 3
  assign ff_2 = {lfsr_ff[2:0], lfsr_ff[1] ^ lfsr_ff[3]};
  assign lfsr_o = ff; // cycle 2 - update the output

endmodule
