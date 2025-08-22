# Day 5 Notes
@(posedge clk); forces the tb to show an output! it's good to have this in the TB to see any "passive" signals like the counter      

my implementation has a single clock cycle delay, but it's good to split the combinational and sequential logic (adding and storage) to make it easier to debug, analyze timing, concurrent same-variable assignment, etc.         
this format is called the **two-block design style**!!!!!!   
it's good to think in terms of the potential circuit:        
![Example Circuit](https://cburch.com/cs/230/test/rd/mem2-circ.png)        
it would be good to implement this design with the combinational logic in one block, then the ffs in the next clock cycle, then the combinational logic after!           
implement the next "level" with a new variable and think through when each thing will be updated.

make a habit of using 8'h____ to make sure you're filling all of the bits!!!        
make sure you use logic on the HIGHEST you're using it in (for now, usually tb!!!)