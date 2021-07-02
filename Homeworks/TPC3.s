.text
.global Calculator
.type Calculator, "function"

Calculator:		EOR W12, W12, W12
				EOR W13, W13, W13
				EOR W11, W11, W11
				EOR W15, W15, W15
				EOR X14, X14, X14
				MOV W15, #1


	ciclo1:		CBZ W0, fim
				LDR W12, [X2]
				LDR W13, [X3]
				LDRB W11, [X1]
				CMP W11, '+'
				B.EQ soma
				CMP W11, '-'
				B.EQ subt
				CMP W11, '*'
				B.EQ mult
				CMP W11, 'P'
				B.EQ pot

	soma:		ADDS W13, W12, W13
				B.VS overYes
				B next

	subt:		SUBS W13, W13, W12
				B.VS overYes
				B next

	mult:		EOR X14, X14, X14
				SMULL X14, W13, W12
				B overM

	pot:		STP X29, X30, [SP, #-32]!
				STP X0, X1, [SP, #16]
				STP X2, X3, [SP, #-16]
				MOV X29, SP
				MOV W0, W13
				MOV W1, W12
				STR W15, [SP, #-32]
				BL power
				MOV W13, W0
				LDR W15, [SP, #-32]
				LDP X2, X3, [SP, #-16]
				LDP X29, X30, [SP], #16
				LDP X0, X1, [SP], #16
				CBZ W13, overYes
				B next


	overM:		MOV W13, W14
				ASR X14, X14, #31
				CBZ X14, next
				CMP X14, #-1
				B.EQ next
				B overYes

	next:		STR W13, [X3]
				ADD X3, X3, #4
				ADD X1, X1, #1
				ADD X2, X2, #4
				SUB W0, W0, #1
				ADD W15, W15, #1
				B ciclo1


	overYes:	MOV W0, W15
				RET

	fim:		MOV W0, #0
				RET
