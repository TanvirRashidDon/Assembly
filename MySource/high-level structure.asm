.MODEL SMALL
.STACK 100H
.DATA                                       
   MSG   DB 'TYPE A LINE OF TEXT',0DH,0AH,'$'
   MSG1  DB 0DH,0AH,'First Capital -> $'
   MSG2  DB 0DH,0AH,'Last Capital -> $' 
   FIRST DB 'Z'
   LAST  DB 'A'
.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   MOV AH,9
   LEA DX,MSG
   INT 21H
   
   MOV AH,1 
   REPET:
      INT 21H
      CMP AL,0DH
      JE END
      CMP AL,96
      JG REPET
      CMP FIRST,AL
      JG  SMALLER
      CMP AL,LAST
      JG  BIGGER
      SMALLER:
         MOV FIRST,AL
         
      BIGGER:
         MOV LAST,AL
      
      JMP REPET
        
   END:
      MOV AH,9
      LEA DX,MSG1
      INT 21H
       
      MOV DL,FIRST
      MOV AH,2
      INT 21H
      
      MOV AH,9
      LEA DX,MSG2
      INT 21H  
      
      MOV DL,LAST
      MOV AH,2
      INT 21H
      
   MOV AH,4CH
   INT 21H
   
MAIN ENDP
   END MAIN
