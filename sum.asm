   LXI H,C050
		   MVI C,00
		   MOV A,M
		   INX H
		   ADD M
		   JNC AHEAD
		   INR C

AHEAD:	   STA C053
		   MOV A,C
		   STA C052
		   HLT

# ORG C050
# DB 89H,91H
