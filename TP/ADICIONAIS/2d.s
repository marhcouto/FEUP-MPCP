.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10
			EOR X11, X11, X11
			EOR X12, X12, X12
			MOV X12, X1

	ciclo1:	CBZ W1, fim
			LDR X10, [X0]
			ADD X11, X11, X10
			B next

	next:	ADD X0, X0, #8
			SUB W1, W1, #1
			B ciclo1

	fim:	SDIV X11, X11, X12
			MOV X0, X11
			RET