.MODEL SMALL
.STACK 100H
.DATA
    CR EQU 0DH
    LF EQU 0AH
    MSG1 DB "ENTER FIRST NUMBER: $"
    MSG2 DB 0DH,0AH,"ENTER SECOND NUMBER: $"
    MSG3 DB 0DH,0AH,"THE SUM OF $"
    MSG4 DB " AND $"
    MSG5 DB " IS : $"
    NUM1 DB ?
    NUM2 DB ?
    
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV NUM1,AL 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV NUM2,AL
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
     
    MOV DL,NUM1
    MOV AH,2
    INT 21H 
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H 
    
    MOV DL,NUM2
    MOV AH,2
    INT 21H 
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H 
    
    
    MOV AL,NUM1
    ADD NUM2,AL
    SUB NUM2,30H
    
    MOV DL,NUM2
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN

