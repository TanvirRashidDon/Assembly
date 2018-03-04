.MODEL SMALL
.STACK 100H
.DATA
    CR EQU 0DH
    LF EQU 0AH
    MSG1 DB 0DH,0AH,'ENTER A HEXA CHARECTER TO CONVERT INTO DECIMAL : ',0DH,0AH,'$'
    MSG2 DB 0DH,0AH,'ENTER A VELID CHARECTER ........!!!!',0DH,0AH,'$'
    MSG3 DB 0DH,0AH,'WHY DONT YOU UNDERSTAND?',0DH,0AH,'$'
    MSG4 DB 0DH,0AH,'PRESS Y TO DO IT AGAIN ',0DH,0AH,'$'
    MSG5 DB ' = ','$'
    N10  DB '10',0DH,0AH,'$'
    N11  DB '11',0DH,0AH,'$'
    N12  DB '12',0DH,0AH,'$'
    N13  DB '13',0DH,0AH,'$'
    N14  DB '14',0DH,0AH,'$'
    N15  DB '15',0DH,0AH,'$'
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
PROG:
    MOV CX,0    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    MOV AH,1
    INT 21H
    
        
       CMP AL,'0'
       JGE LEAVE
    LEAVE:
       CMP AL,'9'
       JLE PRINT_D
       JG PRINT_C
    PRINT_D:
       MOV AH,2
       MOV DL,AL
       INT 21H
       JMP AGAIN
       
    PRINT_C:
       MOV AH,9
       CMP AL,'A'
       JNE PRINT_11 
       
       LEA DX,N10
       INT 21H
       JMP AGAIN
    
    PRINT_11:   
       CMP AL,'B'
       JNE PRINT_12
    
       LEA DX,N11
       INT 21H
       JMP AGAIN
    
    PRINT_12:   
       CMP AL,'C'
       JNE PRINT_13
    
       LEA DX,N12
       INT 21H
       JMP AGAIN
    
    PRINT_13:   
       CMP AL,'D'
       JNE PRINT_14
       
       LEA DX,N13
       INT 21H
       JMP AGAIN
    
    PRINT_14:   
       CMP AL,'E'
       JNE PRINT_15
   
       LEA DX,N14
       INT 21H
       JMP AGAIN    
    
    PRINT_15:   
       CMP AL,'F'
       JNE CHAKE
    
       LEA DX,N15
       INT 21H
       JMP AGAIN
    CHAKE:
       LEA DX,MSG2
       INT 21H
       INC CX
       CMP CX,3
       JE END_IF
       JMP PROG
    
    END_IF:
        LEA DX,MSG3
        INT 21H
    END_P:
        MOV AH,4CH
        INT 21H
    AGAIN:
        MOV AH,9
        LEA DX,MSG4
        INT 21H
        MOV AH,1
        INT 21H
        CMP AL,'Y'
        JE PROG
        JMP END_P
        
    
MAIN ENDP
    END MAIN   



