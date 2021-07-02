.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10
			EOR X11, X11, X11
			EOR X12, X12, X12
			EOR X13, X13, X13
			MOV X14, X2

	ciclo1:	LDRB W10, [X0]
			CMP W10, W1
			MOV X2, X14
			MOV W12, #5
			B.EQ fim
			B ciclo2

	ciclo2:	CBZ W12, next1
			LDRB W11, [X2]
			SUB W12, W12, #1
			ADD X2, X2, #1
			CMP W10, W11
			B.EQ yes
			B ciclo2

	yes:	ADD W13, W13, #1
			B next1

	next1:	ADD X0, X0, #1
			B ciclo1

	fim:	MOV W0, W13
			RET
