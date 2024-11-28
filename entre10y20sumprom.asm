#SimuProc 1.4.3.0
; Programa Seleccion de un numero entre rangos

msg '*******************************'
msg '1. De un numero'
msg '0. Salir'
ldt 'Digite un numero'
cmp A02
jeq C00
cmp A01
jeq D00
hlt


#A01
1 ; Comparar la opcion
0 ; Para salir

#B01
1010 ; Numero 10 en binario
10100 ; Numero 20 en binario

#C00
msg 'Salgo del programa'
lda 025
eap 'Su ultima suma dio:'
lda 026
eap 'Total de numeros introducidos:'
lda 025
div 026
eap 'Su promedio es:'
msg 'Tenga un buen dia'
hlt

#D00
ldt 'Digite un numero entre 10 y 20'
cmp B01
jme DA0 ; Si numero  < 10 vaya a DA0
jma DB0 ; Si numero  > 10 vaya a DB0

#DA0
msg 'Numero menor a 10, FUERA DE RANDO'
jmp 000

#DB0
cmp B02
jme DC0 ; Si numero  < 20 vaya a DC0
jma DBA ; Si numero  > 20 vaya a DBA
hlt


#DBA
msg 'Numero mayor a 20, FUERA DE RANDO'
jmp 000

#DC0
msg 'Su numero esta dentro del rando y sera sumado'
add 025
sta 025
eap 'Suma actual'
lda 026
add 027
sta 026
eap 'A introducido este total de numeros:'
jmp 000


#025
0

#026
0

#027
1
