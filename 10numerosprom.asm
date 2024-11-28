#SimuProc 1.4.3.0
; Programa Seleccion de un numero entre rangos

msg '*******************************'
msg 'Introduzca 10 numeros y obtendra su promedio'
mov CX,026
ldt 'Digite un numero'
add 025
sta 025
lda 027
add 028
sta 027
msg 'Numero registrado, prosiga'
loop 003
lda 025
eap 'El total de numeros es'
div 027
eap 'Su promedio es'
hlt



#025
0

#026
1010

#027
0

#028
1
