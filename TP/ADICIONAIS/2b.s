.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10
			MOV X11, #1000

	ciclo1:	CBZ W1, fim
			LDR X10, [X0]
			CMP X10, X11
			B.LT itssmall
			B next

	itssmall:	MOV X11, X10
			B next

	next:	ADD X0, X0, #4
			SUB W1, W1, #1
			B ciclo1

	fim:	MOV X0, X11
			RET