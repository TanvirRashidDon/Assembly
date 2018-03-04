.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'ENTER 1 TO 9 => $' 
   
    
.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   LEA DX,MSG
   MOV AH,9 
   INT 21H
   
   MOV AH,1
   INT 21H
   SUB AL,48
   MOV AH,0         
   
  
   MOV CX,AX
   MOV AH,2       
   MOV DL,'*'
   
   TOP:
        INT 21H
        LOOP TOP
   
   MOV AH,4CH
   INT 21H                    

MAIN ENDP
   END MAIN




