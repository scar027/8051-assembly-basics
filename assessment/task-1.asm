; program to add 5 numbers 
; 92H, 23H, 66H, 87H, 0F5H
; use the simulator to examine the CY flag

ORG 0000H
	MOV A, #92H
	MOV B, #23H
	ADD A,B
	
	JNC L1
	INC R1
	L1: MOV B, A
	MOV A, #66H
	ADD A, B
	JNC L2
	INC R1
	L2: MOV B, A
	MOV A, #87H
	ADD A, B
	JNC L3
	INC R1
	L3: MOV B, A
	MOV A, #0F5H
	ADD A, B
	MOV R0, A
	JNC HERE
	INC R1
	HERE: SJMP HERE
	
	END