; Programa manejo de direcciones
; fecha 19/09/2024
;autor mi mama
;****************
ldt 'digite la base del triangulo'
sta 0A0
ldt 'digite la altura del tri'
sta 0A1
lda 0A0
mul 0A1
mov 0A2,AX
div 0AA
eap 'La area es: '

hlt

#0AA
10


