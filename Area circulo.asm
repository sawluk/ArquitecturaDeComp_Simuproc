; Programa para calcular el �rea de un c�rculo
; Fecha: 19/09/2024
; Autor: mi mama
; ****************

ldt 'Digite el radio del circulo'  ; Solicita el radio
sta 0A0                             ; Guarda el radio en la direcci�n 0A0
lda 0A0                             ; Carga el valor del radio
mul 0A0                             ; Calcula el radio^2 y guarda el resultado en AX                         ; Guarda el resultado del radio^2 en la direcci�n 0A1
mul 0B1                            ; Carga el valor aproximado de pi (3.14)                             ; Multiplica pi por radio^2                         ; Guarda el �rea en la direcci�n 0A2
eap 'El �rea es: '                  ; Muestra el mensaje
hlt
                                  ; Direcci�n para almacenar el �rea



#0B1
11

