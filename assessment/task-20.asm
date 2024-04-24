; program to print HELLO on the 6th position of the first line of the LCD and 
; then print HELLO backwards on the 6th position of the second line 
; P1.0-P1.7 are connected to LCD data pins D0-D7 
; P2.0 is connected to RS pin of LCD 
; P2.1 is connected to R/W pin of LCD 
; P2.2 is connected to E pin of LCD

ORG 0000H
	MOV A, #38H
	ACALL CMDWRT
	ACALL DELAY
	MOV A, #01H
	ACALL CMDWRT
	ACALL DELAY
	
	P1:MOV A, #86H
	ACALL CMDWRT
	ACALL DELAY
	MOV DPTR, #300H
	
	L1:CLR A
	MOVC A, @A+DPTR
	JZ HERE
	ACALL DATAWRT
	ACALL DELAY
	INC DPTR
	SJMP L1
	
	P2:MOV A, #0C6H
	ACALL CMDWRT
	ACALL DELAY
	MOV R3, #04H
	MOV DPTR, #300H
	L2:MOV A, R3
	MOVC A, @A+DPTR
	ACALL DATAWRT
	ACALL DELAY
	DJNZ R3, L2
	
	
	HERE: SJMP HERE
	
	CMDWRT:MOV P1, A
	CLR P2.0
	CLR P2.1
	SETB P2.2
	CLR P2.2
	RET
	
	DATAWRT:MOV P1, A
	SETB P2.0
	CLR P2.1
	SETB P2.2
	CLR P2.2
	RET
	
	DELAY:MOV R5, #0FFH
	AGAIN: NOP
	MOV R4, #0FFH
	H1:DJNZ R4, H1
	DJNZ R5, AGAIN
	RET
			
			
	ORG 300H
		MYDATA: DB "HELLO",0
	
	END