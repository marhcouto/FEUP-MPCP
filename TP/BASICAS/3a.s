.text
.global myfunc
.type myfunc, "function"

myfunc:	EOR W10, W10, W10
				EOR W11, W11, W11
				EOR W12, W12, W12
				MOV W10, #11
				MOV W12, #10

	ciclo1:		CBZ W12, fim
				ADD W11, W11, W10
				ADD W10, W10, #10
				SUB W12, W12, #1
				B ciclo1

	fim:		EOR W0, W0, W0
				MOV W0, W11
				RET
