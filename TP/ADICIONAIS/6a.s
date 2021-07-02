.text
.global myfunc
.type myfunc, "function"

myfunc:		MOV X10, #0
			BFI X10, X0, #8, #56
			MOV X0, X10
			RET