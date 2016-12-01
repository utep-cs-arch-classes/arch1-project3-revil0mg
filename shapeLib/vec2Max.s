	.arch msp430g2553
	.text
	.global vec2Max

vec2Max:
	mov.b #0, r5 ;axis
loop:
	cmp.b #2, r5
	JGE endLoop
	add r5, r5
	mov r12, r6
	mov r13, r7
	mov r14, r8
	add r5, r6 ;vecMax -> axes[axis]
	add r5, r7
	add r5, r8
	mov @r7, r9
	mov @r8, r10
	cmp r9, r10
	JL secondCase
	mov r9, @r6
	JMP setIteration
secondCase:
	mov r10, @r6
setIteration:
	cmp r5, r5
	rrc r5
	add.b #1, r5
	JMP loop
endLoop:
	ret
