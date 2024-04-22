; Write and assemble a program to toggle all the bits of P0, P1, and P2
; continuously by sending 55H and AAH to these ports. Put a time delay between
; the "on" and "off" states

ORG 0000H
	HERE : MOV P0,#55H
	MOV P1,#55H
	MOV P2,#55H
	ACALL DELAY
	MOV P0,#0AAH
	MOV P1,#0AAH
	MOV P2,#0AAH
	ACALL DELAY
	SJMP HERE
	
	DELAY : MOV R1,#04H
	BACK: MOV R2,#20H
	AGAIN:DJNZ R2, AGAIN
	DJNZ R1,BACK
	RET
	END