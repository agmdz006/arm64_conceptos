//Enunciado:
//usaremos la etiqueta str que significa storage register 
//empezaremos a ver secciones para datos no inicializados .bss
//donde reservaremos espacios en blanco indicando el tamanio deseado (bytes)


.global _start

.data
a: .word 1

.bss            //seccion para datos no inicializados
b: .space 8     //el '.space' sirve para guardar un espacio en blanco (8 bytes)

.text
_start:
        ldr x1, =a      //puntero x1 que apunta a la variable 'a'
        ldr x2, [x1]    //cargamos en x2 el valor de la variable que apunta x1
        ldr x3, =b      //asignamos el espacio de b en el registro x3
        str x2, [x3]    //almacenamos el valor de x3 en el registro x2 (b = a)
        ldr x0, [x3]    //asignamos el valor de x3 en el canal de stdout (x0)

        //salida del programa con syscall 93
        mov x8, #93
        svc #0
