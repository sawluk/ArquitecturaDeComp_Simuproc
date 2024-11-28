#SimuProc 1.4.2.0
msg '******* Menu *********'
msg 'Suma(1)'
msg 'Resta(2)'
msg 'Multiplicacion(3)'
msg 'Division(4)'
msg 'Cierre el programa (5)'
ldt 'Digite una opcion'

cmp B00 ; Suma
jeq F0A
cmp B01 ; Resta
jeq FA0
cmp B02 ; Multiplicacion
jeq FB0
cmp B03 ; Division
jeq FC0
cmp B04 ; Salida
jeq F00

hlt

#B00
1 ; Opcion 1
10 ; Opcion 2
11; Opcion 3
100; Opcion 4
101; Opcion 5

#F00
msg 'Voy a salir, adios'
hlt

#F0A
msg 'Opcion de suma'
ldt 'Digite un dato'
sta 0B0
ldt 'Digite otro dato'
add 0B0
eap 'La suma es'
jmp 000 ; Regresa al menú

#FA0
msg 'Opcion de resta'
ldt 'Digite un dato'
sta 0C1
ldt 'Digite otro dato'
sta 0C2
lda 0C1
sub 0C2
eap 'La resta es'
jmp 000 ; Regresa al menú

#FB0
msg 'Opcion de multiplicacion'
ldt 'Digite un dato'
sta 0B0
ldt 'Digite otro dato'
mul 0B0
eap 'La multiplicacion es'
jmp 000 ; Regresa al menú

#FC0
msg 'Opcion de division'
ldt 'Digite un dato'
sta 0B0
ldt 'Digite otro dato'
sta 0B1
lda 0B0
div 0B1
eap 'La division es'
jmp 000 ; Regresa al menú
