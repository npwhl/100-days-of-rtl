module day8_tb();
	localparam BIN_W = 4; // localparam for tb
  localparam ONE_HOT_W = 16;

  logic [BIN_W-1:0] bin_i;
  logic [ONE_HOT_W-1:0] one_hot_o;
  
  day8 #(BIN_W, ONE_HOT_W) tb(.*); // need to specify params
  
  initial begin
    for(int i = 0; i < 32; i++) begin
      bin_i = urandom_range(0, 4'hF);
      #5; // delay to show 
    end
  end
endmodule
