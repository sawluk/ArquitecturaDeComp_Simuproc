#SimuProc 1.4.3.0
; Programa para calcular la velocidad lineal
; Fecha: 19/09/2024
; Autor: mi mama
; ****************

ldt 'Digite el radio del círculo'   ; Solicita el radio
sta 0A0                             ; Guarda el radio en la dirección 0A0
ldt 'Digite la frecuencia (Hz)'     ; Solicita la frecuencia
sta 0A1                             ; Guarda la frecuencia en la dirección 0A1

lda 0A0                             ; Carga el valor del radio
mul 0A1                             ; Calcula r * f y guarda el resultado en AX
mov 0A2,AX                         ; Guarda r * f en la dirección 0A2

ldt 6.28                            ; Carga el valor aproximado de 2 * pi (6.28)
mul 0A2                             ; Multiplica (2 * pi) * (r * f)
mov 0A3,AX                         ; Guarda la velocidad lineal en la dirección 0A3

eap 'La velocidad lineal es: '      ; Muestra el mensaje
hlt

                                ; Dirección para almacenar la velocidad lineal

