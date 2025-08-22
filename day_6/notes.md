# Day 6 Notes
Don't forget to stimulate the reset signal!        

Each of the "ff's" of the shift register are each bit in sr_o. Since it is a wire, in order to update it sequentially, you need to use another ff in an always block, THEN update the wire with an assign statement!    
To update each bit, 1 - shift the bits to the right using only the MSB (0-2), then add the bit on. This updates every clock cycle!!!    
2 block design works here!!!!!   