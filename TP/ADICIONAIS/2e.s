.text
.global myfunc
.type myfunc, "function"

myfunc:		EOR X10, X10, X10
			EOR X11, X11, X11
			EOR X12, X12, X12

	ciclo1:	CBZ W1, fim
			LDR W10, [X0]
			CMP W10, W2
			B.LT next
			CMP W10, W3
			B.GT next
			ADD W11, W11, #1
			B next

	next:	ADD X0, X0, #4
			SUB W1, W1, #1
			B ciclo1

	fim:	MOV W0, W11
			RET