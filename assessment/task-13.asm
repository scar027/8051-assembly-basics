; program using timer 0 to generate a 500 Hz square wave frequency on
; one of the pins of P1. 

ORG 0000H
	MOV TMOD, #01H
	L1:MOV TL0, #66H
	MOV TH0, #0FCH
	CPL P1.0
	ACALL DELAY
	SJMP L1
	
	DELAY:SETB TR0
	MONITOR:JNB TF0, MONITOR
	CLR TR0
	CLR TF0
	RET
	
	END