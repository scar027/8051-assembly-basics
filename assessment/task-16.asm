; program to transfer “HELLO” through serial port at 9600 baudrate continuously.

ORG 0000H
	XX: MOV DPTR,#MYDATA
	MOV TMOD,#20H ; Timer 1 Mode 2
	MOV TH1,#-3 ; since 28800/3 = 9600
	MOV SCON,#50H
	SETB TR1
	
	AGAIN:CLR A
	MOVC A,@A+DPTR
	JZ XX
	MOV SBUF,A
	HERE: JNB TI,HERE
	CLR TI
	INC DPTR
	DJNZ R1,AGAIN
	SJMP XX
	
	
	ORG 200H
		MYDATA: DB "HELLO",0
	END