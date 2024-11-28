; Programa manejo de direcciones
; fecha 19/09/2024
;autor mi mama
;****************
ldt 'digite primer numero'
sta 0A1
ldt 'digite segundo numero'
sta 0A2
mov 0B1,0A1
mov 0B2,0A2
hlt

#0C3
0100
#0C4
1111
