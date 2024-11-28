; Programa para calcular el área de un círculo
; Fecha: 19/09/2024
; Autor: mi mama
; ****************

ldt 'Digite el radio del circulo'  ; Solicita el radio
sta 0A0                             ; Guarda el radio en la dirección 0A0
lda 0A0                             ; Carga el valor del radio
mul 0A0                             ; Calcula el radio^2 y guarda el resultado en AX                         ; Guarda el resultado del radio^2 en la dirección 0A1
mul 0B1                            ; Carga el valor aproximado de pi (3.14)                             ; Multiplica pi por radio^2                         ; Guarda el área en la dirección 0A2
eap 'El área es: '                  ; Muestra el mensaje
hlt
                                  ; Dirección para almacenar el área



#0B1
11

