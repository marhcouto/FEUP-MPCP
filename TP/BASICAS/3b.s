.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X1, X1, X1
			EOR X2, X2, X2

	ciclo1:	CBZ X0, fim
			AND X1, X0, #1
			LSR X0, X0, #1
			ADD X2, X2, X1
			B ciclo1

	fim:	MOV X0, X2
			RET