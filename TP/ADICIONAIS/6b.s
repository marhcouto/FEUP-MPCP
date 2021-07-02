.text
.global myfunc
.type myfunc, "function"

myfunc:		MOV X10, #0
			UBFX W11, W0, #31, #1
			UBFX W10, W0, #8, #24
			BFI W10, W11, #31, #1
			MOV W0, W10
			RET