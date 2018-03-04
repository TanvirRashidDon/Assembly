TITLE PGM4_2: PRINT STRING PROGRAM
.MODEL SMALL
.STACK 100H
.DATA
MSG DB "HELLO!$"
.CODE
MAIN PROC
;initialize DS
     MOV AX,@DATA
     MOV DS,AX
;display massage
     LEA DX,MSG
     MOV AH,9
     INT 21H
;return to dos
     MOV AH,4CH
     INT 21H
MAIN ENDP
     END MAIN