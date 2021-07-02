.text
.global myfunc
.type myfunc, "function"

myfunc:		MOV W11, #3

	ciclo1:	UBFX W10, W0, #0, #1
			LSR W0, W0, #1
			BFI W0, W10, #31, #1
			SUB W11, W11, #1
			CMP W11, #0
			B.NE ciclo1
			RET