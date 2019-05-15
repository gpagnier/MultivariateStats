
value labels  dose 0 'zero' 1 'single' 2 'double'
 / inform 1 'informed' 0 'not informed'.

*Note: you have to fill in the contrasts before you run this analysis
 
manova alert1 to alert3 by dose(0,2) 
 /wsfac = time(3)
 /contr(time) = ?
 /rename = ?
 /contr(dose) = ?
 /print =  SIGNIF(SINGLEDF, HYPOTH) transform omeans
 /disc = raw stan corr.


manova alert1 to alert3 by inform(0,1) dose(0,2) 
 /wsfac = time(3)
 /contr(time) = ?
 /rename = ?
 /contr(dose) = ?
 /print =  signif(SINGLEDF,HYPOTH) transform omeans
 /disc = stan corr.