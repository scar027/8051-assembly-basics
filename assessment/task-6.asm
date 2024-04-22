; program to load values into each of registers R0 - R4 and
; then push each of these registers onto the stack and pop them back.

ORG 0000H
	MOV R0,#25H
	MOV R1,#35H
	MOV R2,#45H
	MOV R3,#55H
	MOV R4,#65H
	PUSH 0
	PUSH 1
	PUSH 2
	PUSH 3
	PUSH 4
	POP 4
	POP 3
	POP 2
	POP 1
	POP 0
	HERE:SJMP HERE
	END