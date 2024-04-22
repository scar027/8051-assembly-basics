; program to add 10 bytes of data and store the result in registers R2
; and R3. The bytes are stored in the ROM space starting at 200H.
; first bring the data from ROM space into the CPU's RAM, then add them together.

ORG 0000H
	MOV R1, #0AH
	MOV R3, #00H
	MOV DPTR, #200H
	
	L1:CLR A
	MOVC A, @A+DPTR
	ADD A, R3
	JNC L2
	INC R2 ; Register to account for overflow
	L2:MOV R3, A
	INC DPTR
	DJNZ R1, L1
	
	
	
	
	ORG 200H
		MYDATA: DB 22H, 43H, 23H, 34H, 31H, 77H, 91H, 33H, 43H, 07H
	END
