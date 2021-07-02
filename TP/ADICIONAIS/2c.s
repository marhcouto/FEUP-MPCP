.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W10, W10, W10
			LDRH W11, [X0]

	ciclo1:	CBZ W1, fim
			LDRH W10, [X0]
			CMP W10, W11
			B.GT itsbig
			B next

	itsbig:	MOV W11, W10
			B next

	next:	ADD X0, X0, #2
			SUB W1, W1, #1
			B ciclo1

	fim:	MOV W0, W11
			RET