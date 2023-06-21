CODE SEGMENT
    ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
    
    PPIC_C EQU 1FH
    PPIC EQU 1DH
    PPIB EQU 1BH
    PPIA EQU 19H
    
    ORG 1000H
    
    MOV AL,80H
    OUT PPIC_C,AL
    
       LEV:
 MOV AL,00010000B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,00000000B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,01111000B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,00000010B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,00010010B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,00011001B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,00110000B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,00100100B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,011111001B
 OUT PPIA,AL
 CALL DELAY
  MOV AL,01000000B
 OUT PPIA,AL
 CALL DELAY 
 
 JMP LEV
    
    DELAY:
    MOV CX,0FFFFH
    TIME:
    NOP
    NOP
    NOP
    NOP
    LOOP TIME  
    RET
    
    CODE ENDS
END