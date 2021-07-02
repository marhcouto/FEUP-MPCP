.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10

	ciclo1:	CBZ W2, fim
			LDR W11, [X0]
			LDR W12, [X1]
			ADD W11, W11, W12
			STR W11, [X0]
			ADD X0, X0, #4
			ADD X1, X1, #4
			SUB W2, W2, #1
			B ciclo1

	fim:	RET