module day4_tb ();
  logic [7:0]   a_i;
  logic [7:0]   b_i;
  logic [2:0]   op_i;
  logic [7:0]   alu_o;

  day4 tb (.*); 
  
  initial begin
    for(int i = 0; i < 4; i++) begin
      a_i = $urandom_range(0, 7'b11111111); 
      b_i = $urandom_range(0, 7'b11111111); 
      for(int j = 0; i < 7; j++) begin
      	op_i = j; 
        #10;
      end
      end
  end
  $finish();
endmodule
