module day6(
  input     wire        clk,
  input     wire        reset,
  input     wire        x_i,      // Serial input

  output    wire[3:0]   sr_o
);

  logic [3:0] sr_ff; // flipflop for sequential logic 
  logic [3:0] nxt_sr; // calculates the next value by dropping the LSB (3!!)

  always_ff @(posedge clk or posedge reset)
    if (reset)
      sr_ff <= 4'h0;
    else
      sr_ff <= nxt_sr; // updates the ff on the clock 

  assign nxt_sr = {sr_ff[2:0], x_i}; // shifts the bits

  assign sr_o = sr_ff;

endmodule
