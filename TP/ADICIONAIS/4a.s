.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W10, W10, W10
			EOR W11, W11, W11

	ciclo1:	CBZ W1, fim
			LDRB W10, [X0]
			STR W10, [X2]
			ADD X0, X0, #1
			ADD X2, X2, #8
			SUB W1, W1, #1
			B ciclo1

	fim:	RET