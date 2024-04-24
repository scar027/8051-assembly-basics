; program to get data from one port and send it to another port 
; continuously while an interrupt will do the following: One of the timers will 
; toggle the P2.1 bit every 100 microseconds.


ORG 0000H
	LJMP MAIN
ORG 000BH
	CPL P2.1
	RETI
ORG 0030H
	MAIN: MOV TMOD, #02H
	MOV P0, #0FFH
	MOV TH1, #0A3H
	MOV IE, #10000010B
	SETB TR0
	BACK: MOV A, P0
	MOV P1, A
	SJMP BACK
	END
		