.MODEL SMALL
.STACK 100H
.DATA 
    MSG DB "ENTER 2 CHAR : $"
    NUM1 DB ?
    NUM2 DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX  
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV NUM1,AL
    
    MOV AH,1
    INT 21H
    MOV NUM2,AL
    
    MOV CL,NUM1
    MOV BL,NUM2
    
    CMP BL,CL
    JG PRINT
     
       MOV DL,BL
       MOV AH,2
       INT 21H
       MOV DL,CL
       MOV AH,2
       INT 21H 
    JMP END_IF
    
    PRINT:
       MOV DL,CL
       MOV AH,2
       INT 21H 
       MOV DL,BL
       MOV AH,2
       INT 21H
    
    END_IF:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
    
    




