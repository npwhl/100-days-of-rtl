# Day 7 Notes
A Linear Feedback Shift Register is a shift register that uses an XOR gate to generate **pseudorandom** numbers.         
```if(reset) ff <= 4'hE;```  - starting at all ones avoids a "locked" state where the shit register will repeat the same values.     

makes use of multiple flip flops to drive the output. on the FIRST cycle, the FIRST flip flop finds the random value with the XOR gate. then, that value is saved to the main flip flop on the clock cycle, which si then updated to the output on the same cycle.          

make a flip flop for every "step" of the way and consider when each step is performed!!   

! logic on the highest part TB!!!