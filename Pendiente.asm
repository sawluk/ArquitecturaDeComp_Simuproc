#SimuProc 1.4.3.0
msg 'Formula de la pendiente, recuerde:'
msg ' m = (Y2-Y1)/(X2-X1)'

ldt 'Digite Y1:'
sta A00  ; Almacenar Y1 en A00
ldt 'Digite Y2:'
sta A01  ; Almacenar Y2 en A01
ldt 'Digite X1:'
sta A02  ; Almacenar X1 en A02
ldt 'Digite X2:'
sta A03  ; Almacenar X2 en A03

; Calcular Y2 - Y1
lda A01      ; Cargar Y2
sub A00      ; Restar Y1
sta A04      ; Almacenar el resultado (Y2 - Y1) en A04

; Calcular X2 - X1
lda A03      ; Cargar X2
sub A02      ; Restar X1
sta A05      ; Almacenar el resultado (X2 - X1) en A05

; Calcular m = (Y2 - Y1) / (X2 - X1)
lda A04      ; Cargar (Y2 - Y1)
div A05      ; Dividir (Y2 - Y1) entre (X2 - X1)
eap 'La pendiente m es:'
hlt



