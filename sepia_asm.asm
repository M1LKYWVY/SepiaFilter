section .data
coefficients: dd 0.189, 0.168, 0.131, 0.543, 0.769, 0.686, 0.543, 0.769, 0.393, 0.349, 0.272, 0.393, 0.168, 0.131, 0.189, 0.168, 0.686, 0.543, 0.769, 0.686, 0.349, 0.272, 0.393, 0.349, 0.131, 0.189, 0.168, 0.131, 0.543, 0.769, 0.686, 0.543, 0.272, 0.393, 0.349, 0.272, 0.393, 0.349, 0.272, 0, 0.769, 0.686, 0.543, 0, 0.189, 0.168, 0.131, 0
section .text

global sepia_asm
;rdi - pointer to a array of pixels
;rsi quantity of pixels
sepia_asm:
;save callee saved regosters which we need to use
push r12
push r13
push r14
push r15
;mov r10, 0
;r11 is executing role of counter if we can say so
;we can have only 3 situations:
;0 - xmm0:b1b1b1b2 won't describe xmm1 and xmm2, they're similiar like xmm0 only with red or blue colors
;1 - xmm0:b2b2b3b3
;2 - xmm0:b3b4b4b4
;in this situations we operate with coefficients and with digits in [rdi] in different ways
;if it is a bit difficult, can write it in details. Just email about it.
mov r11, 0
;mov r12, 0
;mov r13, 0
;mov r14, 0
;mov r15, 0
iterate:
;rcx is counter
cmp rcx, 0
je finish
;we need to get number of our situation
cmp r11, 1
je firstiteration
jb zeroiteration
ja seconditeration
zeroiteration:
mov r10, 0
mov r12, 3
mov r13, 0
mov r14, 0
mov r15, 0
;prepare for second situation
inc r11
jmp logic
firstiteration:
;skip 12 coefficients
mov r10, 48
mov r12, 3
mov r13, 3
mov r14, 0
mov r15, 0
;prepare for cesond situation
inc r11
jmp logic
seconditeration:
;skip 12 coefficients
mov r10, 96
mov r12, 3
mov r13, 3
mov r14, 3
mov r15, 0
;prepare for first situation
mov r11, 0
logic:
;loading coefficients
movups xmm3, [coefficients+r10]
movups xmm4, [coefficients+r10+16]
movups xmm5, [coefficients+r10+32]
;blue
;loading digits of colors
pinsrb xmm0, [rdi+r12], 0
pinsrb xmm0, [rdi+r13], 1
pinsrb xmm0, [rdi+r14], 2
pinsrb xmm0, [rdi+r15], 3
cvtdq2ps xmm0, xmm0
mulps xmm0, xmm3
;green
pinsrb xmm1, [rdi+r12+1], 0
pinsrb xmm1, [rdi+r13+1], 1
pinsrb xmm1, [rdi+r14+1], 2
pinsrb xmm1, [rdi+r15+1], 3
cvtdq2ps xmm1, xmm1
mulps xmm1, xmm4
;red
pinsrb xmm2, [rdi+r12+2], 0
pinsrb xmm2, [rdi+r13+2], 1
pinsrb xmm2, [rdi+r14+2], 2
pinsrb xmm2, [rdi+r15+2], 3
cvtdq2ps xmm2, xmm2
mulps xmm2, xmm5
;sum all registers
addps xmm0, xmm1
addps xmm1, xmm2
;convert to integers
cvtps2dq xmm0, xmm0
;checking for 255 and load them to [rdi]
pextrd eax, xmm0, 3
cmp rax, 255
jb ok3
mov al, byte 0xff
ok3:
mov [rdi+3], al
pextrd eax, xmm0, 2
cmp rax, 255
jb ok2
mov al, byte 0xff
ok2:
mov [rdi+2], al
pextrd eax, xmm0, 1
cmp rax, 255
jb ok1
mov al, byte 0xff
ok1:
mov [rdi+1], al
pextrd eax, xmm0, 0
cmp rax, 255
jb ok0
mov al, byte 0xff
ok0:
mov [rdi], al

;incrementing pointer to [rdi] to modify next 4 colors
add rdi, 4
;subtracting counter
sub rcx, 4
jmp iterate
finish:
pop r15
pop r14
pop r13
pop r12
ret
