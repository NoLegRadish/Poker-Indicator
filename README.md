# Poker-Indicator

 It's a gate-level combinational circuit desigend to tell the combination in a poker game (Full house, flush etc)  
 Coded in verilog.  

The inputs of this circuit are five 6-bit digital values, denoted as i0, i1, i2, i3, i4. The 2 MSBs in the  
6-bits indicate their suits. 0, 1, 2, and 3 refer to spades, hearts, diamonds, and clubs,  
respectively. While the remaining 4 bits are their ranks. Ace, Jack, Queen, and  
King are represented by 1, 11, 12, and 13, respectively. The output of the circuit,  
denoted as type, is a 4-bit unsigned number  
