.text
.global CheckRange
.type CheckRange, "function"

CheckRange:	EOR W4, W4, W4
			EOR W6, W6, W6
			EOR W5, W5, W5

	ciclo:  CBZ W1, fim
			SUB W1, W1, 1
			LDR W4, [X2]
			CMP W4, W0
			B.GT cicloB
			CMN W4, W0
			B.LT cicloS
			ADD X2, X2, #4
			B ciclo


	cicloB:	STR W0, [X2]
			ADD X2, X2, #4
			ADD W5, W5, #1
			B ciclo

	cicloS:	NEG W6, W0
			STR W6, [X2]
			ADD X2, X2, #4
			ADD W5, W5, #1
			B ciclo
	fim:	MOV W0, W5
			RET



