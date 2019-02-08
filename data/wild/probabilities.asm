mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	mon_prob 30,  0 ; 30% chance
	mon_prob 60,  1 ; 30% chance
	mon_prob 80,  2 ; 20% chance
	mon_prob 90,  3 ; 10% chance
	mon_prob 95,  4 ;  5% chance
	mon_prob 99,  5 ;  4% chance
	mon_prob 100, 6 ;  1% chance

WaterMonProbTable:
	mon_prob 40,  0 ; 40% chance
	mon_prob 70,  1 ; 30% chance
	mon_prob 90,  2 ; 20% chance
	mon_prob 100, 3 ; 10% chance
