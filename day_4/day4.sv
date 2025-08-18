module day4 (
  input     logic [7:0]   a_i,
  input     logic [7:0]   b_i,
  input     logic [2:0]   op_i,

  output    logic [7:0]   alu_o
);

  always@(op_i) begin
    case(op_i)
      3'b000 : alu_o = a_i + b_i; 
      3'b001 : alu_o = a_i - b_i; 
      3'b010 : begin
      	a_i << 3; 
        a_i[2:0] = b_i[2:0];
      end
      3'b011 : begin
        a_i >> 3; 
        a_i[7:5] = b_i[2:0];
      end
      3'b100 : alu_o = a_i & b_i; 
      3'b101 : alu_o = a_i | b_i; 
      3'b100 : alu_o = a_i ^ b_i; // bitwise xor
      3'b100 : alu_o = (a_i == b_i) ? 1 : 0; 
  end

endmodule
