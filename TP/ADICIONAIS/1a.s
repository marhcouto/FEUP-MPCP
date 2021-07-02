.text
.global SOMA_V
.type SOMA_V,"function"


// x0 = endereço de v
// w1 = tamanho do vetor (nº iterações)
SOMA_V: mov  w8, 0         // mov  x8, 0
ciclo:  cbz  w1, termina
		ldr  w2, [x0]      // ldr  x2, [x0]
		add  w8, w8, w2    // add  x8, x8, x2
		add  x0, x0, 4     // inc = 8
		sub  w1, w1, 1
		b    ciclo	
termina:mov  w0, w8        // mov  x0, x8
		ret