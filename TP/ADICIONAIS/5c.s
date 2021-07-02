.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W10, W10, W10
			EOR W11, W11, W11

	ciclo1:	RBIT W10, W0
			CMP W0, W10
			CSET W0, EQ
			RET