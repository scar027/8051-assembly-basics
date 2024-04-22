; a program using timer 1 to generate a 1 kHz square wave frequency on
; one of the pins of P1.

ORG 0000H
	MOV TMOD,#10H
	HERE:MOV TL1,#33H
	MOV TH1,#0FEH
	CPL P1.0
	ACALL DELAY
	SJMP HERE
	DELAY: SETB TR1
	AGAIN: JNB TF1,AGAIN
	CLR TR1
	CLR TF1
	RET
	END