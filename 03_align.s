.global _start

//ENUNCIADO:
// Vamos a hacer uso de  alineación (align) por defecto
//cada instrucción en arm64 ocupa 32 bits = 4 bytes
//por defecto arm64 alinea a 4 bytes la eiqueta b de tipo .word

.data
.align 4
b: .word 1, 2

.text
_start:
	mov x8, #93
	svc #0



//salida del código al hacer objdump -s 03_align:
//----------------------------------------------------------------------
//03_align:     formato del fichero elf64-little
//Contenido de la sección .text:
// 4000b0 a80b80d2 010000d4                    ........
//Contenido de la sección .data:
// 4100c0 01000000 02000000                    ........
//----------------------------------------------------------------------


//este script retornará cero ya que no se le asigna un valor de retorno en x0
//el objetivo de este código fue declarar una variable tipo word que almacenará
//dos numeros de  8 bits c/u = 1 byte c/u
//al hacer objdump -s 03_align.s se verá un apartado de los bytes por cada sección
//la opción -s  muestra las secciones del archivo en hexadecimal y ASCII
