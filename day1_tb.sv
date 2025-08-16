module day1_tb ();
    reg A; 
    reg B; 
    reg S; 
    wire O; 
    day1 tb(.a_i(A), .b_i(B), .sel_i(S), .y_o(O));
    initial begin
        A <= 0; 
        B <= 7'b1111111;
        S <= 0;
        #10
        S <= 1;
    end
endmodule