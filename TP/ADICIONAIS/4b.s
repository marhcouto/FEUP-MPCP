.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W10, W10, W10
			EOR W11, W11, W11

	ciclo1:	CBZ W1, fim
			LDRSW X10, [X0]
			STR X10, [X2]
			ADD X0, X0, #4
			ADD X2, X2, #8
			SUB W1, W1, #1
			B ciclo1

	fim:	RET