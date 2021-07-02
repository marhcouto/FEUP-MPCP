.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10
			EOR X11, X11, X11
			EOR X12, X12, X12

	ciclo1:	LDRB W10, [X0]
			CMP W10, W1
			B.EQ fim
			B next

	next:	ADD X0, X0, #1
			ADD W11, W11, #1
			B ciclo1

	fim:	MOV W0, W11
			RET