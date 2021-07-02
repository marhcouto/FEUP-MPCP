.text
.global CountCommon
.type CountCommon, "function"

CountCommon:	EOR W15, W15, W15
			MOV W10, W0
			MOV X14, X3

	cicloA:	CBZ W10, fim
			LDR W12, [X1]
			ADD X1, X1, #4
			SUB W10, W10, #1

			MOV W11, W2
			MOV X3, X14
			B cicloB

	cicloB:	CBZ W11, cicloA
			LDR W13, [X3]
			CMP W12, W13
			B.EQ add
			ADD X3, X3, #4
			SUB W11, W11, #1
			B cicloB

    add:	ADD W15, W15, #1
			B cicloA

	fim:	MOV W0, W15
			RET