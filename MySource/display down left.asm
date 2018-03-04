.MODEL SMALL
.STACK 100H
.DATA
    CR EQU 0DH
    LF EQU 0AH
    
    MSG1 DB "ENTER THREE INTIALS : $"
    S1 DB ?
    S2 DB ?
    S3 DB ?

.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV S1,AL  
    
    MOV AH,1
    INT 21H
    MOV S2,AL
    
    MOV AH,1
    INT 21H
    MOV S3,AL
    
    MOV AH,2 
    
    MOV DL,0DH
    INT 21H    
    MOV DL,0AH
    INT 21H
    
    MOV DL,S1
    INT 21H
    
    MOV DL,0DH
    INT 21H    
    MOV DL,0AH
    INT 21H   
   
   
    MOV DL,S2
    INT 21H
    
    MOV DL,0DH
    INT 21H    
    MOV DL,0AH
    INT 21H
    
    MOV DL,S3
    INT 21H 
    
     
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
    
    
    


