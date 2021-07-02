.data
yoyo: .double 1000000000.00

.text
.global eStep
.type eStep, "function"

eStep:		MOV W5, W2
			MOV X7, X3

	ciclo1:	CBZ W0, fim
			LDR S1, [X1], #4
			LDR S11, [X1], #4
			FCVT D1, S1
			FCVT D11, S11
			LDR D9, yoyo
			MOV W10, #0
			MOV W8, #0
			B ciclo2

	ciclo2:	CBZ W2, thingy
			LDR D3, [X3], #8
			LDR D13, [X3], #8
			B dist

	cic2.2:	FCMP D13, D9
			CSEL W8, W10, W8, LO
			FCMP D13, D9
			FCSEL D9, D13, D9, LO
			SUB W2, W2, #1
			ADD W10, W10, #1
			B ciclo2

	dist: 	FSUB D3, D1, D3
			FSUB D13, D11, D13
			FMUL D3, D3, D3
			FMUL D13, D13, D13
			FADD D13, D13, D3
			FSQRT D13, D13
			B cic2.2

	thingy:	STR W8, [X4], #4
			MOV W2, W5
			SUB W0, W0, #1
			MOV X3, X7
			B ciclo1

	fim:	RET
