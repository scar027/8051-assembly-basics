; program to: Set SP = 0D, 
; (b) Put a different value in each of RAM locations 0D, 0C, 0B, 0A, 09, and 08, 
; (c) POP each stack location into registers R0 - R4.

ORG 0000H
	MOV SP, #0DH
	MOV 0DH, #01H
	MOV 0CH, #02H
	MOV 0BH, #03H
	MOV 0AH, #04H
	MOV 09H, #05H
	MOV 08H, #06H
	
	POP 0
	POP 1
	POP 2
	POP 3
	POP 4
	
	HERE: SJMP HERE
	
	END