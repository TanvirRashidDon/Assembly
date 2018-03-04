.MODEL SMALL
.STACK 100H
.DATA
    NL DB 0AH
    VARIABLE DB ? 
    
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    MOV CX,256
    MOV DL,0
    MOV BL,10
    
    TOP:
       INT 21H
       INC DL
       MOV VARIABLE,DL
       CMP DL,BL
       JE PRINT
       JMP SKIP
       
       PRINT:
          MOV DL,0AH
          INT 21H
          MOV DL,0DH
          INT 21H
          ADD BL,10
          MOV DL,VARIABLE  
       SKIP:
          LOOP TOP
 
    
END_IF:    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN




