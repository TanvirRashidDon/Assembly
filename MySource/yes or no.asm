.MODEL SMALL
.STACK 100H
.DATA
    MSG DB "PRESS Y/y TO CONTINUE : ? $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'Y'
    JE RUN
    CMP AL,'y'
    JE RUN
    JNE END_IF  ; or JUMP
    
    RUN:
       MOV AH,1
       INT 21H
    
    END_IF: 
       MOV AH,4CH
       INT 21H
    
MAIN ENDP
    END MAIN



