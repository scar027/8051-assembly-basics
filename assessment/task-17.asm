; program to receive a data from serial port at 9600 baud rate and
; transmit through parallel port.

ORG 0000H
	MOV TMOD,#20H
	MOV TH1,#-3
	MOV SCON,#50H
	SETB TR1
	HERE:JNB RI,HERE
	MOV A,SBUF
	MOV P1,A
	CLR RI
	SJMP HERE
END