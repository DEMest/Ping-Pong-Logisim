asect 0x00
main:
ldi r1,0xf1
ld r1,r1
if 
	tst r1
is nz
	ldi r0,0xf5
	ldi r1,127
	st r0,r1
	br main
fi
ldi r0,0xf2
ld r0,r0
neg r0
ldi r1,0xe4
add r0,r1
shra r1
ldi r0,127
and r0,r1
ldi r0,0xf4
ld r0,r0
ldi r2,0
ldi r3,0xf3
ld r3,r3
if 
	tst r0
is z
	br cont
fi
if 
	tst r0
is mi
	neg r1
	add r1,r3
	bcs cont
	blt col
else
	add r1,r3
	bcs col
fi
cont:
ldi r2,0xf6
ld r2,r2
if 
	tst r2
is z
	ldi r0,-16
	move r3,r2
	add r0,r2
	bcs r
	br next
	r:
	add r0,r3
fi
next:
ldi r0,240
move r3,r2
sub r2,r0
bcs carr
ldi r1,0xf5
st r1,r3
br main
halt
col:
	neg r3
	dec r3
	br cont
carr:
	ldi r0,-8
	add r0,r3
	br next
end