.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W10, W10, W10
			EOR W11, W11, W11

	ciclo1:	REV X10, X0
			CMP X0, X10
			CSET W0, EQ
			RET