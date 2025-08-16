module day1_tb ();
    logic [7:0] a_i;
    logic [7:0] b_i;
    logic sel_i;
    logic [7:0] y_o;

    day1 DAY1 (.*);

    initial begin
        for (int i = 0; i < 10; i++) begin
            a_i   = $urandom_range (0, 8'd255);
            b_i   = $urandom_range (0, 8'd255);
            sel_i = $urandom_range (0, 1);
            #10;
        end
    $finish();
  end
endmodule