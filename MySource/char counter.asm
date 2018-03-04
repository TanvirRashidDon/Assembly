.MODEL SMALL
.STACK 100H
.DATA
    MSG DB "ENTER A STRING ( LENTH < 10) & PRESS SPACE :",0DH,0AH,"$" 
.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   LEA DX,MSG
   MOV AH,9
   INT 21H
   
   MOV CX,48
   MOV AH,1
   COUNTER:
      INT 21H
      INC CX
      CMP AL,' '
      JNE COUNTER
    
   MOV AH,2 
   MOV DL,CL
   INT 21H
   
   MOV AH,4CH
   INT 21H
   
MAIN ENDP
   END MAIN
   





