@ Shift1.s
@   
  .global main
            
main:   //mov r1, #1
		//mov r2, #2
		mov r1, r2, LSL #1   /* r1 <- (r2*2) */
		mov r1, r2, LSL #2   /* r1 <- (r2*4) */
		mov r1, r2, ASR #3   /* r1 <- (r2/8) */
		mov r3, #4
		mov r1, r2, LSL r3   /* r1 <- (r2*16) */
		add r1, r2, r2, LSL #1   /* r1 ← r2 + (r2*2) equivalent to r1 ← r2*3 */
		add r1, r2, r2, LSL #2   /* r1 ← r2 + (r2*4) equivalent to r1 ← r2*5 */
		sub r1, r2, r2, LSL #3  /* r1 ← r2 - (r2*8) equivalent to r1 ← r2*(-7)
		rsb r1, r2, r2, LSL #3      /* r1 ← (r2*8) - r2 equivalent to r1 ← r2*7 */
		/* Complicated way to multiply the initial value of r1 by 42 = 7*3*2 */
		rsb r1, r1, r1, LSL #3  /* r1 ← (r1*8) - r1 equivalent to r1 ← 7*r1 */
		add r1, r1, r1, LSL #1  /* r1 ← r1 + (2*r1) equivalent to r1 ← 3*r1 */
		add r1, r1, r1          /* r1 ← r1 + r1     equivalent to r1 ← 2*r1 */
		/* Assume r1 is 0x12345678 */
		mov r1, r1, ROR #1   /* r1 ← r1 ror 1. This is r1 ← 0x91a2b3c */
		mov r1, r1, ROR #31  /* r1 ← r1 ror 31. This is r1 ← 0x12345678 */
        bx lr                
