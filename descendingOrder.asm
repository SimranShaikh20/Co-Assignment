MVI C,9H	
MVI D,09H

START:		LXI H,C050

LOOP:		MOV A,M
		INX H
		CMP M
		JC SWAP
		DCR C
		JZ NEXT
		JMP LOOP

SWAP:		MOV B,M
		MOV M,A
		DCX H
		MOV M,B
		INX H
		DCR C
		JZ NEXT
		JMP LOOP

NEXT:		DCR D
		JZ END
		MOV C,D
		JMP START
	
END:		HLT

#ORG C050
#DB 0AH,O9H,O8H, 07H, 06H, 05H, 04H, 03H, 02H, 01H
