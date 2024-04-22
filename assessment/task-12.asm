; write a program to get a byte of data from P1 and send it to
; P0 and P2. Also, give a copy of it to registers R0, R1, and R2.

ORG 0000H
	MOV P1,#0FFH
	MOV A,P1
	MOV P0,A
	MOV P2,A
	MOV R0,A
	MOV R1,A
	MOV R2,A
	END