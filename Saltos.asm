#SimuProc 1.4.2.0
msg '******* Menu *********'
msg 'Suma(1)'
msg 'Resta(2)'
msg 'Multiplicacion(3)'
msg 'Division(4)'
msg 'Cierre el programa (5)'

ldt 'Digite una opcion'

cmp B04
jeq F00

hlt



#B00
1; Opcion 1
10; Opcion 2
11; Opcion 3
100; Opcion 4
101; Opcion 5

#F00
msg 'Voy a salir, adios'
hlt

#D00
msg 'Opcion de suma'
ldt 'Digite un dato'
sta 0B0
ldt 'Digite otro dato'
add 0B0
eap 'La suma es'
001
