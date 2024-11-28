#SimuProc 1.4.3.0
msg 'Programa potencia'
ldt 'Digite el valor de x'
sta C00 ; Valor X
ldt 'Digite el numero de iteracions'
sta B02 ; Exponente
lda B00
mov CX,B02
mul C00
sta B00
loop 007
msg 'Su numero x elevado a la n es;'
eap
ldt 'Digite el valor de M'
sta B03
mul B00
msg 'La multiplicacion m es'
eap
hlt


#B00
1 ; Resultado



