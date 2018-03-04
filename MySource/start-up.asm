
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

 
.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'HELLO!'
.CODE
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

ret




