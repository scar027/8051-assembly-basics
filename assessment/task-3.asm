; "VIT UNIVERSITY"

ORG 0000H
	MOV A, #00H ; clear accumulator
	MOV DPTR,#0200H; Load 200h in DPTR which will act as source pointer
	MOV R7,#0EH; The length of the string is loaded in R1 register
	MOV R0,#40H; Load the destination pointer in R0 register
	LOOP: CLR A
	MOVC A, @A+DPTR; Move from ROM to Accumulator
	MOV @R0,A; Move from Accumulator to RAM
	INC DPTR
	INC R0
	DJNZ R7, LOOP ; Decrement the count and check for zero
	HERE: SJMP HERE
	
	
	ORG 0200H
	DB "VIT UNIVERSITY"
	END