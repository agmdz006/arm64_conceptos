.global _start

//ENUNCIADO

//Por medio de la directiva '.equ' cargar un valor cualquiera a una etiqueta
//y cargarla en el registro x0 para mostrarla en la consola al ejecutar el programa


.equ VALOR_ASIGNADO, 100	//directiva .equ con la etiqueta VALOR_ASIGNADO = 100


//.text = inicio de instrucciones a realizar
.text
_start:
	mov x0, VALOR_ASIGNADO		//asignamos la etiqueta al registro x0 para mostrarla

	//syscall de llamada al sistema para salir del programa
	mov x8, #93
	svc #0
