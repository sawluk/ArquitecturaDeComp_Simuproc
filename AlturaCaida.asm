#SimuProc 1.4.3.0
msg 'Formula de la altura en caida libre, recuerde:'
msg ' h = (g * t^2)/2'

ldt 'Digite el tiempo (t) en segundos:'
sta B00  ; Almacenar t en B00

lda B00      ; Cargar t
mul B00      ; Multiplicar t por t (t^2)
mul B05      ; Multiplicar g (10) por t^2
div B06      ; Dividir (g * t^2) entre 2

msg 'La altura en caida libre es:'
eap           ; Mostrar el resultado en pantalla
hlt           ; Detener la ejecución

#B05
1010 ; 10 en binario (gravedad)
#B06
10   ; 2 en binario (divisor)
