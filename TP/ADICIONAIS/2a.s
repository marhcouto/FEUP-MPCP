.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W10, W10, W10
			EOR W11, W11, W11

	ciclo1:	CBZ W1, fim
			LDR W10, [X0]
			CMP W10, W11
			B.GT itsbig
			B next

	itsbig:	MOV W11, W10
			B next

	next:	ADD X0, X0, #4
			SUB W1, W1, #1
			B ciclo1

	fim:	MOV W0, W11
			RET