.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10

	ciclo1:	CBZ W1, fim
			LDR W11, [X0]
			MUL W11, W11, W1
			STR W11, [X0]
			ADD X0, X0, #4
			SUB W1, W1, #1
			B ciclo1

	fim:	RET