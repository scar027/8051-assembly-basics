; program to calculate y where y = x^2 + 2x + 9. x is between 0 and 9 and
; the look-up table for x2 is located at the address (code space) of 200H. Register
; R0 has the x, and at the end of the program R2 should have y.

ORG 0000H
	MOV A, #01H
	MOV R0, A ; x in RO
	MOV DPTR, #200H
	MOVC A, @A+DPTR
	MOV R1, A ; x^2 in R1
	CLR A
	ADD A, R0
	ADD A, R0
	MOV R4, A ; 2x in R2
	
	MOV R3, #09H
	ADD A, R3 ; 2x + 9
	ADD A, R1 ; x^2 + 2x + 9
	MOV R2, A ; y 
	
	
	
	ORG 200H
		SQUARES: DB 00H, 01H, 04H, 09H, 10H, 19H, 24H, 31H, 40H, 51H
	END