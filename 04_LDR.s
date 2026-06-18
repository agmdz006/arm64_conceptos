//Enunciado:
//usaremos ldr con un registro x para apuntar a la dirección de memoria de un arreglo
//ldr = load register

.global _start

.data
array1: .word 1, 2, 3

.text
_start:
	ldr x1, =array1		//cargamos la dirección de memoria del arreglo en x1
	ldr x0, [x1]		//cargamos el primer valor de x1 en el registro de salida
	
	mov x8, #93
	svc #0
