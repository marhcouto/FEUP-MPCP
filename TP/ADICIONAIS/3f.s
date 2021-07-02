.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10
			EOR X11, X11, X11
			MOV W11, #1

	ciclo1:	LDRB W10, [X0]
			CMP W10, W1
			B.EQ fim
			CMP W10, #32
			B.EQ add
			ADD X0, X0, #1
			B ciclo1

	add:	ADD W11, W11, #1
			ADD X0, X0, #1
			B ciclo1

	fim:	MOV W0, W11
			RET