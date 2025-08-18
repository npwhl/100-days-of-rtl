module day4 (
  input     logic [7:0]   a_i,
  input     logic [7:0]   b_i,
  input     logic [2:0]   op_i,

  output    logic [7:0]   alu_o
);

  always_comb begin // use for combinational logic
    case(op_i)
      // should also consider carries depending on what's needed
      // carries are an extra bit long
      3'b000 : {carry, alu_o}= {1'b0, a_i} + {1'b0, b_i};
      3'b001 : alu_o <= a_i - b_i; 
      3'b010 : a_i[7:0] << b_i[2:0]; // can just shift w/ bit length
      3'b011 : a_i[7:0] >> b_i[2:0];
      3'b100 : alu_o <= a_i & b_i; 
      3'b101 : alu_o <= a_i | b_i; 
      3'b110 : alu_o <= a_i ^ b_i; // bitwise xor
      3'b111 : alu_o <= (a_i == b_i) ? 7'd1 : 7'b0; // should fill WHOLE output
    endcase
  end

endmodule
