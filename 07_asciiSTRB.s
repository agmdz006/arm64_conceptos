//Enunciado:
//vamos a tener en la sección de variables (.data) una variable 'a' y otro 's'
//la variable 'a' va a almacenar el valor ascii pero será inicializada en cero
//la variable 's' almacenará un .string "hola" en donde se accederá al ASCII de la 'a'
//-
//usaremos strb que significa: STore Register Byte (strb), solamente almacenamos 1 byte


.global _start

.data
a: .word 0
s: .string "Hola"

.text
_start:
	ldr x1, =s	//puntero x1 que apunta a la dir. de memoria de la variable 's'
	ldr x2, [x1, #3]//cargamos en x2 pero medio de un offset 3 la letra 'a'
	ldr x3, =a	//puntero x3 que apunta a la dir. de memoria de a
	strb w2, [x3]	//la mitad de x2 se escribirá en la dirección de memoria de x3
	ldr x0, [x3]	//accedemos al dato de x3 (ASCII) y lo mostramos por el canal de slaida
	
	//syscall 93 para salida del programa
	mov x8, #93
	svc #0


//concepto clave, cuando vamos a almacenar 1 byte, los registros de memoria x0-x29 son 
//demasiado grandes para ese dato (almacenan 64 bits = 8 bytes) y arm64 no lo permite
//para ello usaremos registros 'w' que funciona de la misma manera que un registro
//tipo x0-x29 pero almacena la mitad de espacio (32 bits = 4 bytes) y así tenemos un
//mejor manejo de memoria y arm64 nos aceptará nuestra lógica
//otro dato a saber es que x2 y w2 son el mismo registro, solo que w2 vale la mitad de x2
//en este caso, w2 vale la mitad menos significativa del registro
//w2 = los 32 bits menos significativos del registro x2 (el ASCII del la letra 'a')
