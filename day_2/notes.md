# Day 2 Notes
Synchronus - on clock edge
Asynch - or posedge reset

always_ff - always but for ffs, ensures driven by a single signal. not sensitive (?) to changes of a function like always_comb is 

potential to have ambiguity if signals arrive at the same time?

always tb blocks good for clock
should use @(posedge clk); to change values ONLY ON CLOCK EDGE for testing.
don't forget #finish(); !!

\#'s also need ; 
no input/output in tb!

possible lint error for a signal being used for both async and sync. it's important to only have one. 