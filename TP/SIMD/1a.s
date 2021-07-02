.text
.global SomaV
.type SomaV, "function"


SomaV:		
		LSR W3, W3, #2

	loop1:	CBZ W3, end
			LDR Q0, [X0], #16
			LDR Q1, [X1], #16
			FADD V2.4S, V0.4S, V1.4S
			STR Q2, [X2], #16
			SUB W3, W3, #1
			B loop1
			
	end:	RET