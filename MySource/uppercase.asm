.MODEL SMALL
.STACK 100H
.DATA 
    MSG DB "ENTER A CHAR : $"
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
    
    CMP AL,96
    JG END_IF
     
    MOV DX,AX
    MOV AH,2
    INT 21H
    
    
END_IF:
    MOV AH,4CH
    INT 21H  
    
MAIN ENDP
    END MAIN




