; Assume a room can accommodate 10 people. Write an 8051 program to count
; the number of people entering the room. If the count reaches 10 turn on LED.

ORG 0000H
	MOV TMOD, #01100000B ; Counter 1 Mode 2
	MOV TH1, #00H
	
	CLR P1.0; LED connected on P1.O
	SETB P3.5; Initializing P3.5 as input(counter)
	
	SETB TR1
	MONITOR:MOV A, TL1
	MOV P2, A ; Monitor number of counts through a port 
	CJNE A, #0AH, MONITOR
	SETB P1.0 ; Turn on LED

	END