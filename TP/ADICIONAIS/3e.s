.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10
			EOR X11, X11, X11
			EOR X12, X12, X12
			MOV X14, X0
			MOV W11, #1

	ciclo1:	LDRB W10, [X0]
			CMP W10, W1
			B.EQ parte2
			ADD X0, X0, #1
			B ciclo1

	parte2:	SUB X0, X0, #1

	ciclo2:	LDRB W10, [X0]
			LDRB W12, [X14]
			CMP W12, W1
			B.EQ fim
			CMP W10, W12
			B.NE no
			ADD X14, X14, #1
			SUB X0, X0, #1
			B fim

	no:		MOV W11, #0

	fim:	MOV W0, W11
			RET
