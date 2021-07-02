.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W12, W12, W12
			EOR W10, W10, W10
			EOR W13, W13, W13
			MOV W11, #2

	ciclo1:	CBZ W1, fim
			LDR W12, [X0]
			SDIV W13, W12, W11
			ADD W13, W13, W13
			CMP W12, W13
			B.EQ ciclo2
			B ciclo3

	ciclo2:	ADD W10, W10, #1
			B ciclo3

	ciclo3:	ADD X0, X0, #4
			SUB W1, W1, #1
			B ciclo1

	fim:	MOV W0, W10
			RET