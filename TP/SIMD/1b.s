.text
.global AltV
.type AltV, "function"


AltV:		
			LSR W1, W1, #2
			
	loop1:	CBZ W1, end
			LDR Q1, [X0]
			FMUL V1.4S, V1.4S, V0.S[0] 
			STR Q1, [X0], #16
			SUB W1, W1, #1
			B loop1
			
	end:	RET