.text
.global xAinAB
.type xAinAB, "function"

xAinAB:		EOR W6, W6, W6

	ciclo:  CBZ W1, fim
			SUB W1, W1, 1
			LDR W4, [X0]
			ADD X0, X0, 4
			CMP W4, W3
			B.GT ciclo
			CMP W4, W2
			B.LT ciclo
			SDIV W5, W4, W2
			SMULL X5, W5, W2
			CMP W4, W5
			B.NE ciclo
			ADD W6, W6, 1
			B ciclo

	fim:	MOV W0, W6
			RET