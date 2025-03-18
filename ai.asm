asect 0x00
setsp 0xf0

L4:
    ldi r1, 0xf4
    ld r1, r1
    if 
        tst r1
    is z
        ldi r2, 15
        ldi r0, 0xf1
        st r0, r2
        br L4
    fi

    ldi r1, 0xf2
    ldi r2, 0xf3
    ld r1, r1
    ld r2, r2

    move r1, r3
    ldi r0, 0x20
    and r0, r3

    if 
        tst r3
    is nz
        move r2, r3
        ldi r0, 0x1F
        and r0, r2
        ldi r0, 0x1D
        sub r1, r0
        shra r1
        add r1, r2
    else
        ldi r2, 15
    fi

    ldi r0, 0xf1
    st r0, r2
    br L4

halt
end
