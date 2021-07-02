.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X2, X2, X2
			EOR X3, X3, X3
			EOR X4, X4, X4
			AND X3, X1, X0
			EOR X0, X0, X0


	ciclo1:	CBZ X3, fim
			AND X4, X3, #1
			ADD X0, X0, X4
			LSR X3, X3, #1
			B ciclo1

	fim:	RET