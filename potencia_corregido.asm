#SimuProc 1.4.3.0
msg 'Programa potencia'
ldt 'Digite el valor de la base'
sta A00
ldt 'Digite el valor del exponente'
sta A01
lda B00
mov CX,A01   ;ciclo de la potencia
mul A00
sta A02       ;direccion de memoria donde se almacena el resultado
loop 007
lda A02
eap 'el resultado es'
hlt


#B00
1

