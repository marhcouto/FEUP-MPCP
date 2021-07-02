.text
.global PRODINT_OVF
.type PRODINT_OVF,"function"

// x0 = endereço de v1
// x1 = endereço de v2
// w2 = tamanho dos vetores
PRODINT_OVF: eor  x5, x5, x5  // somatório inicial
ciclo:   cbz  w2, fim
		 ldr  w9, [x0]
		 ldr  w10, [x1]
		 smaddl x5, w9, w10, x5
		 		 
		 // deteção de overflow
		 asr  x12, x5, 31
		 cbz  x12, segue
		 cmp  x12, -1
		 beq  segue
		 mov  w0, -1    // 111...1111 >> 1  ===>  011...1111
		 lsr  w0, w0, 1 //MAX_INT
		 ret
		 	 
segue:   add  x0, x0, 4
		 add  x1, x1, 4
		 sub  w2, w2, 1
		 b    ciclo
fim:     mov  x0, x5
         ret