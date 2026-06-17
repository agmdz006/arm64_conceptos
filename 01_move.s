.global _start


//ENUNCIADO: INSTRUCCION 'MOVE'

_start:
	mov x0, #5	//cargamos el numero 5 al registro x0 (canal de salida)

	mov x8, #93	//syscall 93 = llamada al SO para salir del programa
	svc #0		//llamada al kernel para poder realizar la syscall

//fin del programa
