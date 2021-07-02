.text
.global PRODINT
.type PRODINT,"function"

// x0 = endereço de v1
// x1 = endereço de v2
// w2 = tamanho dos vetores
PRODINT: eor  x5, x5, x5  // somatório inicial
ciclo:   cbz  w2, fim
		 ldr  w9, [x0]
		 ldr  w10, [x1]
		 smaddl x5, w9, w10, x5
		 add  x0, x0, 4
		 add  x1, x1, 4
		 sub  w2, w2, 1
		 b    ciclo
fim:     mov  x0, x5
         ret		