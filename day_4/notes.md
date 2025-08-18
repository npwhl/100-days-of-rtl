# Day 4 Notes
ALU - arithmetic logic unit
^ - xor
== - equality

always_ff = memory implied, hold value
always_comb = memory not implied, uses current states, value not held (ex. a and b in +, a b not held)

it's good to have a dictionary/enum for operations to make it more readable 
ex. localparam  OP_ADD = 3'b000;
localparam = ENUM!!

consider adds for carries
fill the entire output so there's nothing indeterminite

Remember to use nonblocking <=!!!