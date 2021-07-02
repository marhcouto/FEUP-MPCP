.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR W10, W10, W10
			EOR W11, W11, W11

	ciclo1:	CLZ X10, X0
			MOV X11, #63
			SUB X0, X11, X10
	fim:	RET
