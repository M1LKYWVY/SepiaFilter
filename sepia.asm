section .data
	firstiter: dd 0.393, 0.349, 0.272, 0.393, 0.769, 0.686, 0.543, 0.769, 0.189, 0.168, 0.131, 0.543
	seconditer: dd 0.349, 0.272, 0.393, 0.349, 0.686, 0.543, 0.769, 0.686, 0.168, 0.131, 0.189, 0.168
	thirditer: dd 0.272, 0.393, 0.349, 0.272, 0.543, 0.769, 0.686, 0.543, 0.131, 0.189, 0.168, 0.131
section .text
   global sepia_asm
;rdi - pointer to a array of pixels
;rsi quantity of pixels
    sepia_asm:
    push r9
    push r10
    push r11
    mov r9, rsi
    div r9, 4
    sub rsi, r9
    iterate:
    movq xmm0, 0
    movq xmm1, 0
    movq xmm2, 0
    movups xmm3, [rel coef]
    movups xmm4, [rel coef+16]
    movups xmm5, [rel coef+32]

