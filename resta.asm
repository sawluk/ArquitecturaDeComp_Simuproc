; Programa manejo de direcciones
; fecha 19/09/2024
;autor mi mama
;****************
ldt 'digite primer numero'
sta 0A0
ldt 'digite segundo numero'
sta 0A1
lda 0A0
sub 0A1
mov 0A2,AX
eap 'La resta es: '

mov 0B0,0A0
mov 0B1,0A1
mov 0B2,0A2
hlt


