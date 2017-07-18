
build/pid.elf:     file format elf32-littlearm


Disassembly of section .isr_vector:

08000000 <__isr_vectors>:
 8000000:	20005000 	andcs	r5, r0, r0
 8000004:	0800010d 	stmdaeq	r0, {r0, r2, r3, r8}
 8000008:	08000111 	stmdaeq	r0, {r0, r4, r8}
 800000c:	08000115 	stmdaeq	r0, {r0, r2, r4, r8}
 8000010:	0800012d 	stmdaeq	r0, {r0, r2, r3, r5, r8}
 8000014:	08000131 	stmdaeq	r0, {r0, r4, r5, r8}
 8000018:	08000149 	stmdaeq	r0, {r0, r3, r6, r8}
	...
 800002c:	08000161 	stmdaeq	r0, {r0, r5, r6, r8}
 8000030:	08000165 	stmdaeq	r0, {r0, r2, r5, r6, r8}
 8000034:	00000000 	andeq	r0, r0, r0
 8000038:	08000169 	stmdaeq	r0, {r0, r3, r5, r6, r8}
 800003c:	08000c69 	stmdaeq	r0, {r0, r3, r5, r6, sl, fp}
 8000040:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000044:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000048:	08000181 	stmdaeq	r0, {r0, r7, r8}
 800004c:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000050:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000054:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000058:	08000181 	stmdaeq	r0, {r0, r7, r8}
 800005c:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000060:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000064:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000068:	08000181 	stmdaeq	r0, {r0, r7, r8}
 800006c:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000070:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000074:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000078:	08000181 	stmdaeq	r0, {r0, r7, r8}
 800007c:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000080:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000084:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000088:	08000181 	stmdaeq	r0, {r0, r7, r8}
 800008c:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000090:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000094:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000098:	08000181 	stmdaeq	r0, {r0, r7, r8}
 800009c:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000a0:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000a4:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000a8:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000ac:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000b0:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000b4:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000b8:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000bc:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000c0:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000c4:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000c8:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000cc:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000d0:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000d4:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000d8:	08000d75 	stmdaeq	r0, {r0, r2, r4, r5, r6, r8, sl, fp}
 80000dc:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000e0:	08000be1 	stmdaeq	r0, {r0, r5, r6, r7, r8, r9, fp}
 80000e4:	08000181 	stmdaeq	r0, {r0, r7, r8}
 80000e8:	08000181 	stmdaeq	r0, {r0, r7, r8}
	...
 8000108:	f108f85f 			; <UNDEFINED> instruction: 0xf108f85f

0800010c <Reset_Handler>:
extern void __attribute__((noreturn, weak)) _start (void);

// This version is optimised to a quick branch to _start.
void __attribute__ ((section(".after_vectors"), naked)) Reset_Handler (void)
{
	asm volatile
 800010c:	4818      	ldr	r0, [pc, #96]	; (8000170 <PendSV_Handler+0x8>)
 800010e:	4700      	bx	r0

08000110 <NMI_Handler>:
		:
	);
}

void __attribute__ ((section(".after_vectors"), weak)) NMI_Handler (void)
{
 8000110:	e7fe      	b.n	8000110 <NMI_Handler>
 8000112:	bf00      	nop

08000114 <HardFault_Handler>:
// (Based on Joseph Yiu's, The Definitive Guide to ARM Cortex-M3 and
// Cortex-M4 Processors, Third Edition, Chap. 12.8, page 402).

void __attribute__ ((section(".after_vectors"), weak, naked)) HardFault_Handler (void)
{
  asm volatile(
 8000114:	f01e 0f04 	tst.w	lr, #4
 8000118:	bf0c      	ite	eq
 800011a:	f3ef 8008 	mrseq	r0, MSP
 800011e:	f3ef 8009 	mrsne	r0, PSP
 8000122:	4671      	mov	r1, lr
 8000124:	4a13      	ldr	r2, [pc, #76]	; (8000174 <PendSV_Handler+0xc>)
 8000126:	4710      	bx	r2

08000128 <HardFault_Handler_C>:
}

void __attribute__ ((section(".after_vectors"),weak,used))
HardFault_Handler_C (ExceptionStackFrame* frame __attribute__((unused)),
                     uint32_t lr __attribute__((unused)))
{
 8000128:	e7fe      	b.n	8000128 <HardFault_Handler_C>
 800012a:	bf00      	nop

0800012c <MemManage_Handler>:
#endif // defined(__ARM_ARCH_6M__)

#if defined(__ARM_ARCH_7M__) || defined(__ARM_ARCH_7EM__)

void __attribute__ ((section(".after_vectors"),weak)) MemManage_Handler (void)
{
 800012c:	e7fe      	b.n	800012c <MemManage_Handler>
 800012e:	bf00      	nop

08000130 <BusFault_Handler>:
    ;
}

void __attribute__ ((section(".after_vectors"),weak,naked)) BusFault_Handler (void)
{
  asm volatile(
 8000130:	f01e 0f04 	tst.w	lr, #4
 8000134:	bf0c      	ite	eq
 8000136:	f3ef 8008 	mrseq	r0, MSP
 800013a:	f3ef 8009 	mrsne	r0, PSP
 800013e:	4671      	mov	r1, lr
 8000140:	4a0d      	ldr	r2, [pc, #52]	; (8000178 <PendSV_Handler+0x10>)
 8000142:	4710      	bx	r2

08000144 <BusFault_Handler_C>:
}

void __attribute__ ((section(".after_vectors"),weak,used))
BusFault_Handler_C (ExceptionStackFrame* frame __attribute__((unused)),
                    uint32_t lr __attribute__((unused)))
{
 8000144:	e7fe      	b.n	8000144 <BusFault_Handler_C>
 8000146:	bf00      	nop

08000148 <UsageFault_Handler>:
    ;
}

void __attribute__ ((section(".after_vectors"),weak,naked)) UsageFault_Handler (void)
{
  asm volatile(
 8000148:	f01e 0f04 	tst.w	lr, #4
 800014c:	bf0c      	ite	eq
 800014e:	f3ef 8008 	mrseq	r0, MSP
 8000152:	f3ef 8009 	mrsne	r0, PSP
 8000156:	4671      	mov	r1, lr
 8000158:	4a08      	ldr	r2, [pc, #32]	; (800017c <PendSV_Handler+0x14>)
 800015a:	4710      	bx	r2

0800015c <UsageFault_Handler_C>:
}

void __attribute__ ((section(".after_vectors"),weak,used))
UsageFault_Handler_C (ExceptionStackFrame* frame __attribute__((unused)),
                      uint32_t lr __attribute__((unused)))
{
 800015c:	e7fe      	b.n	800015c <UsageFault_Handler_C>
 800015e:	bf00      	nop

08000160 <SVC_Handler>:
}

#endif

void __attribute__ ((section(".after_vectors"),weak)) SVC_Handler (void)
{
 8000160:	e7fe      	b.n	8000160 <SVC_Handler>
 8000162:	bf00      	nop

08000164 <DebugMon_Handler>:
}

#if defined(__ARM_ARCH_7M__) || defined(__ARM_ARCH_7EM__)

void __attribute__ ((section(".after_vectors"),weak)) DebugMon_Handler (void)
{
 8000164:	e7fe      	b.n	8000164 <DebugMon_Handler>
 8000166:	bf00      	nop

08000168 <PendSV_Handler>:
}

#endif

void __attribute__ ((section(".after_vectors"),weak)) PendSV_Handler (void)
{
 8000168:	e7fe      	b.n	8000168 <PendSV_Handler>
 800016a:	bf00      	nop
void __attribute__ ((section(".after_vectors"),weak)) SysTick_Handler (void)
{
  // DO NOT loop, just return.
  // Useful in case someone (like STM HAL) inadvertently enables SysTick.
  ;
}
 800016c:	4770      	bx	lr
 800016e:	01850000 	orreq	r0, r5, r0
 8000172:	01290800 			; <UNDEFINED> instruction: 0x01290800
 8000176:	01450800 	cmpeq	r5, r0, lsl #16
 800017a:	015d0800 	cmpeq	sp, r0, lsl #16
 800017e:	e7fe0800 	ldrb	r0, [lr, r0, lsl #16]!

08000180 <ADC1_2_IRQHandler>:
// Processor ends up here if an unexpected interrupt occurs or a specific
// handler is not present in the application code.

void __attribute__ ((section(".after_vectors")))
Default_Handler(void)
{
 8000180:	e7fe      	b.n	8000180 <ADC1_2_IRQHandler>
 8000182:	bf00      	nop

08000184 <_start>:
(*__fini_array_end[]) (void) __attribute__((weak));

void 
__attribute__ ((section(".after_vectors"), noreturn, weak)) 
_start (void)
{
 8000184:	b500      	push	{lr}
 8000186:	b083      	sub	sp, #12
  // enabled and require an early sequence to disable it.
  //
  // Also useful on platform with external RAM, that need to be
  // initialised before filling the BSS section.

  __initialize_hardware_early ();
 8000188:	f000 fc02 	bl	8000990 <__initialize_hardware_early>
  while (p < region_end)
 800018c:	4b15      	ldr	r3, [pc, #84]	; (80001e4 <_start+0x60>)
 800018e:	4a16      	ldr	r2, [pc, #88]	; (80001e8 <_start+0x64>)
 8000190:	4293      	cmp	r3, r2
 8000192:	d20c      	bcs.n	80001ae <_start+0x2a>
 8000194:	1d18      	adds	r0, r3, #4
 8000196:	3203      	adds	r2, #3
 8000198:	1a12      	subs	r2, r2, r0
 800019a:	f022 0203 	bic.w	r2, r2, #3
 800019e:	4913      	ldr	r1, [pc, #76]	; (80001ec <_start+0x68>)
 80001a0:	4402      	add	r2, r0
    *p++ = *from++;
 80001a2:	f851 0b04 	ldr.w	r0, [r1], #4
 80001a6:	f843 0b04 	str.w	r0, [r3], #4
  while (p < region_end)
 80001aa:	4293      	cmp	r3, r2
 80001ac:	d1f9      	bne.n	80001a2 <_start+0x1e>
  while (p < region_end)
 80001ae:	4b10      	ldr	r3, [pc, #64]	; (80001f0 <_start+0x6c>)
 80001b0:	4a10      	ldr	r2, [pc, #64]	; (80001f4 <_start+0x70>)
 80001b2:	4293      	cmp	r3, r2
 80001b4:	d20a      	bcs.n	80001cc <_start+0x48>
 80001b6:	1d19      	adds	r1, r3, #4
 80001b8:	3203      	adds	r2, #3
 80001ba:	1a52      	subs	r2, r2, r1
 80001bc:	f022 0203 	bic.w	r2, r2, #3
 80001c0:	440a      	add	r2, r1
    *p++ = 0;
 80001c2:	2100      	movs	r1, #0
 80001c4:	f843 1b04 	str.w	r1, [r3], #4
  while (p < region_end)
 80001c8:	4293      	cmp	r3, r2
 80001ca:	d1fa      	bne.n	80001c2 <_start+0x3e>
  // Zero fill the BSS section (inlined).
  __initialize_bss (&__bss_start__, &__bss_end__);

  // Hook to continue the initialisations. Usually compute and store the
  // clock frequency in the global CMSIS variable, cleared above.
  __initialize_hardware ();
 80001cc:	f000 fbec 	bl	80009a8 <__initialize_hardware>

  // Get the argc/argv (useful in semihosting configurations).
  int argc;
  char** argv;
  __initialize_args (&argc, &argv);
 80001d0:	a901      	add	r1, sp, #4
 80001d2:	4668      	mov	r0, sp
 80001d4:	f000 fc1a 	bl	8000a0c <__initialize_args>

  // Call the main entry point, and save the exit code.
  int code = main (argc, argv);
 80001d8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80001dc:	f000 fd78 	bl	8000cd0 <main>

  _exit (code);
 80001e0:	f000 fbd2 	bl	8000988 <_exit>
 80001e4:	20000000 	andcs	r0, r0, r0
 80001e8:	200001f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
 80001ec:	08001e8c 	stmdaeq	r0, {r2, r3, r7, r9, sl, fp, ip}
 80001f0:	200001f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
 80001f4:	200014c0 	andcs	r1, r0, r0, asr #9

Disassembly of section .eeprom:

08000400 <pid_eeprom>:
 8000400:	000000a0 	andeq	r0, r0, r0, lsr #1
 8000404:	00018000 	andeq	r8, r1, r0
 8000408:	0000cf5c 	andeq	ip, r0, ip, asr pc
 800040c:	0000072b 	andeq	r0, r0, fp, lsr #14
 8000410:	00036666 	andeq	r6, r3, r6, ror #12
	...

Disassembly of section .inits:

08000800 <__data_regions_array_start>:
 8000800:	08001e8c 	stmdaeq	r0, {r2, r3, r7, r9, sl, fp, ip}
 8000804:	20000000 	andcs	r0, r0, r0
 8000808:	200001f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
 800080c:	08001e8c 	stmdaeq	r0, {r2, r3, r7, r9, sl, fp, ip}
	...

08000818 <__bss_regions_array_start>:
 8000818:	200001f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
 800081c:	200014c0 	andcs	r1, r0, r0, asr #9
	...

Disassembly of section .data:

20000000 <AHBPrescTable>:
	...
20000008:	04030201 	streq	r0, [r3], #-513	; 0xfffffdff
2000000c:	09080706 	stmdbeq	r8, {r1, r2, r8, r9, sl}

20000010 <SystemCoreClock>:
20000010:	044aa200 	strbeq	sl, [sl], #-512	; 0xfffffe00

20000014 <argv.4228>:
20000014:	200001f4 	strdcs	r0, [r0], -r4
20000018:	00000000 	andeq	r0, r0, r0

2000001c <feedback_buf_index>:
2000001c:	ffff03e8 			; <UNDEFINED> instruction: 0xffff03e8

20000020 <_impure_ptr>:
20000020:	20000024 	andcs	r0, r0, r4, lsr #32

20000024 <impure_data>:
	...

20000084 <__global_locale>:
20000084:	00000043 	andeq	r0, r0, r3, asr #32
	...
200000a4:	00000043 	andeq	r0, r0, r3, asr #32
	...
200000c4:	00000043 	andeq	r0, r0, r3, asr #32
	...
200000e4:	00000043 	andeq	r0, r0, r3, asr #32
	...
20000104:	00000043 	andeq	r0, r0, r3, asr #32
	...
20000124:	00000043 	andeq	r0, r0, r3, asr #32
	...
20000144:	00000043 	andeq	r0, r0, r3, asr #32
	...
20000164:	08001add 	stmdaeq	r0, {r0, r2, r3, r4, r6, r7, r9, fp, ip}
20000168:	080014eb 	stmdaeq	r0, {r0, r1, r3, r5, r6, r7, sl, ip}
2000016c:	00000000 	andeq	r0, r0, r0
20000170:	08001d89 	stmdaeq	r0, {r0, r3, r7, r8, sl, fp, ip}
20000174:	08001d54 	stmdaeq	r0, {r2, r4, r6, r8, sl, fp, ip}
20000178:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
2000017c:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
20000180:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
20000184:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
20000188:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
2000018c:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
20000190:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
20000194:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
20000198:	08001d5b 	stmdaeq	r0, {r0, r1, r3, r4, r6, r8, sl, fp, ip}
2000019c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
200001a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
200001a4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
200001a8:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
200001ac:	53410001 	movtpl	r0, #4097	; 0x1001
200001b0:	00494943 	subeq	r4, r9, r3, asr #18
	...
200001cc:	53410000 	movtpl	r0, #4096	; 0x1000
200001d0:	00494943 	subeq	r4, r9, r3, asr #18
	...

Disassembly of section .bss:

200001f0 <__bss_start__>:
200001f0:	00000000 	andeq	r0, r0, r0

200001f4 <name.4227>:
200001f4:	00000000 	andeq	r0, r0, r0

200001f8 <cmd.6327>:
	...

20000238 <feedback_buf>:
	...

200011d8 <feedback_src>:
	...

200011e0 <pid>:
	...

20001290 <resampler_250Hz>:
	...

20001291 <rx_produce.6328>:
20001291:	00000000 	andeq	r0, r0, r0

20001294 <step_0_cnt>:
20001294:	00000000 	andeq	r0, r0, r0

20001298 <step_1_cnt>:
20001298:	00000000 	andeq	r0, r0, r0

2000129c <rx_buf>:
	...

2000139c <rx_consume>:
2000139c:	00000000 	andeq	r0, r0, r0

200013a0 <rx_produce>:
200013a0:	00000000 	andeq	r0, r0, r0

200013a4 <tx_buf>:
	...

200014a4 <tx_consume>:
200014a4:	00000000 	andeq	r0, r0, r0

200014a8 <tx_cts>:
200014a8:	00000000 	andeq	r0, r0, r0

200014ac <tx_produce>:
200014ac:	00000000 	andeq	r0, r0, r0

200014b0 <pid_reset_flag>:
200014b0:	00000000 	andeq	r0, r0, r0

200014b4 <__malloc_free_list>:
200014b4:	00000000 	andeq	r0, r0, r0

200014b8 <__malloc_sbrk_start>:
200014b8:	00000000 	andeq	r0, r0, r0

200014bc <errno>:
200014bc:	00000000 	andeq	r0, r0, r0

Disassembly of section .text:

08000828 <SystemInit>:
  * @note   This function should be used only after reset.
  * @param  None
  * @retval None
  */
void SystemInit (void)
{
 8000828:	2000b410 	andcs	fp, r0, r0, lsl r4

  /* Reset CFGR2 register */
  RCC->CFGR2 = 0x00000000;      
#else
  /* Disable all interrupts and clear pending bits  */
  RCC->CIR = 0x009F0000;
 800082c:	041ff44f 	ldreq	pc, [pc], #-1103	; 8000834 <SystemInit+0xc>
  RCC->CR |= (uint32_t)0x00000001;
 8000830:	4a3b4b3a 	bmi	8ed3520 <_sidata+0xed1694>
 8000834:	b0836819 	addlt	r6, r3, r9, lsl r8
 8000838:	0101f041 	tsteq	r1, r1, asr #32	; <UNPREDICTABLE>
 800083c:	68596019 	ldmdavs	r9, {r0, r3, r4, sp, lr}^
  RCC->CFGR &= (uint32_t)0xF8FF0000;
 8000840:	605a400a 	subsvs	r4, sl, sl
  RCC->CR &= (uint32_t)0xFEF6FFFF;
 8000844:	681a      	ldr	r2, [r3, #0]
 8000846:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800084a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800084e:	681a601a 	ldmdavs	sl, {r1, r3, r4, sp, lr}
  RCC->CR &= (uint32_t)0xFFFBFFFF;
 8000852:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8000856:	601a      	str	r2, [r3, #0]
  RCC->CFGR &= (uint32_t)0xFF80FFFF;
 8000858:	f422685a 	vld2.16	{d6-d7}, [r2 :64], sl
 800085c:	02fe      	lsls	r6, r7, #11
 800085e:	609c605a 	addsvs	r6, ip, sl, asr r0
  * @param  None
  * @retval None
  */
static void SetSysClockTo72(void)
{
  __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
 8000862:	9000      	str	r0, [sp, #0]
 8000864:	9001      	str	r0, [sp, #4]
  
  /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/    
  /* Enable HSE */    
  RCC->CR |= ((uint32_t)RCC_CR_HSEON);
 8000866:	681a      	ldr	r2, [r3, #0]
 8000868:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800086c:	e003601a 	and	r6, r3, sl, lsl r0
  /* Wait till HSE is ready and if Time out is reached exit */
  do
  {
    HSEStatus = RCC->CR & RCC_CR_HSERDY;
    StartUpCounter++;  
  } while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
 8000870:	9b00      	ldr	r3, [sp, #0]
 8000872:	f5b3 6fa0 	cmp.w	r3, #1280	; 0x500
 8000876:	4b28d00a 	blmi	8a348a6 <_sidata+0xa32a1a>
    HSEStatus = RCC->CR & RCC_CR_HSERDY;
 800087a:	681b      	ldr	r3, [r3, #0]
 800087c:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000880:	9301      	str	r3, [sp, #4]
    StartUpCounter++;  
 8000882:	9b00      	ldr	r3, [sp, #0]
 8000884:	93003301 	movwls	r3, #769	; 0x301
  } while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
 8000888:	9b01      	ldr	r3, [sp, #4]
 800088a:	2b00      	cmp	r3, #0
 800088c:	4b23d0f0 	blmi	88f4c54 <_sidata+0x8f2dc8>

  if ((RCC->CR & RCC_CR_HSERDY) != RESET)
 8000890:	681b      	ldr	r3, [r3, #0]
 8000892:	3300f413 	movwcc	pc, #1043	; 0x413	; <UNPREDICTABLE>
  {
    HSEStatus = (uint32_t)0x01;
 8000896:	bf18      	it	ne
 8000898:	2301      	movne	r3, #1
  }
  else
  {
    HSEStatus = (uint32_t)0x00;
 800089a:	9b019301 	blls	80654a6 <_sidata+0x6361a>
  }  

  if (HSEStatus == (uint32_t)0x01)
 800089e:	2b01      	cmp	r3, #1
 80008a0:	d006      	beq.n	80008b0 <SystemInit+0x88>
  SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */
 80008a2:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80008a6:	4b1f      	ldr	r3, [pc, #124]	; (8000924 <__bss_regions_array_end+0xfc>)
 80008a8:	b003609a 	mullt	r3, sl, r0
}
 80008ac:	bc10      	pop	{r4}
 80008ae:	4a1d4770 	bmi	8752676 <_sidata+0x7507ea>
    FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
    FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_2;    

 
    /* HCLK = SYSCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
 80008b2:	4b1a      	ldr	r3, [pc, #104]	; (800091c <__bss_regions_array_end+0xf4>)
    FLASH->ACR |= FLASH_ACR_PRFTBE;
 80008b4:	6811      	ldr	r1, [r2, #0]
 80008b6:	f041 0110 	orr.w	r1, r1, #16
 80008ba:	6011      	str	r1, [r2, #0]
    FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
 80008bc:	f0216811 			; <UNDEFINED> instruction: 0xf0216811
 80008c0:	0103      	lsls	r3, r0, #4
 80008c2:	6011      	str	r1, [r2, #0]
    FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_2;    
 80008c4:	f0416811 			; <UNDEFINED> instruction: 0xf0416811
 80008c8:	0102      	lsls	r2, r0, #4
 80008ca:	685a6011 	ldmdavs	sl, {r0, r4, sp, lr}^
    RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
 80008ce:	605a      	str	r2, [r3, #4]
      
    /* PCLK2 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
 80008d0:	605a685a 	subsvs	r6, sl, sl, asr r8
    
    /* PCLK1 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;
 80008d4:	685a      	ldr	r2, [r3, #4]
 80008d6:	6280f442 	addvs	pc, r0, #1107296256	; 0x42000000
 80008da:	605a      	str	r2, [r3, #4]
    RCC->CFGR &= (uint32_t)~(RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL);
    RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLXTPRE_PREDIV1 | RCC_CFGR_PLLSRC_PREDIV1 | 
                            RCC_CFGR_PLLMULL9); 
#else    
    /*  PLL configuration: PLLCLK = 12MHz * 6 = 72 MHz */
    RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE |
 80008dc:	f422685a 	vld2.16	{d6-d7}, [r2 :64], sl
 80008e0:	127c      	asrs	r4, r7, #9
 80008e2:	685a605a 	ldmdavs	sl, {r1, r3, r4, r6, sp, lr}^
                                        RCC_CFGR_PLLMULL));
    RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | (72000000 / HSE_VALUE - 2) << 18); //RCC_CFGR_PLLMULL9);
 80008e6:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80008ea:	681a605a 	ldmdavs	sl, {r1, r3, r4, r6, sp, lr}
#endif /* STM32F10X_CL */

    /* Enable PLL */
    RCC->CR |= RCC_CR_PLLON;
 80008ee:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80008f2:	4b09601a 	blmi	8258962 <_sidata+0x256ad6>

    /* Wait till PLL is ready */
    while((RCC->CR & RCC_CR_PLLRDY) == 0)
 80008f6:	681a      	ldr	r2, [r3, #0]
 80008f8:	d5fb0192 	ldrble	r0, [fp, #402]!	; 0x192
    {
    }
    
    /* Select PLL as system clock source */
    RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
 80008fc:	685a      	ldr	r2, [r3, #4]
 80008fe:	0203f022 	andeq	pc, r3, #34	; 0x22
 8000902:	605a      	str	r2, [r3, #4]
    RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;    
 8000904:	f042685a 			; <UNDEFINED> instruction: 0xf042685a
 8000908:	0202      	lsls	r2, r0, #8
 800090a:	4b03605a 	blmi	80d8a7a <_sidata+0xd6bee>

    /* Wait till PLL is used as system clock source */
    while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
 800090e:	685b      	ldr	r3, [r3, #4]
 8000910:	030cf003 	movweq	pc, #49155	; 0xc003	; <UNPREDICTABLE>
 8000914:	2b08      	cmp	r3, #8
 8000916:	e7c3d1f9 			; <UNDEFINED> instruction: 0xe7c3d1f9
 800091a:	1000bf00 	andne	fp, r0, r0, lsl #30
 800091e:	4002      	ands	r2, r0
 8000920:	f8ff0000 			; <UNDEFINED> instruction: 0xf8ff0000
 8000924:	ed00 e000 	stc	0, cr14, [r0, #-0]
 8000928:	40022000 	andmi	r2, r2, r0

0800092c <SystemCoreClockUpdate>:
  tmp = RCC->CFGR & RCC_CFGR_SWS;
 800092c:	4a11      	ldr	r2, [pc, #68]	; (8000974 <SystemCoreClockUpdate+0x48>)
 800092e:	f0036853 			; <UNDEFINED> instruction: 0xf0036853
 8000932:	030c      	lsls	r4, r1, #12
  switch (tmp)
 8000934:	2b08      	cmp	r3, #8
 8000936:	6853d10e 	ldmdavs	r3, {r1, r2, r3, r8, ip, lr, pc}^
      pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
 800093a:	6851      	ldr	r1, [r2, #4]
      pllmull = ( pllmull >> 18) + 2;
 800093c:	f3c3 4383 	ubfx	r3, r3, #18, #4
      if (pllsource == 0x00)
 8000940:	f10303c9 			; <UNDEFINED> instruction: 0xf10303c9
      pllmull = ( pllmull >> 18) + 2;
 8000944:	0302      	lsls	r2, r0, #12
      if (pllsource == 0x00)
 8000946:	d511      	bpl.n	800096c <SystemCoreClockUpdate+0x40>
        if ((RCC->CFGR & RCC_CFGR_PLLXTPRE) != (uint32_t)RESET)
 8000948:	6852      	ldr	r2, [r2, #4]
 800094a:	0392      	lsls	r2, r2, #14
 800094c:	d40e      	bmi.n	800096c <SystemCoreClockUpdate+0x40>
          SystemCoreClock = HSE_VALUE * pllmull;
 800094e:	4a0a      	ldr	r2, [pc, #40]	; (8000978 <SystemCoreClockUpdate+0x4c>)
 8000950:	fb02 f303 	mul.w	r3, r2, r3
 8000954:	e000      	b.n	8000958 <SystemCoreClockUpdate+0x2c>
  switch (tmp)
 8000956:	4b08      	ldr	r3, [pc, #32]	; (8000978 <SystemCoreClockUpdate+0x4c>)
  tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
 8000958:	4a06      	ldr	r2, [pc, #24]	; (8000974 <SystemCoreClockUpdate+0x48>)
 800095a:	4808      	ldr	r0, [pc, #32]	; (800097c <SystemCoreClockUpdate+0x50>)
 800095c:	6852      	ldr	r2, [r2, #4]
  SystemCoreClock >>= tmp;  
 800095e:	4908      	ldr	r1, [pc, #32]	; (8000980 <SystemCoreClockUpdate+0x54>)
  tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
 8000960:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8000964:	5c82      	ldrb	r2, [r0, r2]
  SystemCoreClock >>= tmp;  
 8000966:	40d3      	lsrs	r3, r2
 8000968:	600b      	str	r3, [r1, #0]
}
 800096a:	4770      	bx	lr
          SystemCoreClock = (HSE_VALUE >> 1) * pllmull;
 800096c:	4a05      	ldr	r2, [pc, #20]	; (8000984 <SystemCoreClockUpdate+0x58>)
 800096e:	fb02 f303 	mul.w	r3, r2, r3
 8000972:	e7f1      	b.n	8000958 <SystemCoreClockUpdate+0x2c>
 8000974:	40021000 	andmi	r1, r2, r0
 8000978:	007a1200 	rsbseq	r1, sl, r0, lsl #4
 800097c:	20000000 	andcs	r0, r0, r0
 8000980:	20000010 	andcs	r0, r0, r0, lsl r0
 8000984:	003d0900 	eorseq	r0, sp, r0, lsl #18

08000988 <_exit>:
// the debugger.
//
// It can be redefined in the application, if more functionality
// is required.
void __attribute__((weak)) _exit (int code __attribute__((unused)))
{
 8000988:	b508      	push	{r3, lr}
  __reset_hardware ();
 800098a:	f000 f80f 	bl	80009ac <__reset_hardware>
 800098e:	bf00      	nop

08000990 <__initialize_hardware_early>:
//
// After Reset the Cortex-M processor is in Thread mode,
// priority is Privileged, and the Stack is set to Main.

void __attribute__((weak)) __initialize_hardware_early (void)
{
 8000990:	b508      	push	{r3, lr}
  // Call the CSMSIS system initialisation routine.
  SystemInit();
 8000992:	f7ff ff49 	bl	8000828 <SystemInit>

#if defined(__ARM_ARCH_7M__)
  // Set VTOR to the actual address, provided by the linker script.
  // Override the manual, possibly wrong, SystemInit() setting.
  SCB->VTOR = (uint32_t)(&__vectors_start);
 8000996:	4a02      	ldr	r2, [pc, #8]	; (80009a0 <__initialize_hardware_early+0x10>)
 8000998:	4b02      	ldr	r3, [pc, #8]	; (80009a4 <__initialize_hardware_early+0x14>)
 800099a:	609a      	str	r2, [r3, #8]

  // Set bits 20-23 to enable CP10 and CP11 coprocessor
  SCB->CPACR |= (0xF << 20);

#endif // (__VFP_FP__) && !(__SOFTFP__)
}
 800099c:	bd08      	pop	{r3, pc}
 800099e:	bf00      	nop
 80009a0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 80009a4:	e000ed00 	and	lr, r0, r0, lsl #26

080009a8 <__initialize_hardware>:

void __attribute__((weak)) __initialize_hardware (void)
{  
  // Call the CSMSIS system clock routine to store the clock frequency
  // in the SystemCoreClock global RAM location.
  SystemCoreClockUpdate ();
 80009a8:	f7ff bfc0 	b.w	800092c <SystemCoreClockUpdate>

080009ac <__reset_hardware>:
    This function acts as a special kind of Data Memory Barrier.
    It completes when all explicit memory accesses before this instruction complete.
 */
__attribute__( ( always_inline ) ) __STATIC_INLINE void __DSB(void)
{
  __ASM volatile ("dsb");
 80009ac:	f3bf 8f4f 	dsb	sy
__STATIC_INLINE void NVIC_SystemReset(void)
{
  __DSB();                                                     /* Ensure all outstanding memory accesses included
                                                                  buffered write are completed before reset */
  SCB->AIRCR  = ((0x5FA << SCB_AIRCR_VECTKEY_Pos)      |
                 (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 80009b0:	4904      	ldr	r1, [pc, #16]	; (80009c4 <__reset_hardware+0x18>)
 80009b2:	4b05      	ldr	r3, [pc, #20]	; (80009c8 <__reset_hardware+0x1c>)
 80009b4:	68ca      	ldr	r2, [r1, #12]
 80009b6:	f402 62e0 	and.w	r2, r2, #1792	; 0x700
 80009ba:	4313      	orrs	r3, r2
  SCB->AIRCR  = ((0x5FA << SCB_AIRCR_VECTKEY_Pos)      |
 80009bc:	60cb      	str	r3, [r1, #12]
 80009be:	f3bf 8f4f 	dsb	sy
 80009c2:	e7fe      	b.n	80009c2 <__reset_hardware+0x16>
 80009c4:	e000ed00 	and	lr, r0, r0, lsl #26
 80009c8:	05fa0004 	ldrbeq	r0, [sl, #4]!

080009cc <_sbrk>:
  extern char _Heap_Limit; // Defined by the linker.

  static char* current_heap_end;
  char* current_block_address;

  if (current_heap_end == 0)
 80009cc:	4a0c      	ldr	r2, [pc, #48]	; (8000a00 <_sbrk+0x34>)
{
 80009ce:	b508      	push	{r3, lr}
  if (current_heap_end == 0)
 80009d0:	6813      	ldr	r3, [r2, #0]
 80009d2:	b14b      	cbz	r3, 80009e8 <_sbrk+0x1c>

  // Need to align heap to word boundary, else will get
  // hard faults on Cortex-M0. So we assume that heap starts on
  // word boundary, hence make sure we always add a multiple of
  // 4 to it.
  incr = (incr + 3) & (~3); // align value to 4
 80009d4:	3003      	adds	r0, #3
 80009d6:	f020 0003 	bic.w	r0, r0, #3
  if (current_heap_end + incr > &_Heap_Limit)
 80009da:	490a      	ldr	r1, [pc, #40]	; (8000a04 <_sbrk+0x38>)
 80009dc:	4418      	add	r0, r3
 80009de:	4288      	cmp	r0, r1
 80009e0:	d806      	bhi.n	80009f0 <_sbrk+0x24>
      // Heap has overflowed
      errno = ENOMEM;
      return (caddr_t) - 1;
    }

  current_heap_end += incr;
 80009e2:	6010      	str	r0, [r2, #0]

  return (caddr_t) current_block_address;
}
 80009e4:	4618      	mov	r0, r3
 80009e6:	bd08      	pop	{r3, pc}
      current_heap_end = &_Heap_Begin;
 80009e8:	4907      	ldr	r1, [pc, #28]	; (8000a08 <_sbrk+0x3c>)
 80009ea:	460b      	mov	r3, r1
 80009ec:	6011      	str	r1, [r2, #0]
 80009ee:	e7f1      	b.n	80009d4 <_sbrk+0x8>
      errno = ENOMEM;
 80009f0:	f000 fc78 	bl	80012e4 <__errno>
 80009f4:	220c      	movs	r2, #12
      return (caddr_t) - 1;
 80009f6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
      errno = ENOMEM;
 80009fa:	6002      	str	r2, [r0, #0]
}
 80009fc:	4618      	mov	r0, r3
 80009fe:	bd08      	pop	{r3, pc}
 8000a00:	200001f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
 8000a04:	20004c00 	andcs	r4, r0, r0, lsl #24
 8000a08:	200014c0 	andcs	r1, r0, r0, asr #9

08000a0c <__initialize_args>:
  // available from the host environment. argv[argc] shall be a null pointer.
  // (static, no const)
  static char* argv[2] =
    { name, NULL };

  *p_argc = 1;
 8000a0c:	2201      	movs	r2, #1
  *p_argv = &argv[0];
 8000a0e:	4b02      	ldr	r3, [pc, #8]	; (8000a18 <__initialize_args+0xc>)
  *p_argc = 1;
 8000a10:	6002      	str	r2, [r0, #0]
  *p_argv = &argv[0];
 8000a12:	600b      	str	r3, [r1, #0]
  return;
}
 8000a14:	4770      	bx	lr
 8000a16:	bf00      	nop
 8000a18:	20000014 	andcs	r0, r0, r4, lsl r0

08000a1c <check_uart_cmd.part.0>:
		
		
		if (buf == '\r' || buf == '\n')				// If character either "return carriage" 
													// or "line feed" then command is complete
		{
			cmd [rx_produce] = 0;					// Set last character value to terminate string
 8000a1c:	2200      	movs	r2, #0
void check_uart_cmd (void)
 8000a1e:	b530      	push	{r4, r5, lr}
			cmd [rx_produce] = 0;					// Set last character value to terminate string
 8000a20:	4c62      	ldr	r4, [pc, #392]	; (8000bac <check_uart_cmd.part.0+0x190>)
 8000a22:	4d63      	ldr	r5, [pc, #396]	; (8000bb0 <check_uart_cmd.part.0+0x194>)
 8000a24:	f994 3000 	ldrsb.w	r3, [r4]
void check_uart_cmd (void)
 8000a28:	b083      	sub	sp, #12
			cmd [rx_produce] = 0;					// Set last character value to terminate string
 8000a2a:	54ea      	strb	r2, [r5, r3]
			
			switch (cmd [0])
 8000a2c:	f995 3000 	ldrsb.w	r3, [r5]
 8000a30:	3b43      	subs	r3, #67	; 0x43
 8000a32:	2b10      	cmp	r3, #16
 8000a34:	d815      	bhi.n	8000a62 <check_uart_cmd.part.0+0x46>
 8000a36:	e8df f003 	tbb	[pc, r3]
 8000a3a:	26141418 			; <UNDEFINED> instruction: 0x26141418
 8000a3e:	68141434 	ldmdavs	r4, {r2, r4, r5, sl, ip}
 8000a42:	14837614 	strne	r7, [r3], #1556	; 0x614
 8000a46:	a4149614 	ldrge	r9, [r4], #-1556	; 0xfffff9ec
 8000a4a:	f9950009 			; <UNDEFINED> instruction: 0xf9950009
			{
			
			/* Load/Store from/to flash memory */
			case 'S':				
				if (cmd [1] == 's')
 8000a4e:	3001      	adds	r0, #1
					flash_store_from_host (atoi (&cmd [2]), &pid [0].pid);
 8000a50:	4858      	ldr	r0, [pc, #352]	; (8000bb4 <check_uart_cmd.part.0+0x198>)
				if (cmd [1] == 's')
 8000a52:	2b73      	cmp	r3, #115	; 0x73
 8000a54:	f000 80a3 	beq.w	8000b9e <check_uart_cmd.part.0+0x182>
				else				
					flash_load_to_host (atoi (&cmd [2]));
 8000a58:	f000 fc38 	bl	80012cc <atoi>
 8000a5c:	b2c0      	uxtb	r0, r0
 8000a5e:	f000 fa39 	bl	8000ed4 <flash_load_to_host>
				pid_reset (&pid [0]);
				__enable_irq (); 
				break;
			}
			
			rx_produce = 0;
 8000a62:	2300      	movs	r3, #0
 8000a64:	7023      	strb	r3, [r4, #0]
		{
			cmd [rx_produce] = buf;
			rx_produce = (rx_produce + 1) & 63;		// Ringbuffer				
		}
	}
}
 8000a66:	b003      	add	sp, #12
 8000a68:	bd30      	pop	{r4, r5, pc}
				pid_set_sub_cmd (pid, atoi (&cmd [1]));
 8000a6a:	4853      	ldr	r0, [pc, #332]	; (8000bb8 <check_uart_cmd.part.0+0x19c>)
 8000a6c:	f000 fc2e 	bl	80012cc <atoi>
 8000a70:	4601      	mov	r1, r0
 8000a72:	4852      	ldr	r0, [pc, #328]	; (8000bbc <check_uart_cmd.part.0+0x1a0>)
 8000a74:	f000 fb72 	bl	800115c <pid_set_sub_cmd>
				feedback_buf_index = 0;
 8000a78:	2200      	movs	r2, #0
 8000a7a:	4b51      	ldr	r3, [pc, #324]	; (8000bc0 <check_uart_cmd.part.0+0x1a4>)
 8000a7c:	801a      	strh	r2, [r3, #0]
			rx_produce = 0;
 8000a7e:	2300      	movs	r3, #0
 8000a80:	7023      	strb	r3, [r4, #0]
}
 8000a82:	b003      	add	sp, #12
 8000a84:	bd30      	pop	{r4, r5, pc}
				sprintf (cmd, "%d\n", feedback_buf_index);
 8000a86:	4b4e      	ldr	r3, [pc, #312]	; (8000bc0 <check_uart_cmd.part.0+0x1a4>)
 8000a88:	494e      	ldr	r1, [pc, #312]	; (8000bc4 <check_uart_cmd.part.0+0x1a8>)
 8000a8a:	f9b3 2000 	ldrsh.w	r2, [r3]
 8000a8e:	4848      	ldr	r0, [pc, #288]	; (8000bb0 <check_uart_cmd.part.0+0x194>)
 8000a90:	f000 fc6e 	bl	8001370 <siprintf>
				uart_print (cmd);
 8000a94:	4846      	ldr	r0, [pc, #280]	; (8000bb0 <check_uart_cmd.part.0+0x194>)
 8000a96:	f000 f9cb 	bl	8000e30 <uart_print>
			rx_produce = 0;
 8000a9a:	2300      	movs	r3, #0
 8000a9c:	7023      	strb	r3, [r4, #0]
}
 8000a9e:	b003      	add	sp, #12
 8000aa0:	bd30      	pop	{r4, r5, pc}
				for (i = 0; i < BUF_SIZE; i++) 
 8000aa2:	2300      	movs	r3, #0
 8000aa4:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000aa8:	f8bd 3004 	ldrh.w	r3, [sp, #4]
 8000aac:	b21b      	sxth	r3, r3
 8000aae:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 8000ab2:	dad6      	bge.n	8000a62 <check_uart_cmd.part.0+0x46>
 8000ab4:	4d44      	ldr	r5, [pc, #272]	; (8000bc8 <check_uart_cmd.part.0+0x1ac>)
					sprintf (cmd, "%ld\n", feedback_buf [i]);
 8000ab6:	f8bd 3004 	ldrh.w	r3, [sp, #4]
 8000aba:	4944      	ldr	r1, [pc, #272]	; (8000bcc <check_uart_cmd.part.0+0x1b0>)
 8000abc:	b21b      	sxth	r3, r3
 8000abe:	f855 2023 	ldr.w	r2, [r5, r3, lsl #2]
 8000ac2:	483b      	ldr	r0, [pc, #236]	; (8000bb0 <check_uart_cmd.part.0+0x194>)
 8000ac4:	f000 fc54 	bl	8001370 <siprintf>
					uart_print (cmd);						
 8000ac8:	4839      	ldr	r0, [pc, #228]	; (8000bb0 <check_uart_cmd.part.0+0x194>)
 8000aca:	f000 f9b1 	bl	8000e30 <uart_print>
					for (j = 0; j < 5000; j++);		// TODO: think how to remove 
 8000ace:	2300      	movs	r3, #0
 8000ad0:	f241 3287 	movw	r2, #4999	; 0x1387
 8000ad4:	e005      	b.n	8000ae2 <check_uart_cmd.part.0+0xc6>
 8000ad6:	f241 3287 	movw	r2, #4999	; 0x1387
 8000ada:	f8bd 3006 	ldrh.w	r3, [sp, #6]
 8000ade:	3301      	adds	r3, #1
 8000ae0:	b21b      	sxth	r3, r3
 8000ae2:	f8ad 3006 	strh.w	r3, [sp, #6]
 8000ae6:	f8bd 3006 	ldrh.w	r3, [sp, #6]
 8000aea:	b21b      	sxth	r3, r3
 8000aec:	4293      	cmp	r3, r2
 8000aee:	ddf2      	ble.n	8000ad6 <check_uart_cmd.part.0+0xba>
				for (i = 0; i < BUF_SIZE; i++) 
 8000af0:	f8bd 3004 	ldrh.w	r3, [sp, #4]
 8000af4:	3301      	adds	r3, #1
 8000af6:	b21b      	sxth	r3, r3
 8000af8:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000afc:	f8bd 3004 	ldrh.w	r3, [sp, #4]
 8000b00:	b21b      	sxth	r3, r3
 8000b02:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 8000b06:	dbd6      	blt.n	8000ab6 <check_uart_cmd.part.0+0x9a>
 8000b08:	e7ab      	b.n	8000a62 <check_uart_cmd.part.0+0x46>
				feedback_buf_index = 0;				// Start filling feedback buffer
 8000b0a:	2200      	movs	r2, #0
 8000b0c:	4b2c      	ldr	r3, [pc, #176]	; (8000bc0 <check_uart_cmd.part.0+0x1a4>)
				pid_set_point (&pid [0], atoi (&cmd [1]));
 8000b0e:	482a      	ldr	r0, [pc, #168]	; (8000bb8 <check_uart_cmd.part.0+0x19c>)
				feedback_buf_index = 0;				// Start filling feedback buffer
 8000b10:	801a      	strh	r2, [r3, #0]
				pid_set_point (&pid [0], atoi (&cmd [1]));
 8000b12:	f000 fbdb 	bl	80012cc <atoi>
 8000b16:	4601      	mov	r1, r0
 8000b18:	4828      	ldr	r0, [pc, #160]	; (8000bbc <check_uart_cmd.part.0+0x1a0>)
 8000b1a:	f000 fb03 	bl	8001124 <pid_set_point>
			rx_produce = 0;
 8000b1e:	2300      	movs	r3, #0
 8000b20:	7023      	strb	r3, [r4, #0]
}
 8000b22:	b003      	add	sp, #12
 8000b24:	bd30      	pop	{r4, r5, pc}
				sprintf (cmd, "%ld\n", pid [0].feedback);
 8000b26:	4b25      	ldr	r3, [pc, #148]	; (8000bbc <check_uart_cmd.part.0+0x1a0>)
 8000b28:	4928      	ldr	r1, [pc, #160]	; (8000bcc <check_uart_cmd.part.0+0x1b0>)
 8000b2a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000b2c:	4820      	ldr	r0, [pc, #128]	; (8000bb0 <check_uart_cmd.part.0+0x194>)
 8000b2e:	f000 fc1f 	bl	8001370 <siprintf>
				uart_print (cmd);
 8000b32:	481f      	ldr	r0, [pc, #124]	; (8000bb0 <check_uart_cmd.part.0+0x194>)
 8000b34:	f000 f97c 	bl	8000e30 <uart_print>
			rx_produce = 0;
 8000b38:	2300      	movs	r3, #0
 8000b3a:	7023      	strb	r3, [r4, #0]
}
 8000b3c:	b003      	add	sp, #12
 8000b3e:	bd30      	pop	{r4, r5, pc}
				mode = atoi (&cmd [1]);
 8000b40:	481d      	ldr	r0, [pc, #116]	; (8000bb8 <check_uart_cmd.part.0+0x19c>)
 8000b42:	f000 fbc3 	bl	80012cc <atoi>
				feedback_src = mode == POSITION ? &pid [0].feedback : &pid [0].velocity;
 8000b46:	4a22      	ldr	r2, [pc, #136]	; (8000bd0 <check_uart_cmd.part.0+0x1b4>)
				mode = atoi (&cmd [1]);
 8000b48:	b2c1      	uxtb	r1, r0
				feedback_src = mode == POSITION ? &pid [0].feedback : &pid [0].velocity;
 8000b4a:	1d13      	adds	r3, r2, #4
 8000b4c:	2900      	cmp	r1, #0
 8000b4e:	bf08      	it	eq
 8000b50:	4613      	moveq	r3, r2
 8000b52:	4d20      	ldr	r5, [pc, #128]	; (8000bd4 <check_uart_cmd.part.0+0x1b8>)
				pid_set_mode (pid, mode);
 8000b54:	f1a2 002c 	sub.w	r0, r2, #44	; 0x2c
				feedback_src = mode == POSITION ? &pid [0].feedback : &pid [0].velocity;
 8000b58:	602b      	str	r3, [r5, #0]
				pid_set_mode (pid, mode);
 8000b5a:	f000 fafd 	bl	8001158 <pid_set_mode>
			rx_produce = 0;
 8000b5e:	2300      	movs	r3, #0
 8000b60:	7023      	strb	r3, [r4, #0]
}
 8000b62:	b003      	add	sp, #12
 8000b64:	bd30      	pop	{r4, r5, pc}
				pid_set_parameters (&pid [0], atoi (&cmd [2]), cmd [1] - 0x30);					
 8000b66:	4813      	ldr	r0, [pc, #76]	; (8000bb4 <check_uart_cmd.part.0+0x198>)
 8000b68:	f000 fbb0 	bl	80012cc <atoi>
 8000b6c:	786a      	ldrb	r2, [r5, #1]
 8000b6e:	4601      	mov	r1, r0
 8000b70:	3a30      	subs	r2, #48	; 0x30
 8000b72:	b2d2      	uxtb	r2, r2
 8000b74:	4811      	ldr	r0, [pc, #68]	; (8000bbc <check_uart_cmd.part.0+0x1a0>)
 8000b76:	f000 fad7 	bl	8001128 <pid_set_parameters>
			rx_produce = 0;
 8000b7a:	2300      	movs	r3, #0
 8000b7c:	7023      	strb	r3, [r4, #0]
}
 8000b7e:	b003      	add	sp, #12
 8000b80:	bd30      	pop	{r4, r5, pc}
  This function disables IRQ interrupts by setting the I-bit in the CPSR.
  Can only be executed in Privileged modes.
 */
__attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
{
  __ASM volatile ("cpsid i" : : : "memory");
 8000b82:	b672      	cpsid	i
				step_0_cnt = 0;
 8000b84:	2300      	movs	r3, #0
 8000b86:	4914      	ldr	r1, [pc, #80]	; (8000bd8 <check_uart_cmd.part.0+0x1bc>)
				step_1_cnt = 0;			
 8000b88:	4a14      	ldr	r2, [pc, #80]	; (8000bdc <check_uart_cmd.part.0+0x1c0>)
				pid_reset (&pid [0]);
 8000b8a:	480c      	ldr	r0, [pc, #48]	; (8000bbc <check_uart_cmd.part.0+0x1a0>)
				step_0_cnt = 0;
 8000b8c:	600b      	str	r3, [r1, #0]
				step_1_cnt = 0;			
 8000b8e:	6013      	str	r3, [r2, #0]
				pid_reset (&pid [0]);
 8000b90:	f000 fab2 	bl	80010f8 <pid_reset>
  __ASM volatile ("cpsie i" : : : "memory");
 8000b94:	b662      	cpsie	i
			rx_produce = 0;
 8000b96:	2300      	movs	r3, #0
 8000b98:	7023      	strb	r3, [r4, #0]
}
 8000b9a:	b003      	add	sp, #12
 8000b9c:	bd30      	pop	{r4, r5, pc}
					flash_store_from_host (atoi (&cmd [2]), &pid [0].pid);
 8000b9e:	f000 fb95 	bl	80012cc <atoi>
 8000ba2:	4906      	ldr	r1, [pc, #24]	; (8000bbc <check_uart_cmd.part.0+0x1a0>)
 8000ba4:	b2c0      	uxtb	r0, r0
 8000ba6:	f000 f9b5 	bl	8000f14 <flash_store_from_host>
 8000baa:	e75a      	b.n	8000a62 <check_uart_cmd.part.0+0x46>
 8000bac:	20001291 	mulcs	r0, r1, r2
 8000bb0:	200001f8 	strdcs	r0, [r0], -r8
 8000bb4:	200001fa 	strdcs	r0, [r0], -sl
 8000bb8:	200001f9 	strdcs	r0, [r0], -r9
 8000bbc:	200011e0 	andcs	r1, r0, r0, ror #3
 8000bc0:	2000001c 	andcs	r0, r0, ip, lsl r0
 8000bc4:	08001d28 	stmdaeq	r0, {r3, r5, r8, sl, fp, ip}
 8000bc8:	20000238 	andcs	r0, r0, r8, lsr r2
 8000bcc:	08001d20 	stmdaeq	r0, {r5, r8, sl, fp, ip}
 8000bd0:	2000120c 	andcs	r1, r0, ip, lsl #4
 8000bd4:	200011d8 	ldrdcs	r1, [r0], -r8
 8000bd8:	20001294 	mulcs	r0, r4, r2
 8000bdc:	20001298 	mulcs	r0, r8, r2

08000be0 <EXTI15_10_IRQHandler>:
{
 8000be0:	b508      	push	{r3, lr}
	if (EXTI->PR & (1 << STEP_0_PIN))
 8000be2:	4b1b      	ldr	r3, [pc, #108]	; (8000c50 <EXTI15_10_IRQHandler+0x70>)
 8000be4:	695a      	ldr	r2, [r3, #20]
 8000be6:	0411      	lsls	r1, r2, #16
 8000be8:	d41b      	bmi.n	8000c22 <EXTI15_10_IRQHandler+0x42>
	if (EXTI->PR & (1 << STEP_1_PIN))
 8000bea:	4b19      	ldr	r3, [pc, #100]	; (8000c50 <EXTI15_10_IRQHandler+0x70>)
 8000bec:	695a      	ldr	r2, [r3, #20]
 8000bee:	0492      	lsls	r2, r2, #18
 8000bf0:	d400      	bmi.n	8000bf4 <EXTI15_10_IRQHandler+0x14>
}
 8000bf2:	bd08      	pop	{r3, pc}
		EXTI->PR |= (1 << STEP_1_PIN);
 8000bf4:	695a      	ldr	r2, [r3, #20]
		dir = (GPIOB->IDR & (1 << DIR_1_PIN)) == 0;
 8000bf6:	4917      	ldr	r1, [pc, #92]	; (8000c54 <EXTI15_10_IRQHandler+0x74>)
		EXTI->PR |= (1 << STEP_1_PIN);
 8000bf8:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000bfc:	615a      	str	r2, [r3, #20]
		dir = (GPIOB->IDR & (1 << DIR_1_PIN)) == 0;
 8000bfe:	688b      	ldr	r3, [r1, #8]
		step_1_cnt += dir - !dir;
 8000c00:	4a15      	ldr	r2, [pc, #84]	; (8000c58 <EXTI15_10_IRQHandler+0x78>)
		dir = (GPIOB->IDR & (1 << DIR_1_PIN)) == 0;
 8000c02:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8000c06:	2b00      	cmp	r3, #0
		step_1_cnt += dir - !dir;
 8000c08:	bf14      	ite	ne
 8000c0a:	f04f 33ff 	movne.w	r3, #4294967295	; 0xffffffff
 8000c0e:	2301      	moveq	r3, #1
 8000c10:	6811      	ldr	r1, [r2, #0]
		pid_set_point (&pid [1], step_1_cnt);
 8000c12:	4812      	ldr	r0, [pc, #72]	; (8000c5c <EXTI15_10_IRQHandler+0x7c>)
		step_1_cnt += dir - !dir;
 8000c14:	440b      	add	r3, r1
		pid_set_point (&pid [1], step_1_cnt);
 8000c16:	4619      	mov	r1, r3
		step_1_cnt += dir - !dir;
 8000c18:	6013      	str	r3, [r2, #0]
}
 8000c1a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
		pid_set_point (&pid [1], step_1_cnt);
 8000c1e:	f000 ba81 	b.w	8001124 <pid_set_point>
		EXTI->PR |= (1 << STEP_0_PIN);
 8000c22:	695a      	ldr	r2, [r3, #20]
		dir = (GPIOB->IDR & (1 << DIR_0_PIN)) == 0;
 8000c24:	490b      	ldr	r1, [pc, #44]	; (8000c54 <EXTI15_10_IRQHandler+0x74>)
		EXTI->PR |= (1 << STEP_0_PIN);
 8000c26:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8000c2a:	615a      	str	r2, [r3, #20]
		dir = (GPIOB->IDR & (1 << DIR_0_PIN)) == 0;
 8000c2c:	688b      	ldr	r3, [r1, #8]
		step_0_cnt += dir - !dir;
 8000c2e:	4a0c      	ldr	r2, [pc, #48]	; (8000c60 <EXTI15_10_IRQHandler+0x80>)
		dir = (GPIOB->IDR & (1 << DIR_0_PIN)) == 0;
 8000c30:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8000c34:	2b00      	cmp	r3, #0
		step_0_cnt += dir - !dir;
 8000c36:	bf14      	ite	ne
 8000c38:	f04f 33ff 	movne.w	r3, #4294967295	; 0xffffffff
 8000c3c:	2301      	moveq	r3, #1
 8000c3e:	6811      	ldr	r1, [r2, #0]
		pid_set_point (&pid [0], step_0_cnt);
 8000c40:	4808      	ldr	r0, [pc, #32]	; (8000c64 <EXTI15_10_IRQHandler+0x84>)
		step_0_cnt += dir - !dir;
 8000c42:	440b      	add	r3, r1
		pid_set_point (&pid [0], step_0_cnt);
 8000c44:	4619      	mov	r1, r3
		step_0_cnt += dir - !dir;
 8000c46:	6013      	str	r3, [r2, #0]
		pid_set_point (&pid [0], step_0_cnt);
 8000c48:	f000 fa6c 	bl	8001124 <pid_set_point>
 8000c4c:	e7cd      	b.n	8000bea <EXTI15_10_IRQHandler+0xa>
 8000c4e:	bf00      	nop
 8000c50:	40010400 	andmi	r0, r1, r0, lsl #8
 8000c54:	40010c00 	andmi	r0, r1, r0, lsl #24
 8000c58:	20001298 	mulcs	r0, r8, r2
 8000c5c:	20001238 	andcs	r1, r0, r8, lsr r2
 8000c60:	20001294 	mulcs	r0, r4, r2
 8000c64:	200011e0 	andcs	r1, r0, r0, ror #3

08000c68 <SysTick_Handler>:
	if (feedback_buf_index < BUF_SIZE)
 8000c68:	4a13      	ldr	r2, [pc, #76]	; (8000cb8 <SysTick_Handler+0x50>)
{	
 8000c6a:	b510      	push	{r4, lr}
	if (feedback_buf_index < BUF_SIZE)
 8000c6c:	f9b2 3000 	ldrsh.w	r3, [r2]
 8000c70:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 8000c74:	da07      	bge.n	8000c86 <SysTick_Handler+0x1e>
		feedback_buf [feedback_buf_index++] = *feedback_src; // Store either velocity or position
 8000c76:	4811      	ldr	r0, [pc, #68]	; (8000cbc <SysTick_Handler+0x54>)
 8000c78:	4911      	ldr	r1, [pc, #68]	; (8000cc0 <SysTick_Handler+0x58>)
 8000c7a:	6800      	ldr	r0, [r0, #0]
 8000c7c:	1c5c      	adds	r4, r3, #1
 8000c7e:	6800      	ldr	r0, [r0, #0]
 8000c80:	8014      	strh	r4, [r2, #0]
 8000c82:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
	resampler_250Hz = (resampler_250Hz + 1) & 0x03;
 8000c86:	4c0f      	ldr	r4, [pc, #60]	; (8000cc4 <SysTick_Handler+0x5c>)
	pid_update (&pid [0], resampler_250Hz == 0x03);	
 8000c88:	480f      	ldr	r0, [pc, #60]	; (8000cc8 <SysTick_Handler+0x60>)
	resampler_250Hz = (resampler_250Hz + 1) & 0x03;
 8000c8a:	7823      	ldrb	r3, [r4, #0]
 8000c8c:	3301      	adds	r3, #1
 8000c8e:	f003 0303 	and.w	r3, r3, #3
	pid_update (&pid [0], resampler_250Hz == 0x03);	
 8000c92:	f1a3 0103 	sub.w	r1, r3, #3
 8000c96:	fab1 f181 	clz	r1, r1
 8000c9a:	0949      	lsrs	r1, r1, #5
	resampler_250Hz = (resampler_250Hz + 1) & 0x03;
 8000c9c:	7023      	strb	r3, [r4, #0]
	pid_update (&pid [0], resampler_250Hz == 0x03);	
 8000c9e:	f000 fa5f 	bl	8001160 <pid_update>
	pid_update (&pid [1], resampler_250Hz == 0x03);
 8000ca2:	7821      	ldrb	r1, [r4, #0]
 8000ca4:	4809      	ldr	r0, [pc, #36]	; (8000ccc <SysTick_Handler+0x64>)
 8000ca6:	f1a1 0103 	sub.w	r1, r1, #3
 8000caa:	fab1 f181 	clz	r1, r1
}
 8000cae:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
	pid_update (&pid [1], resampler_250Hz == 0x03);
 8000cb2:	0949      	lsrs	r1, r1, #5
 8000cb4:	f000 ba54 	b.w	8001160 <pid_update>
 8000cb8:	2000001c 	andcs	r0, r0, ip, lsl r0
 8000cbc:	200011d8 	ldrdcs	r1, [r0], -r8
 8000cc0:	20000238 	andcs	r0, r0, r8, lsr r2
 8000cc4:	20001290 	mulcs	r0, r0, r2
 8000cc8:	200011e0 	andcs	r1, r0, r0, ror #3
 8000ccc:	20001238 	andcs	r1, r0, r8, lsr r2

08000cd0 <main>:

/* ------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------ */

void main (void)
{	
 8000cd0:	b500      	push	{lr}
	
	/* Unblocking flash memory for write by software */
	FLASH->KEYR = 0x45670123;
 8000cd2:	4b1b      	ldr	r3, [pc, #108]	; (8000d40 <main+0x70>)
 8000cd4:	491b      	ldr	r1, [pc, #108]	; (8000d44 <main+0x74>)
	FLASH->KEYR = 0xCDEF89AB;
 8000cd6:	4a1c      	ldr	r2, [pc, #112]	; (8000d48 <main+0x78>)
{	
 8000cd8:	b083      	sub	sp, #12
	FLASH->KEYR = 0x45670123;
 8000cda:	6059      	str	r1, [r3, #4]
	FLASH->KEYR = 0xCDEF89AB;
 8000cdc:	605a      	str	r2, [r3, #4]

	/* Peripheral initialization */
	periph_init ();
 8000cde:	f000 f975 	bl	8000fcc <periph_init>
	
	/* UART initialization */
	uart_init ();
 8000ce2:	f000 f8cd 	bl	8000e80 <uart_init>
	
	/* PID 0 initialization */
	pid_init (	&pid [0],				// Memory pointer to arm_pid_t struct
 8000ce6:	4b19      	ldr	r3, [pc, #100]	; (8000d4c <main+0x7c>)
 8000ce8:	4a19      	ldr	r2, [pc, #100]	; (8000d50 <main+0x80>)
 8000cea:	491a      	ldr	r1, [pc, #104]	; (8000d54 <main+0x84>)
 8000cec:	e9cd 3200 	strd	r3, r2, [sp]
 8000cf0:	4819      	ldr	r0, [pc, #100]	; (8000d58 <main+0x88>)
 8000cf2:	3b04      	subs	r3, #4
 8000cf4:	22ff      	movs	r2, #255	; 0xff
 8000cf6:	f000 fac9 	bl	800128c <pid_init>
				(uint32_t *) &PWM1_N,	// Memory pointer to TIMx->CCRx register (channel 2)
				(uint32_t *) &ENC_0		// Memory pointer to TIMx->CNT register	 (encoder counter)
	);

	/* PID 1 initialization */
	pid_init (&pid [1], &pid_eeprom [1], PWM_MAX_VAL, 
 8000cfa:	4b18      	ldr	r3, [pc, #96]	; (8000d5c <main+0x8c>)
 8000cfc:	4a18      	ldr	r2, [pc, #96]	; (8000d60 <main+0x90>)
 8000cfe:	4919      	ldr	r1, [pc, #100]	; (8000d64 <main+0x94>)
 8000d00:	e9cd 3200 	strd	r3, r2, [sp]
 8000d04:	4818      	ldr	r0, [pc, #96]	; (8000d68 <main+0x98>)
 8000d06:	3b04      	subs	r3, #4
 8000d08:	22ff      	movs	r2, #255	; 0xff
 8000d0a:	f000 fabf 	bl	800128c <pid_init>
 8000d0e:	b662      	cpsie	i
 8000d10:	4c16      	ldr	r4, [pc, #88]	; (8000d6c <main+0x9c>)
 8000d12:	4d17      	ldr	r5, [pc, #92]	; (8000d70 <main+0xa0>)
	if (uart_read_nonblock ())						// Check if a char exist in rx_buffer
 8000d14:	f000 f880 	bl	8000e18 <uart_read_nonblock>
 8000d18:	2800      	cmp	r0, #0
 8000d1a:	d0fb      	beq.n	8000d14 <main+0x44>
		char buf = uart_read ();					// Read that char from rx_buffer
 8000d1c:	f000 f868 	bl	8000df0 <uart_read>
		if (buf == '\r' || buf == '\n')				// If character either "return carriage" 
 8000d20:	280d      	cmp	r0, #13
 8000d22:	d009      	beq.n	8000d38 <main+0x68>
 8000d24:	280a      	cmp	r0, #10
 8000d26:	d007      	beq.n	8000d38 <main+0x68>
			cmd [rx_produce] = buf;
 8000d28:	f994 2000 	ldrsb.w	r2, [r4]
			rx_produce = (rx_produce + 1) & 63;		// Ringbuffer				
 8000d2c:	1c53      	adds	r3, r2, #1
 8000d2e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
			cmd [rx_produce] = buf;
 8000d32:	54a8      	strb	r0, [r5, r2]
			rx_produce = (rx_produce + 1) & 63;		// Ringbuffer				
 8000d34:	7023      	strb	r3, [r4, #0]
 8000d36:	e7ed      	b.n	8000d14 <main+0x44>
 8000d38:	f7ff fe70 	bl	8000a1c <check_uart_cmd.part.0>
 8000d3c:	e7ea      	b.n	8000d14 <main+0x44>
 8000d3e:	bf00      	nop
 8000d40:	40022000 	andmi	r2, r2, r0
 8000d44:	45670123 	strbmi	r0, [r7, #-291]!	; 0xfffffedd
 8000d48:	cdef89ab 			; <UNDEFINED> instruction: 0xcdef89ab
 8000d4c:	40000840 	andmi	r0, r0, r0, asr #16
 8000d50:	40000024 	andmi	r0, r0, r4, lsr #32
 8000d54:	08000400 	stmdaeq	r0, {sl}
 8000d58:	200011e0 	andcs	r1, r0, r0, ror #3
 8000d5c:	40000838 	andmi	r0, r0, r8, lsr r8
 8000d60:	40000424 	andmi	r0, r0, r4, lsr #8
 8000d64:	08000420 	stmdaeq	r0, {r5, sl}
 8000d68:	20001238 	andcs	r1, r0, r8, lsr r2
 8000d6c:	20001291 	mulcs	r0, r1, r2
 8000d70:	200001f8 	strdcs	r0, [r0], -r8

08000d74 <USART2_IRQHandler>:
static unsigned int tx_consume;
static volatile int tx_cts;

void USART2_IRQHandler (void)
{
	if (USART2->SR & USART_SR_TC) {                                     // Check interrupt source
 8000d74:	4a17      	ldr	r2, [pc, #92]	; (8000dd4 <USART2_IRQHandler+0x60>)
{
 8000d76:	b410      	push	{r4}
	if (USART2->SR & USART_SR_TC) {                                     // Check interrupt source
 8000d78:	8813      	ldrh	r3, [r2, #0]
 8000d7a:	0659      	lsls	r1, r3, #25
 8000d7c:	d511      	bpl.n	8000da2 <USART2_IRQHandler+0x2e>
		USART2->SR &= ~USART_SR_TC;                                     // Clear pending bit
 8000d7e:	8813      	ldrh	r3, [r2, #0]
		if (tx_produce != tx_consume) {
 8000d80:	4915      	ldr	r1, [pc, #84]	; (8000dd8 <USART2_IRQHandler+0x64>)
		USART2->SR &= ~USART_SR_TC;                                     // Clear pending bit
 8000d82:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000d86:	041b      	lsls	r3, r3, #16
		if (tx_produce != tx_consume) {
 8000d88:	4814      	ldr	r0, [pc, #80]	; (8000ddc <USART2_IRQHandler+0x68>)
		USART2->SR &= ~USART_SR_TC;                                     // Clear pending bit
 8000d8a:	0c1b      	lsrs	r3, r3, #16
 8000d8c:	8013      	strh	r3, [r2, #0]
		if (tx_produce != tx_consume) {
 8000d8e:	6800      	ldr	r0, [r0, #0]
 8000d90:	680b      	ldr	r3, [r1, #0]
 8000d92:	4298      	cmp	r0, r3
 8000d94:	d01a      	beq.n	8000dcc <USART2_IRQHandler+0x58>
			USART2->DR = (uint8_t) tx_buf [tx_consume];                 // Send byte through UART
 8000d96:	4c12      	ldr	r4, [pc, #72]	; (8000de0 <USART2_IRQHandler+0x6c>)
			tx_consume = (tx_consume + 1) & UART_RINGBUFFER_MASK_TX;
 8000d98:	1c58      	adds	r0, r3, #1
			USART2->DR = (uint8_t) tx_buf [tx_consume];                 // Send byte through UART
 8000d9a:	5ce4      	ldrb	r4, [r4, r3]
			tx_consume = (tx_consume + 1) & UART_RINGBUFFER_MASK_TX;
 8000d9c:	b2c0      	uxtb	r0, r0
			USART2->DR = (uint8_t) tx_buf [tx_consume];                 // Send byte through UART
 8000d9e:	8094      	strh	r4, [r2, #4]
			tx_consume = (tx_consume + 1) & UART_RINGBUFFER_MASK_TX;
 8000da0:	6008      	str	r0, [r1, #0]
		} else
			tx_cts = 1;
	}
	
	if (USART2->SR & USART_SR_RXNE) {
 8000da2:	4a0c      	ldr	r2, [pc, #48]	; (8000dd4 <USART2_IRQHandler+0x60>)
 8000da4:	8813      	ldrh	r3, [r2, #0]
 8000da6:	069b      	lsls	r3, r3, #26
 8000da8:	d50e      	bpl.n	8000dc8 <USART2_IRQHandler+0x54>
		USART2->SR &= ~USART_SR_RXNE;
 8000daa:	8813      	ldrh	r3, [r2, #0]
		rx_buf[rx_produce] = (uint8_t) USART2->DR & 0xff;               // Receive byte from UART
 8000dac:	490d      	ldr	r1, [pc, #52]	; (8000de4 <USART2_IRQHandler+0x70>)
		USART2->SR &= ~USART_SR_RXNE;
 8000dae:	f023 0320 	bic.w	r3, r3, #32
 8000db2:	041b      	lsls	r3, r3, #16
 8000db4:	0c1b      	lsrs	r3, r3, #16
 8000db6:	8013      	strh	r3, [r2, #0]
		rx_buf[rx_produce] = (uint8_t) USART2->DR & 0xff;               // Receive byte from UART
 8000db8:	8894      	ldrh	r4, [r2, #4]
 8000dba:	680a      	ldr	r2, [r1, #0]
		rx_produce = (rx_produce + 1) & UART_RINGBUFFER_MASK_RX;
 8000dbc:	680b      	ldr	r3, [r1, #0]
		rx_buf[rx_produce] = (uint8_t) USART2->DR & 0xff;               // Receive byte from UART
 8000dbe:	480a      	ldr	r0, [pc, #40]	; (8000de8 <USART2_IRQHandler+0x74>)
		rx_produce = (rx_produce + 1) & UART_RINGBUFFER_MASK_RX;
 8000dc0:	3301      	adds	r3, #1
 8000dc2:	b2db      	uxtb	r3, r3
		rx_buf[rx_produce] = (uint8_t) USART2->DR & 0xff;               // Receive byte from UART
 8000dc4:	5484      	strb	r4, [r0, r2]
		rx_produce = (rx_produce + 1) & UART_RINGBUFFER_MASK_RX;
 8000dc6:	600b      	str	r3, [r1, #0]
	}
}
 8000dc8:	bc10      	pop	{r4}
 8000dca:	4770      	bx	lr
			tx_cts = 1;
 8000dcc:	2201      	movs	r2, #1
 8000dce:	4b07      	ldr	r3, [pc, #28]	; (8000dec <USART2_IRQHandler+0x78>)
 8000dd0:	601a      	str	r2, [r3, #0]
 8000dd2:	e7e6      	b.n	8000da2 <USART2_IRQHandler+0x2e>
 8000dd4:	40004400 	andmi	r4, r0, r0, lsl #8
 8000dd8:	200014a4 	andcs	r1, r0, r4, lsr #9
 8000ddc:	200014ac 	andcs	r1, r0, ip, lsr #9
 8000de0:	200013a4 	andcs	r1, r0, r4, lsr #7
 8000de4:	200013a0 	andcs	r1, r0, r0, lsr #7
 8000de8:	2000129c 	mulcs	r0, ip, r2
 8000dec:	200014a8 	andcs	r1, r0, r8, lsr #9

08000df0 <uart_read>:

/* Do not use in interrupt handlers! */
char uart_read (void)
{
 8000df0:	4906      	ldr	r1, [pc, #24]	; (8000e0c <uart_read+0x1c>)
 8000df2:	4807      	ldr	r0, [pc, #28]	; (8000e10 <uart_read+0x20>)
	char c;

	while (rx_consume == rx_produce);
 8000df4:	680a      	ldr	r2, [r1, #0]
 8000df6:	6803      	ldr	r3, [r0, #0]
 8000df8:	429a      	cmp	r2, r3
 8000dfa:	d0fb      	beq.n	8000df4 <uart_read+0x4>
	c = rx_buf [rx_consume];
 8000dfc:	680a      	ldr	r2, [r1, #0]
	rx_consume = (rx_consume + 1) & UART_RINGBUFFER_MASK_RX;
 8000dfe:	680b      	ldr	r3, [r1, #0]
	c = rx_buf [rx_consume];
 8000e00:	4804      	ldr	r0, [pc, #16]	; (8000e14 <uart_read+0x24>)
	rx_consume = (rx_consume + 1) & UART_RINGBUFFER_MASK_RX;
 8000e02:	3301      	adds	r3, #1
 8000e04:	b2db      	uxtb	r3, r3
	c = rx_buf [rx_consume];
 8000e06:	5680      	ldrsb	r0, [r0, r2]
	rx_consume = (rx_consume + 1) & UART_RINGBUFFER_MASK_RX;
 8000e08:	600b      	str	r3, [r1, #0]
	return c;
}
 8000e0a:	4770      	bx	lr
 8000e0c:	2000139c 	mulcs	r0, ip, r3
 8000e10:	200013a0 	andcs	r1, r0, r0, lsr #7
 8000e14:	2000129c 	mulcs	r0, ip, r2

08000e18 <uart_read_nonblock>:

int uart_read_nonblock (void)
{
	return (rx_consume != rx_produce);
 8000e18:	4a03      	ldr	r2, [pc, #12]	; (8000e28 <uart_read_nonblock+0x10>)
 8000e1a:	4b04      	ldr	r3, [pc, #16]	; (8000e2c <uart_read_nonblock+0x14>)
 8000e1c:	6810      	ldr	r0, [r2, #0]
 8000e1e:	681b      	ldr	r3, [r3, #0]
}
 8000e20:	1ac0      	subs	r0, r0, r3
 8000e22:	bf18      	it	ne
 8000e24:	2001      	movne	r0, #1
 8000e26:	4770      	bx	lr
 8000e28:	2000139c 	mulcs	r0, ip, r3
 8000e2c:	200013a0 	andcs	r1, r0, r0, lsr #7

08000e30 <uart_print>:
		tx_produce = (tx_produce + 1) & UART_RINGBUFFER_MASK_TX;
	}
}

void uart_print (char *msg)
{
 8000e30:	b4f0      	push	{r4, r5, r6, r7}
	while (*msg != 0) uart_write (*msg++);
 8000e32:	2700      	movs	r7, #0
 8000e34:	f8df c044 	ldr.w	ip, [pc, #68]	; 8000e7c <uart_print+0x4c>
 8000e38:	3801      	subs	r0, #1
 8000e3a:	f8dc 6000 	ldr.w	r6, [ip]
 8000e3e:	f910 3f01 	ldrsb.w	r3, [r0, #1]!
	if (tx_cts) {
 8000e42:	4a0b      	ldr	r2, [pc, #44]	; (8000e70 <uart_print+0x40>)
		USART2->DR = (uint8_t) c;
 8000e44:	4d0b      	ldr	r5, [pc, #44]	; (8000e74 <uart_print+0x44>)
 8000e46:	b2dc      	uxtb	r4, r3
	while (*msg != 0) uart_write (*msg++);
 8000e48:	b15b      	cbz	r3, 8000e62 <uart_print+0x32>
	if (tx_cts) {
 8000e4a:	6811      	ldr	r1, [r2, #0]
 8000e4c:	b119      	cbz	r1, 8000e56 <uart_print+0x26>
		tx_cts = 0;
 8000e4e:	2300      	movs	r3, #0
 8000e50:	6013      	str	r3, [r2, #0]
		USART2->DR = (uint8_t) c;
 8000e52:	80ac      	strh	r4, [r5, #4]
 8000e54:	e7f3      	b.n	8000e3e <uart_print+0xe>
		tx_produce = (tx_produce + 1) & UART_RINGBUFFER_MASK_TX;
 8000e56:	2701      	movs	r7, #1
		tx_buf [tx_produce] = c;
 8000e58:	4907      	ldr	r1, [pc, #28]	; (8000e78 <uart_print+0x48>)
		tx_produce = (tx_produce + 1) & UART_RINGBUFFER_MASK_TX;
 8000e5a:	19f2      	adds	r2, r6, r7
		tx_buf [tx_produce] = c;
 8000e5c:	558b      	strb	r3, [r1, r6]
		tx_produce = (tx_produce + 1) & UART_RINGBUFFER_MASK_TX;
 8000e5e:	b2d6      	uxtb	r6, r2
 8000e60:	e7ed      	b.n	8000e3e <uart_print+0xe>
 8000e62:	b90f      	cbnz	r7, 8000e68 <uart_print+0x38>
}
 8000e64:	bcf0      	pop	{r4, r5, r6, r7}
 8000e66:	4770      	bx	lr
 8000e68:	f8cc 6000 	str.w	r6, [ip]
 8000e6c:	e7fa      	b.n	8000e64 <uart_print+0x34>
 8000e6e:	bf00      	nop
 8000e70:	200014a8 	andcs	r1, r0, r8, lsr #9
 8000e74:	40004400 	andmi	r4, r0, r0, lsl #8
 8000e78:	200013a4 	andcs	r1, r0, r4, lsr #7
 8000e7c:	200014ac 	andcs	r1, r0, ip, lsr #9

08000e80 <uart_init>:

void uart_init ()
{
 8000e80:	b470      	push	{r4, r5, r6}
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
	
/*	PA2 - UartTx, PA3 - UartRx */
	GPIOA->CRL	&= 0xFFFF00FF; 
	GPIOA->CRL  |= 0x00008A00;
	GPIOA->BSRR	 = 0x12;									// pull up PA2 & PA3 
 8000e82:	2612      	movs	r6, #18
	
	const uint32_t baudrate = 115200;//3000000;//921600;
	const uint32_t integer  = ((25 * 36000000) / (4 * baudrate));
	const uint32_t fract    = ((((integer * 16) + 50) / 100)) & ((uint8_t) 0x0F);

	USART2->BRR = ((integer / 100) << 4) | fract;
 8000e84:	f44f 759c 	mov.w	r5, #312	; 0x138
	USART2->CR1 = USART_CR1_UE | USART_CR1_RE   |
 8000e88:	f242 046c 	movw	r4, #8300	; 0x206c
  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* enable interrupt */
 8000e8c:	2040      	movs	r0, #64	; 0x40
	RCC->APB2ENR |= RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN;
 8000e8e:	4a0d      	ldr	r2, [pc, #52]	; (8000ec4 <uart_init+0x44>)
 8000e90:	6993      	ldr	r3, [r2, #24]
 8000e92:	f043 0305 	orr.w	r3, r3, #5
 8000e96:	6193      	str	r3, [r2, #24]
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
 8000e98:	69d1      	ldr	r1, [r2, #28]
	GPIOA->CRL	&= 0xFFFF00FF; 
 8000e9a:	4b0b      	ldr	r3, [pc, #44]	; (8000ec8 <uart_init+0x48>)
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
 8000e9c:	f441 3100 	orr.w	r1, r1, #131072	; 0x20000
 8000ea0:	61d1      	str	r1, [r2, #28]
	GPIOA->CRL	&= 0xFFFF00FF; 
 8000ea2:	681a      	ldr	r2, [r3, #0]
	USART2->BRR = ((integer / 100) << 4) | fract;
 8000ea4:	4909      	ldr	r1, [pc, #36]	; (8000ecc <uart_init+0x4c>)
	GPIOA->CRL	&= 0xFFFF00FF; 
 8000ea6:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
 8000eaa:	601a      	str	r2, [r3, #0]
	GPIOA->CRL  |= 0x00008A00;
 8000eac:	681a      	ldr	r2, [r3, #0]
 8000eae:	f442 420a 	orr.w	r2, r2, #35328	; 0x8a00
 8000eb2:	601a      	str	r2, [r3, #0]
	GPIOA->BSRR	 = 0x12;									// pull up PA2 & PA3 
 8000eb4:	611e      	str	r6, [r3, #16]
 8000eb6:	4b06      	ldr	r3, [pc, #24]	; (8000ed0 <uart_init+0x50>)
	USART2->BRR = ((integer / 100) << 4) | fract;
 8000eb8:	810d      	strh	r5, [r1, #8]
	USART2->CR1 = USART_CR1_UE | USART_CR1_RE   |
 8000eba:	818c      	strh	r4, [r1, #12]
 8000ebc:	6058      	str	r0, [r3, #4]
				  USART_CR1_TE | USART_CR1_TCIE |
				  USART_CR1_RXNEIE;							// Enable USART2, Transmit complete IRQ, Received byte IRQ
				  
	NVIC_EnableIRQ (USART2_IRQn);							// USART2 interrupt enable	
}
 8000ebe:	bc70      	pop	{r4, r5, r6}
 8000ec0:	4770      	bx	lr
 8000ec2:	bf00      	nop
 8000ec4:	40021000 	andmi	r1, r2, r0
 8000ec8:	40010800 	andmi	r0, r1, r0, lsl #16
 8000ecc:	40004400 	andmi	r4, r0, r0, lsl #8
 8000ed0:	e000e100 	and	lr, r0, r0, lsl #2

08000ed4 <flash_load_to_host>:
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}
};

void flash_load_to_host (uint8_t cell)
{
 8000ed4:	b530      	push	{r4, r5, lr}
	char str [256];
	snprintf (str, 256, "%ld, %ld, %ld, %ld, %ld, %ld\n", 
 8000ed6:	4b0d      	ldr	r3, [pc, #52]	; (8000f0c <flash_load_to_host+0x38>)
 8000ed8:	0140      	lsls	r0, r0, #5
 8000eda:	181a      	adds	r2, r3, r0
 8000edc:	e9d2 4504 	ldrd	r4, r5, [r2, #16]
 8000ee0:	581b      	ldr	r3, [r3, r0]
 8000ee2:	e9d2 1002 	ldrd	r1, r0, [r2, #8]
 8000ee6:	6852      	ldr	r2, [r2, #4]
{
 8000ee8:	b0c7      	sub	sp, #284	; 0x11c
	snprintf (str, 256, "%ld, %ld, %ld, %ld, %ld, %ld\n", 
 8000eea:	e9cd 1001 	strd	r1, r0, [sp, #4]
 8000eee:	9200      	str	r2, [sp, #0]
 8000ef0:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000ef4:	4a06      	ldr	r2, [pc, #24]	; (8000f10 <flash_load_to_host+0x3c>)
 8000ef6:	e9cd 4503 	strd	r4, r5, [sp, #12]
 8000efa:	a806      	add	r0, sp, #24
 8000efc:	f000 fa04 	bl	8001308 <sniprintf>
		pid_eeprom [cell].VL, pid_eeprom [cell].Kf, 
		pid_eeprom [cell].Kp, pid_eeprom [cell].Ki, 
		pid_eeprom [cell].Kd, pid_eeprom [cell].Kg);
	uart_print (str);
 8000f00:	a806      	add	r0, sp, #24
 8000f02:	f7ff ff95 	bl	8000e30 <uart_print>
}
 8000f06:	b047      	add	sp, #284	; 0x11c
 8000f08:	bd30      	pop	{r4, r5, pc}
 8000f0a:	bf00      	nop
 8000f0c:	08000400 	stmdaeq	r0, {sl}
 8000f10:	08001d2c 	stmdaeq	r0, {r2, r3, r5, r8, sl, fp, ip}

08000f14 <flash_store_from_host>:

void flash_store_from_host (uint8_t cell, arm_pid_instance_t *pid)
{	
 8000f14:	b570      	push	{r4, r5, r6, lr}
 8000f16:	4605      	mov	r5, r0
 8000f18:	460e      	mov	r6, r1
	arm_pid_instance_t epid [CELL_COUNT + 1];
	
	memcpy (epid, pid_eeprom, sizeof (arm_pid_instance_t) * CELL_COUNT);
 8000f1a:	4c2a      	ldr	r4, [pc, #168]	; (8000fc4 <flash_store_from_host+0xb0>)
{	
 8000f1c:	b0c8      	sub	sp, #288	; 0x120
	memcpy (epid, pid_eeprom, sizeof (arm_pid_instance_t) * CELL_COUNT);
 8000f1e:	4621      	mov	r1, r4
 8000f20:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000f24:	4668      	mov	r0, sp
 8000f26:	f000 f9e3 	bl	80012f0 <memcpy>
	memcpy (&epid [cell], pid, sizeof (arm_pid_instance_t));
 8000f2a:	4631      	mov	r1, r6
 8000f2c:	eb0d 1045 	add.w	r0, sp, r5, lsl #5
 8000f30:	2220      	movs	r2, #32
 8000f32:	f000 f9dd 	bl	80012f0 <memcpy>
	flash_write ((unsigned char *) &epid[0], (unsigned int) &pid_eeprom [0], sizeof (arm_pid_instance_t) * (CELL_COUNT + 1));
}

static void flash_erase (unsigned int pageAddress) 
{
	while (FLASH->SR & FLASH_SR_BSY);
 8000f36:	4b24      	ldr	r3, [pc, #144]	; (8000fc8 <flash_store_from_host+0xb4>)
 8000f38:	68da      	ldr	r2, [r3, #12]
 8000f3a:	07d2      	lsls	r2, r2, #31
 8000f3c:	d4fb      	bmi.n	8000f36 <flash_store_from_host+0x22>
	if (FLASH->SR & FLASH_SR_EOP) {
 8000f3e:	68da      	ldr	r2, [r3, #12]
 8000f40:	0696      	lsls	r6, r2, #26
		FLASH->SR = FLASH_SR_EOP;
 8000f42:	bf44      	itt	mi
 8000f44:	2220      	movmi	r2, #32
 8000f46:	60da      	strmi	r2, [r3, #12]
	}

	FLASH->CR |= FLASH_CR_PER;
 8000f48:	4b1f      	ldr	r3, [pc, #124]	; (8000fc8 <flash_store_from_host+0xb4>)
 8000f4a:	691a      	ldr	r2, [r3, #16]
 8000f4c:	f042 0202 	orr.w	r2, r2, #2
 8000f50:	611a      	str	r2, [r3, #16]
	FLASH->AR = pageAddress;
 8000f52:	615c      	str	r4, [r3, #20]
	FLASH->CR |= FLASH_CR_STRT;
 8000f54:	691a      	ldr	r2, [r3, #16]
 8000f56:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8000f5a:	611a      	str	r2, [r3, #16]
	while (!(FLASH->SR & FLASH_SR_EOP));
 8000f5c:	4b1a      	ldr	r3, [pc, #104]	; (8000fc8 <flash_store_from_host+0xb4>)
 8000f5e:	68da      	ldr	r2, [r3, #12]
 8000f60:	0695      	lsls	r5, r2, #26
 8000f62:	d5fb      	bpl.n	8000f5c <flash_store_from_host+0x48>
	FLASH->SR = FLASH_SR_EOP;
 8000f64:	2220      	movs	r2, #32
 8000f66:	60da      	str	r2, [r3, #12]
	FLASH->CR &= ~FLASH_CR_PER;
 8000f68:	691a      	ldr	r2, [r3, #16]
 8000f6a:	f022 0202 	bic.w	r2, r2, #2
 8000f6e:	611a      	str	r2, [r3, #16]
// count - write byte count; should be a multiple of 2
static void flash_write (unsigned char* data, unsigned int address, unsigned int count) 
{
	unsigned int i;

	while (FLASH->SR & FLASH_SR_BSY);
 8000f70:	4b15      	ldr	r3, [pc, #84]	; (8000fc8 <flash_store_from_host+0xb4>)
 8000f72:	68da      	ldr	r2, [r3, #12]
 8000f74:	07d0      	lsls	r0, r2, #31
 8000f76:	d4fb      	bmi.n	8000f70 <flash_store_from_host+0x5c>
	if (FLASH->SR & FLASH_SR_EOP) 
 8000f78:	68da      	ldr	r2, [r3, #12]
 8000f7a:	0691      	lsls	r1, r2, #26
	{
		FLASH->SR = FLASH_SR_EOP;
 8000f7c:	bf48      	it	mi
 8000f7e:	2220      	movmi	r2, #32
	}

	FLASH->CR |= FLASH_CR_PG;

	for (i = 0; i < count; i += 2) 
 8000f80:	f04f 0100 	mov.w	r1, #0
		FLASH->SR = FLASH_SR_EOP;
 8000f84:	bf48      	it	mi
 8000f86:	60da      	strmi	r2, [r3, #12]
	FLASH->CR |= FLASH_CR_PG;
 8000f88:	4a0f      	ldr	r2, [pc, #60]	; (8000fc8 <flash_store_from_host+0xb4>)
 8000f8a:	6913      	ldr	r3, [r2, #16]
 8000f8c:	f043 0301 	orr.w	r3, r3, #1
 8000f90:	6113      	str	r3, [r2, #16]
	{
		*(volatile unsigned short*) (address + i) = (((unsigned short) data[i + 1]) << 8) + data[i];
 8000f92:	eb0d 0301 	add.w	r3, sp, r1
 8000f96:	785a      	ldrb	r2, [r3, #1]
 8000f98:	f81d 3001 	ldrb.w	r3, [sp, r1]
 8000f9c:	eb03 2302 	add.w	r3, r3, r2, lsl #8
 8000fa0:	b29b      	uxth	r3, r3
 8000fa2:	5263      	strh	r3, [r4, r1]
		while (!(FLASH->SR & FLASH_SR_EOP));
 8000fa4:	4b08      	ldr	r3, [pc, #32]	; (8000fc8 <flash_store_from_host+0xb4>)
 8000fa6:	68da      	ldr	r2, [r3, #12]
 8000fa8:	0692      	lsls	r2, r2, #26
 8000faa:	d5fb      	bpl.n	8000fa4 <flash_store_from_host+0x90>
		FLASH->SR = FLASH_SR_EOP;
 8000fac:	2220      	movs	r2, #32
	for (i = 0; i < count; i += 2) 
 8000fae:	3102      	adds	r1, #2
 8000fb0:	f5b1 7f90 	cmp.w	r1, #288	; 0x120
		FLASH->SR = FLASH_SR_EOP;
 8000fb4:	60da      	str	r2, [r3, #12]
	for (i = 0; i < count; i += 2) 
 8000fb6:	d1ec      	bne.n	8000f92 <flash_store_from_host+0x7e>
	}

	FLASH->CR &= ~(FLASH_CR_PG);
 8000fb8:	691a      	ldr	r2, [r3, #16]
 8000fba:	f022 0201 	bic.w	r2, r2, #1
 8000fbe:	611a      	str	r2, [r3, #16]
}
 8000fc0:	b048      	add	sp, #288	; 0x120
 8000fc2:	bd70      	pop	{r4, r5, r6, pc}
 8000fc4:	08000400 	stmdaeq	r0, {sl}
 8000fc8:	40022000 	andmi	r2, r2, r0

08000fcc <periph_init>:
#include "cmsis_device.h"
#include "pid_def.h"

void periph_init (void)
{
 8000fcc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	 * PA8 - Dir, PA9 - Step
	 *
	 */
	 
	GPIOA->CRL  = 0x88444488;								// PA0, PA1, PA6, PA7 - Input pull-up mode
	GPIOA->BSRR = 0x000000C3;								// Set pull-up for above pins
 8000fd0:	25c3      	movs	r5, #195	; 0xc3
		
/* ------------------------------------------------------------------------------------------------------ */
/* -- TIM2, TIM3 - configuration (Encoders) ------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------ */

	TIM2->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;		// Rising level on both TI1 and TI2
 8000fd2:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
	TIM2->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;		// CC1 at TI1, CC2 at TI2
 8000fd6:	f240 1401 	movw	r4, #257	; 0x101
	TIM2->ARR	 = 0xffff;									// Max counter value is 65535
 8000fda:	f64f 76ff 	movw	r6, #65535	; 0xffff
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_IOPBEN | RCC_APB2ENR_AFIOEN); 	// GPIOA, GPIOB, ALTFUNC
 8000fde:	4b3d      	ldr	r3, [pc, #244]	; (80010d4 <periph_init+0x108>)
	GPIOA->CRL  = 0x88444488;								// PA0, PA1, PA6, PA7 - Input pull-up mode
 8000fe0:	483d      	ldr	r0, [pc, #244]	; (80010d8 <periph_init+0x10c>)
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_IOPBEN | RCC_APB2ENR_AFIOEN); 	// GPIOA, GPIOB, ALTFUNC
 8000fe2:	6999      	ldr	r1, [r3, #24]
	GPIOB->CRH &= 0x0000FFFF;
	GPIOB->CRH |= 0x88880000;								// PB15-12 -- Input pull-down
	GPIOB->ODR &= 0xFFFF0FFF;								// Set pull-down
	
	
	AFIO->EXTICR[3] = 0x1010;								// Set PB15 & PB13 as EXTI
 8000fe4:	f241 0910 	movw	r9, #4112	; 0x1010
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_IOPBEN | RCC_APB2ENR_AFIOEN); 	// GPIOA, GPIOB, ALTFUNC
 8000fe8:	f041 010d 	orr.w	r1, r1, #13
 8000fec:	6199      	str	r1, [r3, #24]
	RCC->APB1ENR |= (RCC_APB1ENR_TIM2EN | RCC_APB1ENR_TIM3EN | RCC_APB1ENR_TIM4EN);		// TIM2, TIM3, TIM4	
 8000fee:	69d9      	ldr	r1, [r3, #28]
 8000ff0:	f44f 7880 	mov.w	r8, #256	; 0x100
 8000ff4:	f041 0107 	orr.w	r1, r1, #7
 8000ff8:	61d9      	str	r1, [r3, #28]
	GPIOA->CRL  = 0x88444488;								// PA0, PA1, PA6, PA7 - Input pull-up mode
 8000ffa:	4938      	ldr	r1, [pc, #224]	; (80010dc <periph_init+0x110>)
	GPIOB->CRL = 0xAA444444;								// PB6, PB7 - AF push/pull 2MHz output mode
 8000ffc:	f5a3 3382 	sub.w	r3, r3, #66560	; 0x10400
	GPIOA->CRL  = 0x88444488;								// PA0, PA1, PA6, PA7 - Input pull-up mode
 8001000:	6001      	str	r1, [r0, #0]
	GPIOA->BSRR = 0x000000C3;								// Set pull-up for above pins
 8001002:	6105      	str	r5, [r0, #16]
	GPIOB->CRH = 0x444444AA;								// PB8, PB9 - AF push/pull 2MHz output mode
 8001004:	f101 413c 	add.w	r1, r1, #3154116608	; 0xbc000000
	GPIOB->CRL = 0xAA444444;								// PB6, PB7 - AF push/pull 2MHz output mode
 8001008:	4835      	ldr	r0, [pc, #212]	; (80010e0 <periph_init+0x114>)
	GPIOB->CRH = 0x444444AA;								// PB8, PB9 - AF push/pull 2MHz output mode
 800100a:	3122      	adds	r1, #34	; 0x22
	GPIOB->CRL = 0xAA444444;								// PB6, PB7 - AF push/pull 2MHz output mode
 800100c:	6018      	str	r0, [r3, #0]
	GPIOB->CRH = 0x444444AA;								// PB8, PB9 - AF push/pull 2MHz output mode
 800100e:	6059      	str	r1, [r3, #4]
	TIM2->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;		// Rising level on both TI1 and TI2
 8001010:	8911      	ldrh	r1, [r2, #8]
	EXTI->IMR	= 0xA000;									// Unmask PB15 & PB13 interrupts
 8001012:	f44f 4020 	mov.w	r0, #40960	; 0xa000
	TIM2->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;		// Rising level on both TI1 and TI2
 8001016:	f041 0103 	orr.w	r1, r1, #3
 800101a:	8111      	strh	r1, [r2, #8]
	TIM2->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;		// CC1 at TI1, CC2 at TI2
 800101c:	8b11      	ldrh	r1, [r2, #24]
	                
	TIM4->CCMR2 |= (TIM_CCMR2_OC3PE  | TIM_CCMR2_OC4PE  |		// Preload enable for both CH1 and CH2
	                TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 |		// PWM mode 1 - CH1
	                TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4M_1 );		// PWM mode 1 - CH2

	TIM4->PSC   = (TIM4_CLK / (PWM_FREQ * PWM_MAX_VAL)) * 2;	// Set PWM frequency
 800101e:	f04f 0e0e 	mov.w	lr, #14
	TIM2->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;		// CC1 at TI1, CC2 at TI2
 8001022:	4321      	orrs	r1, r4
 8001024:	8311      	strh	r1, [r2, #24]
	TIM2->ARR	 = 0xffff;									// Max counter value is 65535
 8001026:	8596      	strh	r6, [r2, #44]	; 0x2c
	TIM2->CR1	|= TIM_CR1_CEN;								// Enable timer TIM2
 8001028:	8815      	ldrh	r5, [r2, #0]
	TIM4->CCMR1 |= (TIM_CCMR1_OC1PE  | TIM_CCMR1_OC2PE  |		// Preload enable for both CH1 and CH2
 800102a:	f646 0168 	movw	r1, #26728	; 0x6868
	TIM2->CR1	|= TIM_CR1_CEN;								// Enable timer TIM2
 800102e:	f045 0501 	orr.w	r5, r5, #1
 8001032:	8015      	strh	r5, [r2, #0]
	TIM3->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;
 8001034:	f8b2 5408 	ldrh.w	r5, [r2, #1032]	; 0x408
	TIM4->ARR   = PWM_MAX_VAL;
 8001038:	f04f 0cff 	mov.w	ip, #255	; 0xff
	TIM3->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;
 800103c:	f045 0503 	orr.w	r5, r5, #3
 8001040:	f8a2 5408 	strh.w	r5, [r2, #1032]	; 0x408
	TIM3->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;
 8001044:	f8b2 5418 	ldrh.w	r5, [r2, #1048]	; 0x418
	TIM4->CCER |= ( TIM_CCER_CC1E | TIM_CCER_CC2E |
	                TIM_CCER_CC3E | TIM_CCER_CC4E );			// TIM4 CH1-4 output enable

	TIM4->CR1	= TIM_CR1_CEN | TIM_CR1_ARPE;
 8001048:	2781      	movs	r7, #129	; 0x81
	TIM3->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;
 800104a:	432c      	orrs	r4, r5
 800104c:	f8a2 4418 	strh.w	r4, [r2, #1048]	; 0x418
	TIM3->ARR	 = 0xffff;
 8001050:	f8a2 642c 	strh.w	r6, [r2, #1068]	; 0x42c
	TIM3->CR1	|= TIM_CR1_CEN;
 8001054:	f8b2 4400 	ldrh.w	r4, [r2, #1024]	; 0x400
    SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set Priority for Cortex-M  System Interrupts */
 8001058:	26f0      	movs	r6, #240	; 0xf0
 800105a:	f044 0401 	orr.w	r4, r4, #1
 800105e:	f8a2 4400 	strh.w	r4, [r2, #1024]	; 0x400
	GPIOB->CRH &= 0x0000FFFF;
 8001062:	685a      	ldr	r2, [r3, #4]
{
  if ((ticks - 1) > SysTick_LOAD_RELOAD_Msk)  return (1);      /* Reload value impossible */

  SysTick->LOAD  = ticks - 1;                                  /* set reload register */
  NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Systick Interrupt */
  SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
 8001064:	2500      	movs	r5, #0
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8001066:	2407      	movs	r4, #7
 8001068:	b292      	uxth	r2, r2
 800106a:	605a      	str	r2, [r3, #4]
	GPIOB->CRH |= 0x88880000;								// PB15-12 -- Input pull-down
 800106c:	685a      	ldr	r2, [r3, #4]
	AFIO->EXTICR[3] = 0x1010;								// Set PB15 & PB13 as EXTI
 800106e:	f5a3 6340 	sub.w	r3, r3, #3072	; 0xc00
	GPIOB->CRH |= 0x88880000;								// PB15-12 -- Input pull-down
 8001072:	f042 4208 	orr.w	r2, r2, #2281701376	; 0x88000000
 8001076:	f442 0208 	orr.w	r2, r2, #8912896	; 0x880000
 800107a:	f8c3 2c04 	str.w	r2, [r3, #3076]	; 0xc04
	GPIOB->ODR &= 0xFFFF0FFF;								// Set pull-down
 800107e:	f8d3 2c0c 	ldr.w	r2, [r3, #3084]	; 0xc0c
 8001082:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 8001086:	f8c3 2c0c 	str.w	r2, [r3, #3084]	; 0xc0c
	AFIO->EXTICR[3] = 0x1010;								// Set PB15 & PB13 as EXTI
 800108a:	f8c3 9014 	str.w	r9, [r3, #20]
	EXTI->IMR	= 0xA000;									// Unmask PB15 & PB13 interrupts
 800108e:	f8c3 0400 	str.w	r0, [r3, #1024]	; 0x400
	EXTI->RTSR	= 0xA000;									// Rising edge trigger
 8001092:	f8c3 0408 	str.w	r0, [r3, #1032]	; 0x408
  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* enable interrupt */
 8001096:	4b13      	ldr	r3, [pc, #76]	; (80010e4 <periph_init+0x118>)
 8001098:	f8c3 8004 	str.w	r8, [r3, #4]
	TIM4->CCMR1 |= (TIM_CCMR1_OC1PE  | TIM_CCMR1_OC2PE  |		// Preload enable for both CH1 and CH2
 800109c:	4b12      	ldr	r3, [pc, #72]	; (80010e8 <periph_init+0x11c>)
 800109e:	8b1a      	ldrh	r2, [r3, #24]
 80010a0:	430a      	orrs	r2, r1
 80010a2:	831a      	strh	r2, [r3, #24]
	TIM4->CCMR2 |= (TIM_CCMR2_OC3PE  | TIM_CCMR2_OC4PE  |		// Preload enable for both CH1 and CH2
 80010a4:	8b9a      	ldrh	r2, [r3, #28]
 80010a6:	4311      	orrs	r1, r2
 80010a8:	8399      	strh	r1, [r3, #28]
	TIM4->PSC   = (TIM4_CLK / (PWM_FREQ * PWM_MAX_VAL)) * 2;	// Set PWM frequency
 80010aa:	f8a3 e028 	strh.w	lr, [r3, #40]	; 0x28
	TIM4->ARR   = PWM_MAX_VAL;
 80010ae:	f8a3 c02c 	strh.w	ip, [r3, #44]	; 0x2c
	TIM4->CCER |= ( TIM_CCER_CC1E | TIM_CCER_CC2E |
 80010b2:	8c1a      	ldrh	r2, [r3, #32]
  SysTick->LOAD  = ticks - 1;                                  /* set reload register */
 80010b4:	490d      	ldr	r1, [pc, #52]	; (80010ec <periph_init+0x120>)
 80010b6:	f442 5288 	orr.w	r2, r2, #4352	; 0x1100
 80010ba:	f042 0211 	orr.w	r2, r2, #17
 80010be:	841a      	strh	r2, [r3, #32]
	TIM4->CR1	= TIM_CR1_CEN | TIM_CR1_ARPE;
 80010c0:	801f      	strh	r7, [r3, #0]
 80010c2:	4a0b      	ldr	r2, [pc, #44]	; (80010f0 <periph_init+0x124>)
    SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set Priority for Cortex-M  System Interrupts */
 80010c4:	4b0b      	ldr	r3, [pc, #44]	; (80010f4 <periph_init+0x128>)
  SysTick->LOAD  = ticks - 1;                                  /* set reload register */
 80010c6:	604a      	str	r2, [r1, #4]
    SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set Priority for Cortex-M  System Interrupts */
 80010c8:	f883 6023 	strb.w	r6, [r3, #35]	; 0x23
  SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
 80010cc:	608d      	str	r5, [r1, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 80010ce:	600c      	str	r4, [r1, #0]
/* -- SysTick config ----------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------------- */

	SysTick_Config (72000);			// SysTick interrupt will occur every 1ms
			
}
 80010d0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80010d4:	40021000 	andmi	r1, r2, r0
 80010d8:	40010800 	andmi	r0, r1, r0, lsl #16
 80010dc:	88444488 	stmdahi	r4, {r3, r7, sl, lr}^
 80010e0:	aa444444 	bge	91121f8 <_sidata+0x111036c>
 80010e4:	e000e100 	and	lr, r0, r0, lsl #2
 80010e8:	40000800 	andmi	r0, r0, r0, lsl #16
 80010ec:	e000e010 	and	lr, r0, r0, lsl r0
 80010f0:	0001193f 	andeq	r1, r1, pc, lsr r9
 80010f4:	e000ed00 	and	lr, r0, r0, lsl #26

080010f8 <pid_reset>:
}


inline void pid_set_PWM (arm_pid_t *pid_inst, int32_t pwm)
{
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
 80010f8:	2300      	movs	r3, #0
{	
 80010fa:	b430      	push	{r4, r5}
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 80010fc:	e9d0 1512 	ldrd	r1, r5, [r0, #72]	; 0x48
	pid_reset_flag = 2000;
 8001100:	f44f 64fa 	mov.w	r4, #2000	; 0x7d0
	*pid_inst->encoder = 0;	
 8001104:	6d02      	ldr	r2, [r0, #80]	; 0x50
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
 8001106:	600b      	str	r3, [r1, #0]
	pid_reset_flag = 2000;
 8001108:	4905      	ldr	r1, [pc, #20]	; (8001120 <pid_reset+0x28>)
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 800110a:	602b      	str	r3, [r5, #0]
	pid_reset_flag = 2000;
 800110c:	600c      	str	r4, [r1, #0]
	pid_inst->last_error = 0;
 800110e:	63c3      	str	r3, [r0, #60]	; 0x3c
	pid_inst->integral = 0;	
 8001110:	6343      	str	r3, [r0, #52]	; 0x34
	pid_inst->feedback = 0;
 8001112:	e9c0 330a 	strd	r3, r3, [r0, #40]	; 0x28
}
 8001116:	bc30      	pop	{r4, r5}
	*pid_inst->encoder = 0;	
 8001118:	6013      	str	r3, [r2, #0]
	pid_inst->velocity = 0;
 800111a:	6303      	str	r3, [r0, #48]	; 0x30
	pid_inst->last_position = 0;		
 800111c:	6403      	str	r3, [r0, #64]	; 0x40
}
 800111e:	4770      	bx	lr
 8001120:	200014b0 			; <UNDEFINED> instruction: 0x200014b0

08001124 <pid_set_point>:
	pid_inst->setpoint = setpoint;
 8001124:	6281      	str	r1, [r0, #40]	; 0x28
}
 8001126:	4770      	bx	lr

08001128 <pid_set_parameters>:
	switch (index)
 8001128:	2a05      	cmp	r2, #5
 800112a:	d805      	bhi.n	8001138 <pid_set_parameters+0x10>
 800112c:	e8df f002 	tbb	[pc, r2]
 8001130:	0b090705 	bleq	8242d4c <_sidata+0x240ec0>
 8001134:	61410312 	cmpvs	r1, r2, lsl r3
}
 8001138:	4770      	bx	lr
	case 0: pid_inst->pid.VL = value; break;
 800113a:	6001      	str	r1, [r0, #0]
 800113c:	4770      	bx	lr
	case 1: pid_inst->pid.Kf = value; break;
 800113e:	6041      	str	r1, [r0, #4]
 8001140:	4770      	bx	lr
	case 2: pid_inst->pid.Kp = value; break;
 8001142:	6081      	str	r1, [r0, #8]
 8001144:	4770      	bx	lr
			(pid_inst->pwm_max_val << FIXED_POINT_POSITION) / pid_inst->pid.Ki;
 8001146:	6c43      	ldr	r3, [r0, #68]	; 0x44
		pid_inst->pid.Ki = value; 
 8001148:	60c1      	str	r1, [r0, #12]
			(pid_inst->pwm_max_val << FIXED_POINT_POSITION) / pid_inst->pid.Ki;
 800114a:	041b      	lsls	r3, r3, #16
 800114c:	fb93 f1f1 	sdiv	r1, r3, r1
		pid_inst->integral_limit = 
 8001150:	6381      	str	r1, [r0, #56]	; 0x38
		break;
 8001152:	4770      	bx	lr
	case 4: pid_inst->pid.Kd = value; break;
 8001154:	6101      	str	r1, [r0, #16]
 8001156:	4770      	bx	lr

08001158 <pid_set_mode>:
	pid_inst->servo_mode = mode;
 8001158:	6241      	str	r1, [r0, #36]	; 0x24
}
 800115a:	4770      	bx	lr

0800115c <pid_set_sub_cmd>:
	pid_inst->subcmd = cmd;
 800115c:	6201      	str	r1, [r0, #32]
}
 800115e:	4770      	bx	lr

08001160 <pid_update>:
}

/* Main PID function */
void pid_update (arm_pid_t *pid_inst, uint8_t speed_compare)
{	
 8001160:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	/* Wait 1ms to totally stop the motor */
	if (pid_reset_flag > 0)
 8001164:	4a47      	ldr	r2, [pc, #284]	; (8001284 <pid_update+0x124>)
{	
 8001166:	b082      	sub	sp, #8
	if (pid_reset_flag > 0)
 8001168:	6813      	ldr	r3, [r2, #0]
 800116a:	2b00      	cmp	r3, #0
 800116c:	dd08      	ble.n	8001180 <pid_update+0x20>
	{
		pid_reset_flag--;
		*pid_inst->encoder = 0;		
 800116e:	2100      	movs	r1, #0
 8001170:	6d04      	ldr	r4, [r0, #80]	; 0x50
		pid_reset_flag--;
 8001172:	3b01      	subs	r3, #1
		*pid_inst->encoder = 0;		
 8001174:	6021      	str	r1, [r4, #0]
		pid_reset_flag--;
 8001176:	6013      	str	r3, [r2, #0]
		pid_inst->setpoint = 0;
 8001178:	6281      	str	r1, [r0, #40]	; 0x28
		
		case PWM:
			pid_set_PWM (pid_inst, 
				LIMIT (pid_inst->pwm_max_val, -pid_inst->pwm_max_val, pidcmd));
	}
}
 800117a:	b002      	add	sp, #8
 800117c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	volatile int32_t pidcmd = pid_inst->subcmd;
 8001180:	6a03      	ldr	r3, [r0, #32]
 8001182:	9301      	str	r3, [sp, #4]
  __ASM volatile ("cpsid i" : : : "memory");
 8001184:	b672      	cpsid	i
	pid_inst->feedback += (int16_t) *pid_inst->encoder;		// Current position = previous position + encoder value
 8001186:	6d02      	ldr	r2, [r0, #80]	; 0x50
 8001188:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 800118a:	f9b2 2000 	ldrsh.w	r2, [r2]
 800118e:	4413      	add	r3, r2
 8001190:	62c3      	str	r3, [r0, #44]	; 0x2c
  __ASM volatile ("cpsie i" : : : "memory");
 8001192:	b662      	cpsie	i
	*pid_inst->encoder = 0;									// After reading TIMx->CNT we need to clear it	
 8001194:	2200      	movs	r2, #0
 8001196:	6d03      	ldr	r3, [r0, #80]	; 0x50
 8001198:	601a      	str	r2, [r3, #0]
	if (speed_compare)
 800119a:	b121      	cbz	r1, 80011a6 <pid_update+0x46>
			pid_inst->feedback - pid_inst->last_position;	// Speed = current position - previous position
 800119c:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 800119e:	6c02      	ldr	r2, [r0, #64]	; 0x40
		pid_inst->last_position = pid_inst->feedback;		// The last_position is need to calculate the velocity		
 80011a0:	6403      	str	r3, [r0, #64]	; 0x40
			pid_inst->feedback - pid_inst->last_position;	// Speed = current position - previous position
 80011a2:	1a9b      	subs	r3, r3, r2
		pid_inst->velocity = 
 80011a4:	6303      	str	r3, [r0, #48]	; 0x30
	switch (pid_inst->servo_mode)
 80011a6:	6a43      	ldr	r3, [r0, #36]	; 0x24
 80011a8:	2b03      	cmp	r3, #3
 80011aa:	d8e6      	bhi.n	800117a <pid_update+0x1a>
 80011ac:	e8df f003 	tbb	[pc, r3]
 80011b0:	0b022e23 	bleq	808ca44 <_sidata+0x8abb8>
 80011b4:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
			pidcmd += ((pid_inst->velocity * pid_inst->pid.Kg) >> FIXED_POINT_POSITION);			
 80011b8:	6942      	ldr	r2, [r0, #20]
 80011ba:	9b01      	ldr	r3, [sp, #4]
 80011bc:	fb02 fc0c 	mul.w	ip, r2, ip
 80011c0:	eb03 432c 	add.w	r3, r3, ip, asr #16
 80011c4:	9301      	str	r3, [sp, #4]
				LIMIT (pid_inst->pwm_max_val, -pid_inst->pwm_max_val, pidcmd));
 80011c6:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80011c8:	9a01      	ldr	r2, [sp, #4]
			pid_set_PWM (pid_inst, 
 80011ca:	4293      	cmp	r3, r2
 80011cc:	da0d      	bge.n	80011ea <pid_update+0x8a>
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 80011ce:	2b00      	cmp	r3, #0
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
 80011d0:	ea23 71e3 	bic.w	r1, r3, r3, asr #31
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 80011d4:	bfa8      	it	ge
 80011d6:	2300      	movge	r3, #0
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
 80011d8:	6c82      	ldr	r2, [r0, #72]	; 0x48
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 80011da:	bfb8      	it	lt
 80011dc:	425b      	neglt	r3, r3
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
 80011de:	6011      	str	r1, [r2, #0]
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 80011e0:	6cc2      	ldr	r2, [r0, #76]	; 0x4c
 80011e2:	6013      	str	r3, [r2, #0]
}
 80011e4:	b002      	add	sp, #8
 80011e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
				LIMIT (pid_inst->pwm_max_val, -pid_inst->pwm_max_val, pidcmd));
 80011ea:	9a01      	ldr	r2, [sp, #4]
 80011ec:	425b      	negs	r3, r3
 80011ee:	4293      	cmp	r3, r2
 80011f0:	bfd8      	it	le
 80011f2:	9b01      	ldrle	r3, [sp, #4]
 80011f4:	e7eb      	b.n	80011ce <pid_update+0x6e>
			pidcmd = LIMIT (pid_inst->pid.VL, 
 80011f6:	6803      	ldr	r3, [r0, #0]
 80011f8:	e9d0 210a 	ldrd	r2, r1, [r0, #40]	; 0x28
 80011fc:	1a52      	subs	r2, r2, r1
 80011fe:	429a      	cmp	r2, r3
 8001200:	dc03      	bgt.n	800120a <pid_update+0xaa>
 8001202:	425b      	negs	r3, r3
 8001204:	4293      	cmp	r3, r2
 8001206:	bfb8      	it	lt
 8001208:	4613      	movlt	r3, r2
 800120a:	9301      	str	r3, [sp, #4]
			error = pidcmd - ((pid_inst->velocity * pid_inst->pid.Kf) >> FIXED_POINT_POSITION);
 800120c:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001210:	6843      	ldr	r3, [r0, #4]
 8001212:	9a01      	ldr	r2, [sp, #4]
 8001214:	fb03 f30c 	mul.w	r3, r3, ip
			out  = (int64_t) pid_inst->integral * (int64_t) pid_inst->pid.Ki;
 8001218:	6b44      	ldr	r4, [r0, #52]	; 0x34
			error = pidcmd - ((pid_inst->velocity * pid_inst->pid.Kf) >> FIXED_POINT_POSITION);
 800121a:	eba2 4e23 	sub.w	lr, r2, r3, asr #16
			pid_inst->integral = LIMIT (pid_inst->integral_limit, -pid_inst->integral_limit,
 800121e:	6b81      	ldr	r1, [r0, #56]	; 0x38
 8001220:	eb04 030e 	add.w	r3, r4, lr
			out  = (int64_t) pid_inst->integral * (int64_t) pid_inst->pid.Ki;
 8001224:	68c2      	ldr	r2, [r0, #12]
			pid_inst->integral = LIMIT (pid_inst->integral_limit, -pid_inst->integral_limit,
 8001226:	428b      	cmp	r3, r1
			out  = (int64_t) pid_inst->integral * (int64_t) pid_inst->pid.Ki;
 8001228:	fb84 4502 	smull	r4, r5, r4, r2
			pid_inst->integral = LIMIT (pid_inst->integral_limit, -pid_inst->integral_limit,
 800122c:	dc05      	bgt.n	800123a <pid_update+0xda>
 800122e:	f1c1 0800 	rsb	r8, r1, #0
 8001232:	4598      	cmp	r8, r3
 8001234:	4641      	mov	r1, r8
 8001236:	bfb8      	it	lt
 8001238:	4619      	movlt	r1, r3
			pidcmd = LIMIT (1500, -1500, out >> FIXED_POINT_POSITION);
 800123a:	f240 56dc 	movw	r6, #1500	; 0x5dc
 800123e:	2700      	movs	r7, #0
			pid_inst->integral = LIMIT (pid_inst->integral_limit, -pid_inst->integral_limit,
 8001240:	6341      	str	r1, [r0, #52]	; 0x34
			out += (int64_t) error * (int64_t) pid_inst->pid.Kp;
 8001242:	6881      	ldr	r1, [r0, #8]
 8001244:	fbc1 450e 	smlal	r4, r5, r1, lr
			out += (int64_t) (error - pid_inst->last_error) * (int64_t) pid_inst->pid.Kd;
 8001248:	6bc1      	ldr	r1, [r0, #60]	; 0x3c
			pid_inst->last_error = error;
 800124a:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
			out += (int64_t) (error - pid_inst->last_error) * (int64_t) pid_inst->pid.Kd;
 800124e:	ebae 0e01 	sub.w	lr, lr, r1
 8001252:	6901      	ldr	r1, [r0, #16]
 8001254:	fbc1 450e 	smlal	r4, r5, r1, lr
			pidcmd = LIMIT (1500, -1500, out >> FIXED_POINT_POSITION);
 8001258:	0c22      	lsrs	r2, r4, #16
 800125a:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
 800125e:	142b      	asrs	r3, r5, #16
 8001260:	4296      	cmp	r6, r2
 8001262:	eb77 0103 	sbcs.w	r1, r7, r3
 8001266:	db08      	blt.n	800127a <pid_update+0x11a>
 8001268:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 800126c:	4c06      	ldr	r4, [pc, #24]	; (8001288 <pid_update+0x128>)
 800126e:	42a2      	cmp	r2, r4
 8001270:	eb73 0105 	sbcs.w	r1, r3, r5
 8001274:	db04      	blt.n	8001280 <pid_update+0x120>
 8001276:	9201      	str	r2, [sp, #4]
 8001278:	e79e      	b.n	80011b8 <pid_update+0x58>
 800127a:	f240 52dc 	movw	r2, #1500	; 0x5dc
 800127e:	e7fa      	b.n	8001276 <pid_update+0x116>
 8001280:	4622      	mov	r2, r4
 8001282:	e7f8      	b.n	8001276 <pid_update+0x116>
 8001284:	200014b0 			; <UNDEFINED> instruction: 0x200014b0
 8001288:	fffffa24 			; <UNDEFINED> instruction: 0xfffffa24

0800128c <pid_init>:

void pid_init (arm_pid_t *pid_inst, const arm_pid_instance_t *pid_gains,
	int32_t pwm_max_val, uint32_t *pwm_p, uint32_t *pwm_n, uint32_t *encoder)
{
 800128c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001290:	4615      	mov	r5, r2
 8001292:	4688      	mov	r8, r1
	bzero (pid_inst, sizeof (arm_pid_t));
 8001294:	2158      	movs	r1, #88	; 0x58
{
 8001296:	4604      	mov	r4, r0
 8001298:	461e      	mov	r6, r3
 800129a:	9f06      	ldr	r7, [sp, #24]
	bzero (pid_inst, sizeof (arm_pid_t));
 800129c:	f000 f81a 	bl	80012d4 <bzero>
	
	pid_inst->pwm_max_val = pwm_max_val - 5;	
	pid_inst->pwm_p = pwm_p;
	pid_inst->pwm_n = pwm_n;
	pid_inst->encoder = encoder;
	pid_inst->subcmd = 0;
 80012a0:	2200      	movs	r2, #0
	pid_inst->encoder = encoder;
 80012a2:	9b07      	ldr	r3, [sp, #28]
	pid_inst->pwm_max_val = pwm_max_val - 5;	
 80012a4:	3d05      	subs	r5, #5
	pid_inst->encoder = encoder;
 80012a6:	6523      	str	r3, [r4, #80]	; 0x50
	pid_inst->servo_mode = POSITION;
 80012a8:	e9c4 2208 	strd	r2, r2, [r4, #32]
	pid_inst->pwm_max_val = pwm_max_val - 5;	
 80012ac:	e9c4 5611 	strd	r5, r6, [r4, #68]	; 0x44
	
	/* Load PID gains */
	memcpy (&pid_inst->pid, pid_gains, sizeof (arm_pid_instance_t));
 80012b0:	2220      	movs	r2, #32
	pid_inst->pwm_n = pwm_n;
 80012b2:	64e7      	str	r7, [r4, #76]	; 0x4c
	memcpy (&pid_inst->pid, pid_gains, sizeof (arm_pid_instance_t));
 80012b4:	4641      	mov	r1, r8
 80012b6:	4620      	mov	r0, r4
 80012b8:	f000 f81a 	bl	80012f0 <memcpy>
	
	/* Set integral limit to maximum PWM value */
	pid_inst->integral_limit = (pid_inst->pwm_max_val << FIXED_POINT_POSITION) / pid_inst->pid.Ki; 
 80012bc:	6c63      	ldr	r3, [r4, #68]	; 0x44
 80012be:	68e2      	ldr	r2, [r4, #12]
 80012c0:	041b      	lsls	r3, r3, #16
 80012c2:	fb93 f3f2 	sdiv	r3, r3, r2
 80012c6:	63a3      	str	r3, [r4, #56]	; 0x38
}
 80012c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080012cc <atoi>:
 80012cc:	220a      	movs	r2, #10
 80012ce:	2100      	movs	r1, #0
 80012d0:	f000 b8f2 	b.w	80014b8 <strtol>

080012d4 <bzero>:
 80012d4:	2300      	movs	r3, #0
 80012d6:	4401      	add	r1, r0
 80012d8:	4288      	cmp	r0, r1
 80012da:	d100      	bne.n	80012de <bzero+0xa>
 80012dc:	4770      	bx	lr
 80012de:	f800 3b01 	strb.w	r3, [r0], #1
 80012e2:	e7f9      	b.n	80012d8 <bzero+0x4>

080012e4 <__errno>:
 80012e4:	4b01      	ldr	r3, [pc, #4]	; (80012ec <__errno+0x8>)
 80012e6:	6818      	ldr	r0, [r3, #0]
 80012e8:	4770      	bx	lr
 80012ea:	bf00      	nop
 80012ec:	20000020 	andcs	r0, r0, r0, lsr #32

080012f0 <memcpy>:
 80012f0:	b510      	push	{r4, lr}
 80012f2:	1e43      	subs	r3, r0, #1
 80012f4:	440a      	add	r2, r1
 80012f6:	4291      	cmp	r1, r2
 80012f8:	d100      	bne.n	80012fc <memcpy+0xc>
 80012fa:	bd10      	pop	{r4, pc}
 80012fc:	f811 4b01 	ldrb.w	r4, [r1], #1
 8001300:	f803 4f01 	strb.w	r4, [r3, #1]!
 8001304:	e7f7      	b.n	80012f6 <memcpy+0x6>
	...

08001308 <sniprintf>:
 8001308:	b40c      	push	{r2, r3}
 800130a:	b530      	push	{r4, r5, lr}
 800130c:	4b17      	ldr	r3, [pc, #92]	; (800136c <sniprintf+0x64>)
 800130e:	1e0c      	subs	r4, r1, #0
 8001310:	b09d      	sub	sp, #116	; 0x74
 8001312:	681d      	ldr	r5, [r3, #0]
 8001314:	da08      	bge.n	8001328 <sniprintf+0x20>
 8001316:	238b      	movs	r3, #139	; 0x8b
 8001318:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800131c:	602b      	str	r3, [r5, #0]
 800131e:	b01d      	add	sp, #116	; 0x74
 8001320:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001324:	b002      	add	sp, #8
 8001326:	4770      	bx	lr
 8001328:	f44f 7302 	mov.w	r3, #520	; 0x208
 800132c:	f8ad 3014 	strh.w	r3, [sp, #20]
 8001330:	bf0c      	ite	eq
 8001332:	4623      	moveq	r3, r4
 8001334:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
 8001338:	9304      	str	r3, [sp, #16]
 800133a:	9307      	str	r3, [sp, #28]
 800133c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001340:	9002      	str	r0, [sp, #8]
 8001342:	9006      	str	r0, [sp, #24]
 8001344:	f8ad 3016 	strh.w	r3, [sp, #22]
 8001348:	9a20      	ldr	r2, [sp, #128]	; 0x80
 800134a:	ab21      	add	r3, sp, #132	; 0x84
 800134c:	a902      	add	r1, sp, #8
 800134e:	4628      	mov	r0, r5
 8001350:	9301      	str	r3, [sp, #4]
 8001352:	f000 f937 	bl	80015c4 <_svfiprintf_r>
 8001356:	1c43      	adds	r3, r0, #1
 8001358:	bfbc      	itt	lt
 800135a:	238b      	movlt	r3, #139	; 0x8b
 800135c:	602b      	strlt	r3, [r5, #0]
 800135e:	2c00      	cmp	r4, #0
 8001360:	d0dd      	beq.n	800131e <sniprintf+0x16>
 8001362:	2200      	movs	r2, #0
 8001364:	9b02      	ldr	r3, [sp, #8]
 8001366:	701a      	strb	r2, [r3, #0]
 8001368:	e7d9      	b.n	800131e <sniprintf+0x16>
 800136a:	bf00      	nop
 800136c:	20000020 	andcs	r0, r0, r0, lsr #32

08001370 <siprintf>:
 8001370:	b40e      	push	{r1, r2, r3}
 8001372:	f44f 7102 	mov.w	r1, #520	; 0x208
 8001376:	b500      	push	{lr}
 8001378:	b09c      	sub	sp, #112	; 0x70
 800137a:	f8ad 1014 	strh.w	r1, [sp, #20]
 800137e:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
 8001382:	9104      	str	r1, [sp, #16]
 8001384:	9107      	str	r1, [sp, #28]
 8001386:	f64f 71ff 	movw	r1, #65535	; 0xffff
 800138a:	ab1d      	add	r3, sp, #116	; 0x74
 800138c:	9002      	str	r0, [sp, #8]
 800138e:	9006      	str	r0, [sp, #24]
 8001390:	4808      	ldr	r0, [pc, #32]	; (80013b4 <siprintf+0x44>)
 8001392:	f853 2b04 	ldr.w	r2, [r3], #4
 8001396:	f8ad 1016 	strh.w	r1, [sp, #22]
 800139a:	6800      	ldr	r0, [r0, #0]
 800139c:	a902      	add	r1, sp, #8
 800139e:	9301      	str	r3, [sp, #4]
 80013a0:	f000 f910 	bl	80015c4 <_svfiprintf_r>
 80013a4:	2200      	movs	r2, #0
 80013a6:	9b02      	ldr	r3, [sp, #8]
 80013a8:	701a      	strb	r2, [r3, #0]
 80013aa:	b01c      	add	sp, #112	; 0x70
 80013ac:	f85d eb04 	ldr.w	lr, [sp], #4
 80013b0:	b003      	add	sp, #12
 80013b2:	4770      	bx	lr
 80013b4:	20000020 	andcs	r0, r0, r0, lsr #32

080013b8 <_strtol_l.isra.0>:
 80013b8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80013bc:	4680      	mov	r8, r0
 80013be:	4689      	mov	r9, r1
 80013c0:	4692      	mov	sl, r2
 80013c2:	461f      	mov	r7, r3
 80013c4:	468b      	mov	fp, r1
 80013c6:	465d      	mov	r5, fp
 80013c8:	980a      	ldr	r0, [sp, #40]	; 0x28
 80013ca:	f815 4b01 	ldrb.w	r4, [r5], #1
 80013ce:	f000 f889 	bl	80014e4 <__locale_ctype_ptr_l>
 80013d2:	4420      	add	r0, r4
 80013d4:	7846      	ldrb	r6, [r0, #1]
 80013d6:	f016 0608 	ands.w	r6, r6, #8
 80013da:	d10b      	bne.n	80013f4 <_strtol_l.isra.0+0x3c>
 80013dc:	2c2d      	cmp	r4, #45	; 0x2d
 80013de:	d10b      	bne.n	80013f8 <_strtol_l.isra.0+0x40>
 80013e0:	2601      	movs	r6, #1
 80013e2:	782c      	ldrb	r4, [r5, #0]
 80013e4:	f10b 0502 	add.w	r5, fp, #2
 80013e8:	b167      	cbz	r7, 8001404 <_strtol_l.isra.0+0x4c>
 80013ea:	2f10      	cmp	r7, #16
 80013ec:	d114      	bne.n	8001418 <_strtol_l.isra.0+0x60>
 80013ee:	2c30      	cmp	r4, #48	; 0x30
 80013f0:	d00a      	beq.n	8001408 <_strtol_l.isra.0+0x50>
 80013f2:	e011      	b.n	8001418 <_strtol_l.isra.0+0x60>
 80013f4:	46ab      	mov	fp, r5
 80013f6:	e7e6      	b.n	80013c6 <_strtol_l.isra.0+0xe>
 80013f8:	2c2b      	cmp	r4, #43	; 0x2b
 80013fa:	bf04      	itt	eq
 80013fc:	782c      	ldrbeq	r4, [r5, #0]
 80013fe:	f10b 0502 	addeq.w	r5, fp, #2
 8001402:	e7f1      	b.n	80013e8 <_strtol_l.isra.0+0x30>
 8001404:	2c30      	cmp	r4, #48	; 0x30
 8001406:	d127      	bne.n	8001458 <_strtol_l.isra.0+0xa0>
 8001408:	782b      	ldrb	r3, [r5, #0]
 800140a:	f003 03df 	and.w	r3, r3, #223	; 0xdf
 800140e:	2b58      	cmp	r3, #88	; 0x58
 8001410:	d14b      	bne.n	80014aa <_strtol_l.isra.0+0xf2>
 8001412:	2710      	movs	r7, #16
 8001414:	786c      	ldrb	r4, [r5, #1]
 8001416:	3502      	adds	r5, #2
 8001418:	2e00      	cmp	r6, #0
 800141a:	bf0c      	ite	eq
 800141c:	f06f 4100 	mvneq.w	r1, #2147483648	; 0x80000000
 8001420:	f04f 4100 	movne.w	r1, #2147483648	; 0x80000000
 8001424:	2200      	movs	r2, #0
 8001426:	fbb1 fef7 	udiv	lr, r1, r7
 800142a:	4610      	mov	r0, r2
 800142c:	fb07 1c1e 	mls	ip, r7, lr, r1
 8001430:	f1a4 0330 	sub.w	r3, r4, #48	; 0x30
 8001434:	2b09      	cmp	r3, #9
 8001436:	d811      	bhi.n	800145c <_strtol_l.isra.0+0xa4>
 8001438:	461c      	mov	r4, r3
 800143a:	42a7      	cmp	r7, r4
 800143c:	dd1d      	ble.n	800147a <_strtol_l.isra.0+0xc2>
 800143e:	1c53      	adds	r3, r2, #1
 8001440:	d007      	beq.n	8001452 <_strtol_l.isra.0+0x9a>
 8001442:	4586      	cmp	lr, r0
 8001444:	d316      	bcc.n	8001474 <_strtol_l.isra.0+0xbc>
 8001446:	d101      	bne.n	800144c <_strtol_l.isra.0+0x94>
 8001448:	45a4      	cmp	ip, r4
 800144a:	db13      	blt.n	8001474 <_strtol_l.isra.0+0xbc>
 800144c:	2201      	movs	r2, #1
 800144e:	fb00 4007 	mla	r0, r0, r7, r4
 8001452:	f815 4b01 	ldrb.w	r4, [r5], #1
 8001456:	e7eb      	b.n	8001430 <_strtol_l.isra.0+0x78>
 8001458:	270a      	movs	r7, #10
 800145a:	e7dd      	b.n	8001418 <_strtol_l.isra.0+0x60>
 800145c:	f1a4 0341 	sub.w	r3, r4, #65	; 0x41
 8001460:	2b19      	cmp	r3, #25
 8001462:	d801      	bhi.n	8001468 <_strtol_l.isra.0+0xb0>
 8001464:	3c37      	subs	r4, #55	; 0x37
 8001466:	e7e8      	b.n	800143a <_strtol_l.isra.0+0x82>
 8001468:	f1a4 0361 	sub.w	r3, r4, #97	; 0x61
 800146c:	2b19      	cmp	r3, #25
 800146e:	d804      	bhi.n	800147a <_strtol_l.isra.0+0xc2>
 8001470:	3c57      	subs	r4, #87	; 0x57
 8001472:	e7e2      	b.n	800143a <_strtol_l.isra.0+0x82>
 8001474:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001478:	e7eb      	b.n	8001452 <_strtol_l.isra.0+0x9a>
 800147a:	1c53      	adds	r3, r2, #1
 800147c:	d108      	bne.n	8001490 <_strtol_l.isra.0+0xd8>
 800147e:	2322      	movs	r3, #34	; 0x22
 8001480:	4608      	mov	r0, r1
 8001482:	f8c8 3000 	str.w	r3, [r8]
 8001486:	f1ba 0f00 	cmp.w	sl, #0
 800148a:	d107      	bne.n	800149c <_strtol_l.isra.0+0xe4>
 800148c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001490:	b106      	cbz	r6, 8001494 <_strtol_l.isra.0+0xdc>
 8001492:	4240      	negs	r0, r0
 8001494:	f1ba 0f00 	cmp.w	sl, #0
 8001498:	d00c      	beq.n	80014b4 <_strtol_l.isra.0+0xfc>
 800149a:	b122      	cbz	r2, 80014a6 <_strtol_l.isra.0+0xee>
 800149c:	3d01      	subs	r5, #1
 800149e:	f8ca 5000 	str.w	r5, [sl]
 80014a2:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80014a6:	464d      	mov	r5, r9
 80014a8:	e7f9      	b.n	800149e <_strtol_l.isra.0+0xe6>
 80014aa:	2430      	movs	r4, #48	; 0x30
 80014ac:	2f00      	cmp	r7, #0
 80014ae:	d1b3      	bne.n	8001418 <_strtol_l.isra.0+0x60>
 80014b0:	2708      	movs	r7, #8
 80014b2:	e7b1      	b.n	8001418 <_strtol_l.isra.0+0x60>
 80014b4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

080014b8 <strtol>:
 80014b8:	4b08      	ldr	r3, [pc, #32]	; (80014dc <strtol+0x24>)
 80014ba:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80014bc:	681c      	ldr	r4, [r3, #0]
 80014be:	4d08      	ldr	r5, [pc, #32]	; (80014e0 <strtol+0x28>)
 80014c0:	6a23      	ldr	r3, [r4, #32]
 80014c2:	2b00      	cmp	r3, #0
 80014c4:	bf08      	it	eq
 80014c6:	462b      	moveq	r3, r5
 80014c8:	9300      	str	r3, [sp, #0]
 80014ca:	4613      	mov	r3, r2
 80014cc:	460a      	mov	r2, r1
 80014ce:	4601      	mov	r1, r0
 80014d0:	4620      	mov	r0, r4
 80014d2:	f7ff ff71 	bl	80013b8 <_strtol_l.isra.0>
 80014d6:	b003      	add	sp, #12
 80014d8:	bd30      	pop	{r4, r5, pc}
 80014da:	bf00      	nop
 80014dc:	20000020 	andcs	r0, r0, r0, lsr #32
 80014e0:	20000084 	andcs	r0, r0, r4, lsl #1

080014e4 <__locale_ctype_ptr_l>:
 80014e4:	f8d0 00ec 	ldr.w	r0, [r0, #236]	; 0xec
 80014e8:	4770      	bx	lr

080014ea <__ascii_mbtowc>:
 80014ea:	b082      	sub	sp, #8
 80014ec:	b901      	cbnz	r1, 80014f0 <__ascii_mbtowc+0x6>
 80014ee:	a901      	add	r1, sp, #4
 80014f0:	b142      	cbz	r2, 8001504 <__ascii_mbtowc+0x1a>
 80014f2:	b14b      	cbz	r3, 8001508 <__ascii_mbtowc+0x1e>
 80014f4:	7813      	ldrb	r3, [r2, #0]
 80014f6:	600b      	str	r3, [r1, #0]
 80014f8:	7812      	ldrb	r2, [r2, #0]
 80014fa:	1c10      	adds	r0, r2, #0
 80014fc:	bf18      	it	ne
 80014fe:	2001      	movne	r0, #1
 8001500:	b002      	add	sp, #8
 8001502:	4770      	bx	lr
 8001504:	4610      	mov	r0, r2
 8001506:	e7fb      	b.n	8001500 <__ascii_mbtowc+0x16>
 8001508:	f06f 0001 	mvn.w	r0, #1
 800150c:	e7f8      	b.n	8001500 <__ascii_mbtowc+0x16>

0800150e <__ssputs_r>:
 800150e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8001512:	688e      	ldr	r6, [r1, #8]
 8001514:	4682      	mov	sl, r0
 8001516:	429e      	cmp	r6, r3
 8001518:	460c      	mov	r4, r1
 800151a:	4691      	mov	r9, r2
 800151c:	4698      	mov	r8, r3
 800151e:	d835      	bhi.n	800158c <__ssputs_r+0x7e>
 8001520:	898a      	ldrh	r2, [r1, #12]
 8001522:	f412 6f90 	tst.w	r2, #1152	; 0x480
 8001526:	d031      	beq.n	800158c <__ssputs_r+0x7e>
 8001528:	2302      	movs	r3, #2
 800152a:	6825      	ldr	r5, [r4, #0]
 800152c:	6909      	ldr	r1, [r1, #16]
 800152e:	1a6f      	subs	r7, r5, r1
 8001530:	6965      	ldr	r5, [r4, #20]
 8001532:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 8001536:	fb95 f5f3 	sdiv	r5, r5, r3
 800153a:	f108 0301 	add.w	r3, r8, #1
 800153e:	443b      	add	r3, r7
 8001540:	429d      	cmp	r5, r3
 8001542:	bf38      	it	cc
 8001544:	461d      	movcc	r5, r3
 8001546:	0553      	lsls	r3, r2, #21
 8001548:	d531      	bpl.n	80015ae <__ssputs_r+0xa0>
 800154a:	4629      	mov	r1, r5
 800154c:	f000 fb48 	bl	8001be0 <_malloc_r>
 8001550:	4606      	mov	r6, r0
 8001552:	b950      	cbnz	r0, 800156a <__ssputs_r+0x5c>
 8001554:	230c      	movs	r3, #12
 8001556:	f8ca 3000 	str.w	r3, [sl]
 800155a:	89a3      	ldrh	r3, [r4, #12]
 800155c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001560:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001564:	81a3      	strh	r3, [r4, #12]
 8001566:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800156a:	463a      	mov	r2, r7
 800156c:	6921      	ldr	r1, [r4, #16]
 800156e:	f7ff febf 	bl	80012f0 <memcpy>
 8001572:	89a3      	ldrh	r3, [r4, #12]
 8001574:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
 8001578:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800157c:	81a3      	strh	r3, [r4, #12]
 800157e:	6126      	str	r6, [r4, #16]
 8001580:	443e      	add	r6, r7
 8001582:	6026      	str	r6, [r4, #0]
 8001584:	4646      	mov	r6, r8
 8001586:	6165      	str	r5, [r4, #20]
 8001588:	1bed      	subs	r5, r5, r7
 800158a:	60a5      	str	r5, [r4, #8]
 800158c:	4546      	cmp	r6, r8
 800158e:	bf28      	it	cs
 8001590:	4646      	movcs	r6, r8
 8001592:	4649      	mov	r1, r9
 8001594:	4632      	mov	r2, r6
 8001596:	6820      	ldr	r0, [r4, #0]
 8001598:	f000 fabb 	bl	8001b12 <memmove>
 800159c:	68a3      	ldr	r3, [r4, #8]
 800159e:	2000      	movs	r0, #0
 80015a0:	1b9b      	subs	r3, r3, r6
 80015a2:	60a3      	str	r3, [r4, #8]
 80015a4:	6823      	ldr	r3, [r4, #0]
 80015a6:	441e      	add	r6, r3
 80015a8:	6026      	str	r6, [r4, #0]
 80015aa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80015ae:	462a      	mov	r2, r5
 80015b0:	f000 fb74 	bl	8001c9c <_realloc_r>
 80015b4:	4606      	mov	r6, r0
 80015b6:	2800      	cmp	r0, #0
 80015b8:	d1e1      	bne.n	800157e <__ssputs_r+0x70>
 80015ba:	6921      	ldr	r1, [r4, #16]
 80015bc:	4650      	mov	r0, sl
 80015be:	f000 fac3 	bl	8001b48 <_free_r>
 80015c2:	e7c7      	b.n	8001554 <__ssputs_r+0x46>

080015c4 <_svfiprintf_r>:
 80015c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80015c8:	b09d      	sub	sp, #116	; 0x74
 80015ca:	9303      	str	r3, [sp, #12]
 80015cc:	898b      	ldrh	r3, [r1, #12]
 80015ce:	4680      	mov	r8, r0
 80015d0:	061c      	lsls	r4, r3, #24
 80015d2:	460d      	mov	r5, r1
 80015d4:	4616      	mov	r6, r2
 80015d6:	d50f      	bpl.n	80015f8 <_svfiprintf_r+0x34>
 80015d8:	690b      	ldr	r3, [r1, #16]
 80015da:	b96b      	cbnz	r3, 80015f8 <_svfiprintf_r+0x34>
 80015dc:	2140      	movs	r1, #64	; 0x40
 80015de:	f000 faff 	bl	8001be0 <_malloc_r>
 80015e2:	6028      	str	r0, [r5, #0]
 80015e4:	6128      	str	r0, [r5, #16]
 80015e6:	b928      	cbnz	r0, 80015f4 <_svfiprintf_r+0x30>
 80015e8:	230c      	movs	r3, #12
 80015ea:	f8c8 3000 	str.w	r3, [r8]
 80015ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80015f2:	e0c4      	b.n	800177e <_svfiprintf_r+0x1ba>
 80015f4:	2340      	movs	r3, #64	; 0x40
 80015f6:	616b      	str	r3, [r5, #20]
 80015f8:	2300      	movs	r3, #0
 80015fa:	9309      	str	r3, [sp, #36]	; 0x24
 80015fc:	2320      	movs	r3, #32
 80015fe:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
 8001602:	2330      	movs	r3, #48	; 0x30
 8001604:	f04f 0b01 	mov.w	fp, #1
 8001608:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
 800160c:	4637      	mov	r7, r6
 800160e:	463c      	mov	r4, r7
 8001610:	f814 3b01 	ldrb.w	r3, [r4], #1
 8001614:	2b00      	cmp	r3, #0
 8001616:	d13c      	bne.n	8001692 <_svfiprintf_r+0xce>
 8001618:	ebb7 0a06 	subs.w	sl, r7, r6
 800161c:	d00b      	beq.n	8001636 <_svfiprintf_r+0x72>
 800161e:	4653      	mov	r3, sl
 8001620:	4632      	mov	r2, r6
 8001622:	4629      	mov	r1, r5
 8001624:	4640      	mov	r0, r8
 8001626:	f7ff ff72 	bl	800150e <__ssputs_r>
 800162a:	3001      	adds	r0, #1
 800162c:	f000 80a2 	beq.w	8001774 <_svfiprintf_r+0x1b0>
 8001630:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001632:	4453      	add	r3, sl
 8001634:	9309      	str	r3, [sp, #36]	; 0x24
 8001636:	783b      	ldrb	r3, [r7, #0]
 8001638:	2b00      	cmp	r3, #0
 800163a:	f000 809b 	beq.w	8001774 <_svfiprintf_r+0x1b0>
 800163e:	2300      	movs	r3, #0
 8001640:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001644:	9304      	str	r3, [sp, #16]
 8001646:	9307      	str	r3, [sp, #28]
 8001648:	9205      	str	r2, [sp, #20]
 800164a:	9306      	str	r3, [sp, #24]
 800164c:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
 8001650:	931a      	str	r3, [sp, #104]	; 0x68
 8001652:	2205      	movs	r2, #5
 8001654:	7821      	ldrb	r1, [r4, #0]
 8001656:	4850      	ldr	r0, [pc, #320]	; (8001798 <_svfiprintf_r+0x1d4>)
 8001658:	f000 fa4d 	bl	8001af6 <memchr>
 800165c:	1c67      	adds	r7, r4, #1
 800165e:	9b04      	ldr	r3, [sp, #16]
 8001660:	b9d8      	cbnz	r0, 800169a <_svfiprintf_r+0xd6>
 8001662:	06d9      	lsls	r1, r3, #27
 8001664:	bf44      	itt	mi
 8001666:	2220      	movmi	r2, #32
 8001668:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 800166c:	071a      	lsls	r2, r3, #28
 800166e:	bf44      	itt	mi
 8001670:	222b      	movmi	r2, #43	; 0x2b
 8001672:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 8001676:	7822      	ldrb	r2, [r4, #0]
 8001678:	2a2a      	cmp	r2, #42	; 0x2a
 800167a:	d016      	beq.n	80016aa <_svfiprintf_r+0xe6>
 800167c:	2100      	movs	r1, #0
 800167e:	200a      	movs	r0, #10
 8001680:	9a07      	ldr	r2, [sp, #28]
 8001682:	4627      	mov	r7, r4
 8001684:	783b      	ldrb	r3, [r7, #0]
 8001686:	3401      	adds	r4, #1
 8001688:	3b30      	subs	r3, #48	; 0x30
 800168a:	2b09      	cmp	r3, #9
 800168c:	d950      	bls.n	8001730 <_svfiprintf_r+0x16c>
 800168e:	b1c9      	cbz	r1, 80016c4 <_svfiprintf_r+0x100>
 8001690:	e011      	b.n	80016b6 <_svfiprintf_r+0xf2>
 8001692:	2b25      	cmp	r3, #37	; 0x25
 8001694:	d0c0      	beq.n	8001618 <_svfiprintf_r+0x54>
 8001696:	4627      	mov	r7, r4
 8001698:	e7b9      	b.n	800160e <_svfiprintf_r+0x4a>
 800169a:	4a3f      	ldr	r2, [pc, #252]	; (8001798 <_svfiprintf_r+0x1d4>)
 800169c:	463c      	mov	r4, r7
 800169e:	1a80      	subs	r0, r0, r2
 80016a0:	fa0b f000 	lsl.w	r0, fp, r0
 80016a4:	4318      	orrs	r0, r3
 80016a6:	9004      	str	r0, [sp, #16]
 80016a8:	e7d3      	b.n	8001652 <_svfiprintf_r+0x8e>
 80016aa:	9a03      	ldr	r2, [sp, #12]
 80016ac:	1d11      	adds	r1, r2, #4
 80016ae:	6812      	ldr	r2, [r2, #0]
 80016b0:	9103      	str	r1, [sp, #12]
 80016b2:	2a00      	cmp	r2, #0
 80016b4:	db01      	blt.n	80016ba <_svfiprintf_r+0xf6>
 80016b6:	9207      	str	r2, [sp, #28]
 80016b8:	e004      	b.n	80016c4 <_svfiprintf_r+0x100>
 80016ba:	4252      	negs	r2, r2
 80016bc:	f043 0302 	orr.w	r3, r3, #2
 80016c0:	9207      	str	r2, [sp, #28]
 80016c2:	9304      	str	r3, [sp, #16]
 80016c4:	783b      	ldrb	r3, [r7, #0]
 80016c6:	2b2e      	cmp	r3, #46	; 0x2e
 80016c8:	d10d      	bne.n	80016e6 <_svfiprintf_r+0x122>
 80016ca:	787b      	ldrb	r3, [r7, #1]
 80016cc:	1c79      	adds	r1, r7, #1
 80016ce:	2b2a      	cmp	r3, #42	; 0x2a
 80016d0:	d132      	bne.n	8001738 <_svfiprintf_r+0x174>
 80016d2:	9b03      	ldr	r3, [sp, #12]
 80016d4:	3702      	adds	r7, #2
 80016d6:	1d1a      	adds	r2, r3, #4
 80016d8:	681b      	ldr	r3, [r3, #0]
 80016da:	9203      	str	r2, [sp, #12]
 80016dc:	2b00      	cmp	r3, #0
 80016de:	bfb8      	it	lt
 80016e0:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
 80016e4:	9305      	str	r3, [sp, #20]
 80016e6:	4c2d      	ldr	r4, [pc, #180]	; (800179c <_svfiprintf_r+0x1d8>)
 80016e8:	2203      	movs	r2, #3
 80016ea:	7839      	ldrb	r1, [r7, #0]
 80016ec:	4620      	mov	r0, r4
 80016ee:	f000 fa02 	bl	8001af6 <memchr>
 80016f2:	b138      	cbz	r0, 8001704 <_svfiprintf_r+0x140>
 80016f4:	2340      	movs	r3, #64	; 0x40
 80016f6:	1b00      	subs	r0, r0, r4
 80016f8:	fa03 f000 	lsl.w	r0, r3, r0
 80016fc:	9b04      	ldr	r3, [sp, #16]
 80016fe:	3701      	adds	r7, #1
 8001700:	4303      	orrs	r3, r0
 8001702:	9304      	str	r3, [sp, #16]
 8001704:	7839      	ldrb	r1, [r7, #0]
 8001706:	2206      	movs	r2, #6
 8001708:	4825      	ldr	r0, [pc, #148]	; (80017a0 <_svfiprintf_r+0x1dc>)
 800170a:	1c7e      	adds	r6, r7, #1
 800170c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
 8001710:	f000 f9f1 	bl	8001af6 <memchr>
 8001714:	2800      	cmp	r0, #0
 8001716:	d035      	beq.n	8001784 <_svfiprintf_r+0x1c0>
 8001718:	4b22      	ldr	r3, [pc, #136]	; (80017a4 <_svfiprintf_r+0x1e0>)
 800171a:	b9fb      	cbnz	r3, 800175c <_svfiprintf_r+0x198>
 800171c:	9b03      	ldr	r3, [sp, #12]
 800171e:	3307      	adds	r3, #7
 8001720:	f023 0307 	bic.w	r3, r3, #7
 8001724:	3308      	adds	r3, #8
 8001726:	9303      	str	r3, [sp, #12]
 8001728:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800172a:	444b      	add	r3, r9
 800172c:	9309      	str	r3, [sp, #36]	; 0x24
 800172e:	e76d      	b.n	800160c <_svfiprintf_r+0x48>
 8001730:	fb00 3202 	mla	r2, r0, r2, r3
 8001734:	2101      	movs	r1, #1
 8001736:	e7a4      	b.n	8001682 <_svfiprintf_r+0xbe>
 8001738:	2300      	movs	r3, #0
 800173a:	240a      	movs	r4, #10
 800173c:	4618      	mov	r0, r3
 800173e:	9305      	str	r3, [sp, #20]
 8001740:	460f      	mov	r7, r1
 8001742:	783a      	ldrb	r2, [r7, #0]
 8001744:	3101      	adds	r1, #1
 8001746:	3a30      	subs	r2, #48	; 0x30
 8001748:	2a09      	cmp	r2, #9
 800174a:	d903      	bls.n	8001754 <_svfiprintf_r+0x190>
 800174c:	2b00      	cmp	r3, #0
 800174e:	d0ca      	beq.n	80016e6 <_svfiprintf_r+0x122>
 8001750:	9005      	str	r0, [sp, #20]
 8001752:	e7c8      	b.n	80016e6 <_svfiprintf_r+0x122>
 8001754:	fb04 2000 	mla	r0, r4, r0, r2
 8001758:	2301      	movs	r3, #1
 800175a:	e7f1      	b.n	8001740 <_svfiprintf_r+0x17c>
 800175c:	ab03      	add	r3, sp, #12
 800175e:	9300      	str	r3, [sp, #0]
 8001760:	462a      	mov	r2, r5
 8001762:	4b11      	ldr	r3, [pc, #68]	; (80017a8 <_svfiprintf_r+0x1e4>)
 8001764:	a904      	add	r1, sp, #16
 8001766:	4640      	mov	r0, r8
 8001768:	f3af 8000 	nop.w
 800176c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8001770:	4681      	mov	r9, r0
 8001772:	d1d9      	bne.n	8001728 <_svfiprintf_r+0x164>
 8001774:	89ab      	ldrh	r3, [r5, #12]
 8001776:	065b      	lsls	r3, r3, #25
 8001778:	f53f af39 	bmi.w	80015ee <_svfiprintf_r+0x2a>
 800177c:	9809      	ldr	r0, [sp, #36]	; 0x24
 800177e:	b01d      	add	sp, #116	; 0x74
 8001780:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001784:	ab03      	add	r3, sp, #12
 8001786:	9300      	str	r3, [sp, #0]
 8001788:	462a      	mov	r2, r5
 800178a:	4b07      	ldr	r3, [pc, #28]	; (80017a8 <_svfiprintf_r+0x1e4>)
 800178c:	a904      	add	r1, sp, #16
 800178e:	4640      	mov	r0, r8
 8001790:	f000 f884 	bl	800189c <_printf_i>
 8001794:	e7ea      	b.n	800176c <_svfiprintf_r+0x1a8>
 8001796:	bf00      	nop
 8001798:	08001d56 	stmdaeq	r0, {r1, r2, r4, r6, r8, sl, fp, ip}
 800179c:	08001d5c 	stmdaeq	r0, {r2, r3, r4, r6, r8, sl, fp, ip}
 80017a0:	08001d60 	stmdaeq	r0, {r5, r6, r8, sl, fp, ip}
 80017a4:	00000000 	andeq	r0, r0, r0
 80017a8:	0800150f 	stmdaeq	r0, {r0, r1, r2, r3, r8, sl, ip}

080017ac <_printf_common>:
 80017ac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80017b0:	4691      	mov	r9, r2
 80017b2:	461f      	mov	r7, r3
 80017b4:	688a      	ldr	r2, [r1, #8]
 80017b6:	690b      	ldr	r3, [r1, #16]
 80017b8:	4606      	mov	r6, r0
 80017ba:	4293      	cmp	r3, r2
 80017bc:	bfb8      	it	lt
 80017be:	4613      	movlt	r3, r2
 80017c0:	f8c9 3000 	str.w	r3, [r9]
 80017c4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
 80017c8:	460c      	mov	r4, r1
 80017ca:	f8dd 8020 	ldr.w	r8, [sp, #32]
 80017ce:	b112      	cbz	r2, 80017d6 <_printf_common+0x2a>
 80017d0:	3301      	adds	r3, #1
 80017d2:	f8c9 3000 	str.w	r3, [r9]
 80017d6:	6823      	ldr	r3, [r4, #0]
 80017d8:	0699      	lsls	r1, r3, #26
 80017da:	bf42      	ittt	mi
 80017dc:	f8d9 3000 	ldrmi.w	r3, [r9]
 80017e0:	3302      	addmi	r3, #2
 80017e2:	f8c9 3000 	strmi.w	r3, [r9]
 80017e6:	6825      	ldr	r5, [r4, #0]
 80017e8:	f015 0506 	ands.w	r5, r5, #6
 80017ec:	d107      	bne.n	80017fe <_printf_common+0x52>
 80017ee:	f104 0a19 	add.w	sl, r4, #25
 80017f2:	68e3      	ldr	r3, [r4, #12]
 80017f4:	f8d9 2000 	ldr.w	r2, [r9]
 80017f8:	1a9b      	subs	r3, r3, r2
 80017fa:	429d      	cmp	r5, r3
 80017fc:	db2a      	blt.n	8001854 <_printf_common+0xa8>
 80017fe:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 8001802:	6822      	ldr	r2, [r4, #0]
 8001804:	3300      	adds	r3, #0
 8001806:	bf18      	it	ne
 8001808:	2301      	movne	r3, #1
 800180a:	0692      	lsls	r2, r2, #26
 800180c:	d42f      	bmi.n	800186e <_printf_common+0xc2>
 800180e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8001812:	4639      	mov	r1, r7
 8001814:	4630      	mov	r0, r6
 8001816:	47c0      	blx	r8
 8001818:	3001      	adds	r0, #1
 800181a:	d022      	beq.n	8001862 <_printf_common+0xb6>
 800181c:	6823      	ldr	r3, [r4, #0]
 800181e:	68e5      	ldr	r5, [r4, #12]
 8001820:	f003 0306 	and.w	r3, r3, #6
 8001824:	2b04      	cmp	r3, #4
 8001826:	bf18      	it	ne
 8001828:	2500      	movne	r5, #0
 800182a:	f8d9 2000 	ldr.w	r2, [r9]
 800182e:	f04f 0900 	mov.w	r9, #0
 8001832:	bf08      	it	eq
 8001834:	1aad      	subeq	r5, r5, r2
 8001836:	68a3      	ldr	r3, [r4, #8]
 8001838:	6922      	ldr	r2, [r4, #16]
 800183a:	bf08      	it	eq
 800183c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 8001840:	4293      	cmp	r3, r2
 8001842:	bfc4      	itt	gt
 8001844:	1a9b      	subgt	r3, r3, r2
 8001846:	18ed      	addgt	r5, r5, r3
 8001848:	341a      	adds	r4, #26
 800184a:	454d      	cmp	r5, r9
 800184c:	d11b      	bne.n	8001886 <_printf_common+0xda>
 800184e:	2000      	movs	r0, #0
 8001850:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001854:	2301      	movs	r3, #1
 8001856:	4652      	mov	r2, sl
 8001858:	4639      	mov	r1, r7
 800185a:	4630      	mov	r0, r6
 800185c:	47c0      	blx	r8
 800185e:	3001      	adds	r0, #1
 8001860:	d103      	bne.n	800186a <_printf_common+0xbe>
 8001862:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001866:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800186a:	3501      	adds	r5, #1
 800186c:	e7c1      	b.n	80017f2 <_printf_common+0x46>
 800186e:	2030      	movs	r0, #48	; 0x30
 8001870:	18e1      	adds	r1, r4, r3
 8001872:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
 8001876:	1c5a      	adds	r2, r3, #1
 8001878:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
 800187c:	4422      	add	r2, r4
 800187e:	3302      	adds	r3, #2
 8001880:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
 8001884:	e7c3      	b.n	800180e <_printf_common+0x62>
 8001886:	2301      	movs	r3, #1
 8001888:	4622      	mov	r2, r4
 800188a:	4639      	mov	r1, r7
 800188c:	4630      	mov	r0, r6
 800188e:	47c0      	blx	r8
 8001890:	3001      	adds	r0, #1
 8001892:	d0e6      	beq.n	8001862 <_printf_common+0xb6>
 8001894:	f109 0901 	add.w	r9, r9, #1
 8001898:	e7d7      	b.n	800184a <_printf_common+0x9e>
	...

0800189c <_printf_i>:
 800189c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80018a0:	4617      	mov	r7, r2
 80018a2:	7e0a      	ldrb	r2, [r1, #24]
 80018a4:	b085      	sub	sp, #20
 80018a6:	2a6e      	cmp	r2, #110	; 0x6e
 80018a8:	4698      	mov	r8, r3
 80018aa:	4606      	mov	r6, r0
 80018ac:	460c      	mov	r4, r1
 80018ae:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80018b0:	f101 0e43 	add.w	lr, r1, #67	; 0x43
 80018b4:	f000 80bc 	beq.w	8001a30 <_printf_i+0x194>
 80018b8:	d81a      	bhi.n	80018f0 <_printf_i+0x54>
 80018ba:	2a63      	cmp	r2, #99	; 0x63
 80018bc:	d02e      	beq.n	800191c <_printf_i+0x80>
 80018be:	d80a      	bhi.n	80018d6 <_printf_i+0x3a>
 80018c0:	2a00      	cmp	r2, #0
 80018c2:	f000 80c8 	beq.w	8001a56 <_printf_i+0x1ba>
 80018c6:	2a58      	cmp	r2, #88	; 0x58
 80018c8:	f000 808a 	beq.w	80019e0 <_printf_i+0x144>
 80018cc:	f104 0542 	add.w	r5, r4, #66	; 0x42
 80018d0:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 80018d4:	e02a      	b.n	800192c <_printf_i+0x90>
 80018d6:	2a64      	cmp	r2, #100	; 0x64
 80018d8:	d001      	beq.n	80018de <_printf_i+0x42>
 80018da:	2a69      	cmp	r2, #105	; 0x69
 80018dc:	d1f6      	bne.n	80018cc <_printf_i+0x30>
 80018de:	6821      	ldr	r1, [r4, #0]
 80018e0:	681a      	ldr	r2, [r3, #0]
 80018e2:	f011 0f80 	tst.w	r1, #128	; 0x80
 80018e6:	d023      	beq.n	8001930 <_printf_i+0x94>
 80018e8:	1d11      	adds	r1, r2, #4
 80018ea:	6019      	str	r1, [r3, #0]
 80018ec:	6813      	ldr	r3, [r2, #0]
 80018ee:	e027      	b.n	8001940 <_printf_i+0xa4>
 80018f0:	2a73      	cmp	r2, #115	; 0x73
 80018f2:	f000 80b4 	beq.w	8001a5e <_printf_i+0x1c2>
 80018f6:	d808      	bhi.n	800190a <_printf_i+0x6e>
 80018f8:	2a6f      	cmp	r2, #111	; 0x6f
 80018fa:	d02a      	beq.n	8001952 <_printf_i+0xb6>
 80018fc:	2a70      	cmp	r2, #112	; 0x70
 80018fe:	d1e5      	bne.n	80018cc <_printf_i+0x30>
 8001900:	680a      	ldr	r2, [r1, #0]
 8001902:	f042 0220 	orr.w	r2, r2, #32
 8001906:	600a      	str	r2, [r1, #0]
 8001908:	e003      	b.n	8001912 <_printf_i+0x76>
 800190a:	2a75      	cmp	r2, #117	; 0x75
 800190c:	d021      	beq.n	8001952 <_printf_i+0xb6>
 800190e:	2a78      	cmp	r2, #120	; 0x78
 8001910:	d1dc      	bne.n	80018cc <_printf_i+0x30>
 8001912:	2278      	movs	r2, #120	; 0x78
 8001914:	496f      	ldr	r1, [pc, #444]	; (8001ad4 <_printf_i+0x238>)
 8001916:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
 800191a:	e064      	b.n	80019e6 <_printf_i+0x14a>
 800191c:	681a      	ldr	r2, [r3, #0]
 800191e:	f101 0542 	add.w	r5, r1, #66	; 0x42
 8001922:	1d11      	adds	r1, r2, #4
 8001924:	6019      	str	r1, [r3, #0]
 8001926:	6813      	ldr	r3, [r2, #0]
 8001928:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 800192c:	2301      	movs	r3, #1
 800192e:	e0a3      	b.n	8001a78 <_printf_i+0x1dc>
 8001930:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001934:	f102 0104 	add.w	r1, r2, #4
 8001938:	6019      	str	r1, [r3, #0]
 800193a:	d0d7      	beq.n	80018ec <_printf_i+0x50>
 800193c:	f9b2 3000 	ldrsh.w	r3, [r2]
 8001940:	2b00      	cmp	r3, #0
 8001942:	da03      	bge.n	800194c <_printf_i+0xb0>
 8001944:	222d      	movs	r2, #45	; 0x2d
 8001946:	425b      	negs	r3, r3
 8001948:	f884 2043 	strb.w	r2, [r4, #67]	; 0x43
 800194c:	4962      	ldr	r1, [pc, #392]	; (8001ad8 <_printf_i+0x23c>)
 800194e:	220a      	movs	r2, #10
 8001950:	e017      	b.n	8001982 <_printf_i+0xe6>
 8001952:	6820      	ldr	r0, [r4, #0]
 8001954:	6819      	ldr	r1, [r3, #0]
 8001956:	f010 0f80 	tst.w	r0, #128	; 0x80
 800195a:	d003      	beq.n	8001964 <_printf_i+0xc8>
 800195c:	1d08      	adds	r0, r1, #4
 800195e:	6018      	str	r0, [r3, #0]
 8001960:	680b      	ldr	r3, [r1, #0]
 8001962:	e006      	b.n	8001972 <_printf_i+0xd6>
 8001964:	f010 0f40 	tst.w	r0, #64	; 0x40
 8001968:	f101 0004 	add.w	r0, r1, #4
 800196c:	6018      	str	r0, [r3, #0]
 800196e:	d0f7      	beq.n	8001960 <_printf_i+0xc4>
 8001970:	880b      	ldrh	r3, [r1, #0]
 8001972:	2a6f      	cmp	r2, #111	; 0x6f
 8001974:	bf14      	ite	ne
 8001976:	220a      	movne	r2, #10
 8001978:	2208      	moveq	r2, #8
 800197a:	4957      	ldr	r1, [pc, #348]	; (8001ad8 <_printf_i+0x23c>)
 800197c:	2000      	movs	r0, #0
 800197e:	f884 0043 	strb.w	r0, [r4, #67]	; 0x43
 8001982:	6865      	ldr	r5, [r4, #4]
 8001984:	2d00      	cmp	r5, #0
 8001986:	60a5      	str	r5, [r4, #8]
 8001988:	f2c0 809c 	blt.w	8001ac4 <_printf_i+0x228>
 800198c:	6820      	ldr	r0, [r4, #0]
 800198e:	f020 0004 	bic.w	r0, r0, #4
 8001992:	6020      	str	r0, [r4, #0]
 8001994:	2b00      	cmp	r3, #0
 8001996:	d13f      	bne.n	8001a18 <_printf_i+0x17c>
 8001998:	2d00      	cmp	r5, #0
 800199a:	f040 8095 	bne.w	8001ac8 <_printf_i+0x22c>
 800199e:	4675      	mov	r5, lr
 80019a0:	2a08      	cmp	r2, #8
 80019a2:	d10b      	bne.n	80019bc <_printf_i+0x120>
 80019a4:	6823      	ldr	r3, [r4, #0]
 80019a6:	07da      	lsls	r2, r3, #31
 80019a8:	d508      	bpl.n	80019bc <_printf_i+0x120>
 80019aa:	6923      	ldr	r3, [r4, #16]
 80019ac:	6862      	ldr	r2, [r4, #4]
 80019ae:	429a      	cmp	r2, r3
 80019b0:	bfde      	ittt	le
 80019b2:	2330      	movle	r3, #48	; 0x30
 80019b4:	f805 3c01 	strble.w	r3, [r5, #-1]
 80019b8:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
 80019bc:	ebae 0305 	sub.w	r3, lr, r5
 80019c0:	6123      	str	r3, [r4, #16]
 80019c2:	f8cd 8000 	str.w	r8, [sp]
 80019c6:	463b      	mov	r3, r7
 80019c8:	aa03      	add	r2, sp, #12
 80019ca:	4621      	mov	r1, r4
 80019cc:	4630      	mov	r0, r6
 80019ce:	f7ff feed 	bl	80017ac <_printf_common>
 80019d2:	3001      	adds	r0, #1
 80019d4:	d155      	bne.n	8001a82 <_printf_i+0x1e6>
 80019d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80019da:	b005      	add	sp, #20
 80019dc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80019e0:	f881 2045 	strb.w	r2, [r1, #69]	; 0x45
 80019e4:	493c      	ldr	r1, [pc, #240]	; (8001ad8 <_printf_i+0x23c>)
 80019e6:	6822      	ldr	r2, [r4, #0]
 80019e8:	6818      	ldr	r0, [r3, #0]
 80019ea:	f012 0f80 	tst.w	r2, #128	; 0x80
 80019ee:	f100 0504 	add.w	r5, r0, #4
 80019f2:	601d      	str	r5, [r3, #0]
 80019f4:	d001      	beq.n	80019fa <_printf_i+0x15e>
 80019f6:	6803      	ldr	r3, [r0, #0]
 80019f8:	e002      	b.n	8001a00 <_printf_i+0x164>
 80019fa:	0655      	lsls	r5, r2, #25
 80019fc:	d5fb      	bpl.n	80019f6 <_printf_i+0x15a>
 80019fe:	8803      	ldrh	r3, [r0, #0]
 8001a00:	07d0      	lsls	r0, r2, #31
 8001a02:	bf44      	itt	mi
 8001a04:	f042 0220 	orrmi.w	r2, r2, #32
 8001a08:	6022      	strmi	r2, [r4, #0]
 8001a0a:	b91b      	cbnz	r3, 8001a14 <_printf_i+0x178>
 8001a0c:	6822      	ldr	r2, [r4, #0]
 8001a0e:	f022 0220 	bic.w	r2, r2, #32
 8001a12:	6022      	str	r2, [r4, #0]
 8001a14:	2210      	movs	r2, #16
 8001a16:	e7b1      	b.n	800197c <_printf_i+0xe0>
 8001a18:	4675      	mov	r5, lr
 8001a1a:	fbb3 f0f2 	udiv	r0, r3, r2
 8001a1e:	fb02 3310 	mls	r3, r2, r0, r3
 8001a22:	5ccb      	ldrb	r3, [r1, r3]
 8001a24:	f805 3d01 	strb.w	r3, [r5, #-1]!
 8001a28:	4603      	mov	r3, r0
 8001a2a:	2800      	cmp	r0, #0
 8001a2c:	d1f5      	bne.n	8001a1a <_printf_i+0x17e>
 8001a2e:	e7b7      	b.n	80019a0 <_printf_i+0x104>
 8001a30:	6808      	ldr	r0, [r1, #0]
 8001a32:	681a      	ldr	r2, [r3, #0]
 8001a34:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001a38:	6949      	ldr	r1, [r1, #20]
 8001a3a:	d004      	beq.n	8001a46 <_printf_i+0x1aa>
 8001a3c:	1d10      	adds	r0, r2, #4
 8001a3e:	6018      	str	r0, [r3, #0]
 8001a40:	6813      	ldr	r3, [r2, #0]
 8001a42:	6019      	str	r1, [r3, #0]
 8001a44:	e007      	b.n	8001a56 <_printf_i+0x1ba>
 8001a46:	f010 0f40 	tst.w	r0, #64	; 0x40
 8001a4a:	f102 0004 	add.w	r0, r2, #4
 8001a4e:	6018      	str	r0, [r3, #0]
 8001a50:	6813      	ldr	r3, [r2, #0]
 8001a52:	d0f6      	beq.n	8001a42 <_printf_i+0x1a6>
 8001a54:	8019      	strh	r1, [r3, #0]
 8001a56:	2300      	movs	r3, #0
 8001a58:	4675      	mov	r5, lr
 8001a5a:	6123      	str	r3, [r4, #16]
 8001a5c:	e7b1      	b.n	80019c2 <_printf_i+0x126>
 8001a5e:	681a      	ldr	r2, [r3, #0]
 8001a60:	1d11      	adds	r1, r2, #4
 8001a62:	6019      	str	r1, [r3, #0]
 8001a64:	6815      	ldr	r5, [r2, #0]
 8001a66:	2100      	movs	r1, #0
 8001a68:	6862      	ldr	r2, [r4, #4]
 8001a6a:	4628      	mov	r0, r5
 8001a6c:	f000 f843 	bl	8001af6 <memchr>
 8001a70:	b108      	cbz	r0, 8001a76 <_printf_i+0x1da>
 8001a72:	1b40      	subs	r0, r0, r5
 8001a74:	6060      	str	r0, [r4, #4]
 8001a76:	6863      	ldr	r3, [r4, #4]
 8001a78:	6123      	str	r3, [r4, #16]
 8001a7a:	2300      	movs	r3, #0
 8001a7c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8001a80:	e79f      	b.n	80019c2 <_printf_i+0x126>
 8001a82:	6923      	ldr	r3, [r4, #16]
 8001a84:	462a      	mov	r2, r5
 8001a86:	4639      	mov	r1, r7
 8001a88:	4630      	mov	r0, r6
 8001a8a:	47c0      	blx	r8
 8001a8c:	3001      	adds	r0, #1
 8001a8e:	d0a2      	beq.n	80019d6 <_printf_i+0x13a>
 8001a90:	6823      	ldr	r3, [r4, #0]
 8001a92:	079b      	lsls	r3, r3, #30
 8001a94:	d507      	bpl.n	8001aa6 <_printf_i+0x20a>
 8001a96:	2500      	movs	r5, #0
 8001a98:	f104 0919 	add.w	r9, r4, #25
 8001a9c:	68e3      	ldr	r3, [r4, #12]
 8001a9e:	9a03      	ldr	r2, [sp, #12]
 8001aa0:	1a9b      	subs	r3, r3, r2
 8001aa2:	429d      	cmp	r5, r3
 8001aa4:	db05      	blt.n	8001ab2 <_printf_i+0x216>
 8001aa6:	68e0      	ldr	r0, [r4, #12]
 8001aa8:	9b03      	ldr	r3, [sp, #12]
 8001aaa:	4298      	cmp	r0, r3
 8001aac:	bfb8      	it	lt
 8001aae:	4618      	movlt	r0, r3
 8001ab0:	e793      	b.n	80019da <_printf_i+0x13e>
 8001ab2:	2301      	movs	r3, #1
 8001ab4:	464a      	mov	r2, r9
 8001ab6:	4639      	mov	r1, r7
 8001ab8:	4630      	mov	r0, r6
 8001aba:	47c0      	blx	r8
 8001abc:	3001      	adds	r0, #1
 8001abe:	d08a      	beq.n	80019d6 <_printf_i+0x13a>
 8001ac0:	3501      	adds	r5, #1
 8001ac2:	e7eb      	b.n	8001a9c <_printf_i+0x200>
 8001ac4:	2b00      	cmp	r3, #0
 8001ac6:	d1a7      	bne.n	8001a18 <_printf_i+0x17c>
 8001ac8:	780b      	ldrb	r3, [r1, #0]
 8001aca:	f104 0542 	add.w	r5, r4, #66	; 0x42
 8001ace:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8001ad2:	e765      	b.n	80019a0 <_printf_i+0x104>
 8001ad4:	08001d78 	stmdaeq	r0, {r3, r4, r5, r6, r8, sl, fp, ip}
 8001ad8:	08001d67 	stmdaeq	r0, {r0, r1, r2, r5, r6, r8, sl, fp, ip}

08001adc <__ascii_wctomb>:
 8001adc:	b149      	cbz	r1, 8001af2 <__ascii_wctomb+0x16>
 8001ade:	2aff      	cmp	r2, #255	; 0xff
 8001ae0:	bf8b      	itete	hi
 8001ae2:	238a      	movhi	r3, #138	; 0x8a
 8001ae4:	700a      	strbls	r2, [r1, #0]
 8001ae6:	6003      	strhi	r3, [r0, #0]
 8001ae8:	2001      	movls	r0, #1
 8001aea:	bf88      	it	hi
 8001aec:	f04f 30ff 	movhi.w	r0, #4294967295	; 0xffffffff
 8001af0:	4770      	bx	lr
 8001af2:	4608      	mov	r0, r1
 8001af4:	4770      	bx	lr

08001af6 <memchr>:
 8001af6:	b510      	push	{r4, lr}
 8001af8:	b2c9      	uxtb	r1, r1
 8001afa:	4402      	add	r2, r0
 8001afc:	4290      	cmp	r0, r2
 8001afe:	4603      	mov	r3, r0
 8001b00:	d101      	bne.n	8001b06 <memchr+0x10>
 8001b02:	2000      	movs	r0, #0
 8001b04:	bd10      	pop	{r4, pc}
 8001b06:	781c      	ldrb	r4, [r3, #0]
 8001b08:	3001      	adds	r0, #1
 8001b0a:	428c      	cmp	r4, r1
 8001b0c:	d1f6      	bne.n	8001afc <memchr+0x6>
 8001b0e:	4618      	mov	r0, r3
 8001b10:	bd10      	pop	{r4, pc}

08001b12 <memmove>:
 8001b12:	4288      	cmp	r0, r1
 8001b14:	b510      	push	{r4, lr}
 8001b16:	eb01 0302 	add.w	r3, r1, r2
 8001b1a:	d803      	bhi.n	8001b24 <memmove+0x12>
 8001b1c:	1e42      	subs	r2, r0, #1
 8001b1e:	4299      	cmp	r1, r3
 8001b20:	d10c      	bne.n	8001b3c <memmove+0x2a>
 8001b22:	bd10      	pop	{r4, pc}
 8001b24:	4298      	cmp	r0, r3
 8001b26:	d2f9      	bcs.n	8001b1c <memmove+0xa>
 8001b28:	1881      	adds	r1, r0, r2
 8001b2a:	1ad2      	subs	r2, r2, r3
 8001b2c:	42d3      	cmn	r3, r2
 8001b2e:	d100      	bne.n	8001b32 <memmove+0x20>
 8001b30:	bd10      	pop	{r4, pc}
 8001b32:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8001b36:	f801 4d01 	strb.w	r4, [r1, #-1]!
 8001b3a:	e7f7      	b.n	8001b2c <memmove+0x1a>
 8001b3c:	f811 4b01 	ldrb.w	r4, [r1], #1
 8001b40:	f802 4f01 	strb.w	r4, [r2, #1]!
 8001b44:	e7eb      	b.n	8001b1e <memmove+0xc>
	...

08001b48 <_free_r>:
 8001b48:	b538      	push	{r3, r4, r5, lr}
 8001b4a:	4605      	mov	r5, r0
 8001b4c:	2900      	cmp	r1, #0
 8001b4e:	d043      	beq.n	8001bd8 <_free_r+0x90>
 8001b50:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8001b54:	1f0c      	subs	r4, r1, #4
 8001b56:	2b00      	cmp	r3, #0
 8001b58:	bfb8      	it	lt
 8001b5a:	18e4      	addlt	r4, r4, r3
 8001b5c:	f000 f8d4 	bl	8001d08 <__malloc_lock>
 8001b60:	4a1e      	ldr	r2, [pc, #120]	; (8001bdc <_free_r+0x94>)
 8001b62:	6813      	ldr	r3, [r2, #0]
 8001b64:	4610      	mov	r0, r2
 8001b66:	b933      	cbnz	r3, 8001b76 <_free_r+0x2e>
 8001b68:	6063      	str	r3, [r4, #4]
 8001b6a:	6014      	str	r4, [r2, #0]
 8001b6c:	4628      	mov	r0, r5
 8001b6e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001b72:	f000 b8ca 	b.w	8001d0a <__malloc_unlock>
 8001b76:	42a3      	cmp	r3, r4
 8001b78:	d90b      	bls.n	8001b92 <_free_r+0x4a>
 8001b7a:	6821      	ldr	r1, [r4, #0]
 8001b7c:	1862      	adds	r2, r4, r1
 8001b7e:	4293      	cmp	r3, r2
 8001b80:	bf01      	itttt	eq
 8001b82:	681a      	ldreq	r2, [r3, #0]
 8001b84:	685b      	ldreq	r3, [r3, #4]
 8001b86:	1852      	addeq	r2, r2, r1
 8001b88:	6022      	streq	r2, [r4, #0]
 8001b8a:	6063      	str	r3, [r4, #4]
 8001b8c:	6004      	str	r4, [r0, #0]
 8001b8e:	e7ed      	b.n	8001b6c <_free_r+0x24>
 8001b90:	4613      	mov	r3, r2
 8001b92:	685a      	ldr	r2, [r3, #4]
 8001b94:	b10a      	cbz	r2, 8001b9a <_free_r+0x52>
 8001b96:	42a2      	cmp	r2, r4
 8001b98:	d9fa      	bls.n	8001b90 <_free_r+0x48>
 8001b9a:	6819      	ldr	r1, [r3, #0]
 8001b9c:	1858      	adds	r0, r3, r1
 8001b9e:	42a0      	cmp	r0, r4
 8001ba0:	d10b      	bne.n	8001bba <_free_r+0x72>
 8001ba2:	6820      	ldr	r0, [r4, #0]
 8001ba4:	4401      	add	r1, r0
 8001ba6:	1858      	adds	r0, r3, r1
 8001ba8:	4282      	cmp	r2, r0
 8001baa:	6019      	str	r1, [r3, #0]
 8001bac:	d1de      	bne.n	8001b6c <_free_r+0x24>
 8001bae:	6810      	ldr	r0, [r2, #0]
 8001bb0:	6852      	ldr	r2, [r2, #4]
 8001bb2:	4401      	add	r1, r0
 8001bb4:	6019      	str	r1, [r3, #0]
 8001bb6:	605a      	str	r2, [r3, #4]
 8001bb8:	e7d8      	b.n	8001b6c <_free_r+0x24>
 8001bba:	d902      	bls.n	8001bc2 <_free_r+0x7a>
 8001bbc:	230c      	movs	r3, #12
 8001bbe:	602b      	str	r3, [r5, #0]
 8001bc0:	e7d4      	b.n	8001b6c <_free_r+0x24>
 8001bc2:	6820      	ldr	r0, [r4, #0]
 8001bc4:	1821      	adds	r1, r4, r0
 8001bc6:	428a      	cmp	r2, r1
 8001bc8:	bf01      	itttt	eq
 8001bca:	6811      	ldreq	r1, [r2, #0]
 8001bcc:	6852      	ldreq	r2, [r2, #4]
 8001bce:	1809      	addeq	r1, r1, r0
 8001bd0:	6021      	streq	r1, [r4, #0]
 8001bd2:	6062      	str	r2, [r4, #4]
 8001bd4:	605c      	str	r4, [r3, #4]
 8001bd6:	e7c9      	b.n	8001b6c <_free_r+0x24>
 8001bd8:	bd38      	pop	{r3, r4, r5, pc}
 8001bda:	bf00      	nop
 8001bdc:	200014b4 			; <UNDEFINED> instruction: 0x200014b4

08001be0 <_malloc_r>:
 8001be0:	b570      	push	{r4, r5, r6, lr}
 8001be2:	1ccd      	adds	r5, r1, #3
 8001be4:	f025 0503 	bic.w	r5, r5, #3
 8001be8:	3508      	adds	r5, #8
 8001bea:	2d0c      	cmp	r5, #12
 8001bec:	bf38      	it	cc
 8001bee:	250c      	movcc	r5, #12
 8001bf0:	2d00      	cmp	r5, #0
 8001bf2:	4606      	mov	r6, r0
 8001bf4:	db01      	blt.n	8001bfa <_malloc_r+0x1a>
 8001bf6:	42a9      	cmp	r1, r5
 8001bf8:	d903      	bls.n	8001c02 <_malloc_r+0x22>
 8001bfa:	230c      	movs	r3, #12
 8001bfc:	6033      	str	r3, [r6, #0]
 8001bfe:	2000      	movs	r0, #0
 8001c00:	bd70      	pop	{r4, r5, r6, pc}
 8001c02:	f000 f881 	bl	8001d08 <__malloc_lock>
 8001c06:	4a23      	ldr	r2, [pc, #140]	; (8001c94 <_malloc_r+0xb4>)
 8001c08:	6814      	ldr	r4, [r2, #0]
 8001c0a:	4621      	mov	r1, r4
 8001c0c:	b991      	cbnz	r1, 8001c34 <_malloc_r+0x54>
 8001c0e:	4c22      	ldr	r4, [pc, #136]	; (8001c98 <_malloc_r+0xb8>)
 8001c10:	6823      	ldr	r3, [r4, #0]
 8001c12:	b91b      	cbnz	r3, 8001c1c <_malloc_r+0x3c>
 8001c14:	4630      	mov	r0, r6
 8001c16:	f000 f867 	bl	8001ce8 <_sbrk_r>
 8001c1a:	6020      	str	r0, [r4, #0]
 8001c1c:	4629      	mov	r1, r5
 8001c1e:	4630      	mov	r0, r6
 8001c20:	f000 f862 	bl	8001ce8 <_sbrk_r>
 8001c24:	1c43      	adds	r3, r0, #1
 8001c26:	d126      	bne.n	8001c76 <_malloc_r+0x96>
 8001c28:	230c      	movs	r3, #12
 8001c2a:	4630      	mov	r0, r6
 8001c2c:	6033      	str	r3, [r6, #0]
 8001c2e:	f000 f86c 	bl	8001d0a <__malloc_unlock>
 8001c32:	e7e4      	b.n	8001bfe <_malloc_r+0x1e>
 8001c34:	680b      	ldr	r3, [r1, #0]
 8001c36:	1b5b      	subs	r3, r3, r5
 8001c38:	d41a      	bmi.n	8001c70 <_malloc_r+0x90>
 8001c3a:	2b0b      	cmp	r3, #11
 8001c3c:	d90f      	bls.n	8001c5e <_malloc_r+0x7e>
 8001c3e:	600b      	str	r3, [r1, #0]
 8001c40:	18cc      	adds	r4, r1, r3
 8001c42:	50cd      	str	r5, [r1, r3]
 8001c44:	4630      	mov	r0, r6
 8001c46:	f000 f860 	bl	8001d0a <__malloc_unlock>
 8001c4a:	f104 000b 	add.w	r0, r4, #11
 8001c4e:	1d23      	adds	r3, r4, #4
 8001c50:	f020 0007 	bic.w	r0, r0, #7
 8001c54:	1ac3      	subs	r3, r0, r3
 8001c56:	d01b      	beq.n	8001c90 <_malloc_r+0xb0>
 8001c58:	425a      	negs	r2, r3
 8001c5a:	50e2      	str	r2, [r4, r3]
 8001c5c:	bd70      	pop	{r4, r5, r6, pc}
 8001c5e:	428c      	cmp	r4, r1
 8001c60:	bf0b      	itete	eq
 8001c62:	6863      	ldreq	r3, [r4, #4]
 8001c64:	684b      	ldrne	r3, [r1, #4]
 8001c66:	6013      	streq	r3, [r2, #0]
 8001c68:	6063      	strne	r3, [r4, #4]
 8001c6a:	bf18      	it	ne
 8001c6c:	460c      	movne	r4, r1
 8001c6e:	e7e9      	b.n	8001c44 <_malloc_r+0x64>
 8001c70:	460c      	mov	r4, r1
 8001c72:	6849      	ldr	r1, [r1, #4]
 8001c74:	e7ca      	b.n	8001c0c <_malloc_r+0x2c>
 8001c76:	1cc4      	adds	r4, r0, #3
 8001c78:	f024 0403 	bic.w	r4, r4, #3
 8001c7c:	42a0      	cmp	r0, r4
 8001c7e:	d005      	beq.n	8001c8c <_malloc_r+0xac>
 8001c80:	1a21      	subs	r1, r4, r0
 8001c82:	4630      	mov	r0, r6
 8001c84:	f000 f830 	bl	8001ce8 <_sbrk_r>
 8001c88:	3001      	adds	r0, #1
 8001c8a:	d0cd      	beq.n	8001c28 <_malloc_r+0x48>
 8001c8c:	6025      	str	r5, [r4, #0]
 8001c8e:	e7d9      	b.n	8001c44 <_malloc_r+0x64>
 8001c90:	bd70      	pop	{r4, r5, r6, pc}
 8001c92:	bf00      	nop
 8001c94:	200014b4 			; <UNDEFINED> instruction: 0x200014b4
 8001c98:	200014b8 			; <UNDEFINED> instruction: 0x200014b8

08001c9c <_realloc_r>:
 8001c9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001c9e:	4607      	mov	r7, r0
 8001ca0:	4614      	mov	r4, r2
 8001ca2:	460e      	mov	r6, r1
 8001ca4:	b921      	cbnz	r1, 8001cb0 <_realloc_r+0x14>
 8001ca6:	4611      	mov	r1, r2
 8001ca8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001cac:	f7ff bf98 	b.w	8001be0 <_malloc_r>
 8001cb0:	b922      	cbnz	r2, 8001cbc <_realloc_r+0x20>
 8001cb2:	f7ff ff49 	bl	8001b48 <_free_r>
 8001cb6:	4625      	mov	r5, r4
 8001cb8:	4628      	mov	r0, r5
 8001cba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001cbc:	f000 f826 	bl	8001d0c <_malloc_usable_size_r>
 8001cc0:	4284      	cmp	r4, r0
 8001cc2:	d90f      	bls.n	8001ce4 <_realloc_r+0x48>
 8001cc4:	4621      	mov	r1, r4
 8001cc6:	4638      	mov	r0, r7
 8001cc8:	f7ff ff8a 	bl	8001be0 <_malloc_r>
 8001ccc:	4605      	mov	r5, r0
 8001cce:	2800      	cmp	r0, #0
 8001cd0:	d0f2      	beq.n	8001cb8 <_realloc_r+0x1c>
 8001cd2:	4631      	mov	r1, r6
 8001cd4:	4622      	mov	r2, r4
 8001cd6:	f7ff fb0b 	bl	80012f0 <memcpy>
 8001cda:	4631      	mov	r1, r6
 8001cdc:	4638      	mov	r0, r7
 8001cde:	f7ff ff33 	bl	8001b48 <_free_r>
 8001ce2:	e7e9      	b.n	8001cb8 <_realloc_r+0x1c>
 8001ce4:	4635      	mov	r5, r6
 8001ce6:	e7e7      	b.n	8001cb8 <_realloc_r+0x1c>

08001ce8 <_sbrk_r>:
 8001ce8:	b538      	push	{r3, r4, r5, lr}
 8001cea:	2300      	movs	r3, #0
 8001cec:	4c05      	ldr	r4, [pc, #20]	; (8001d04 <_sbrk_r+0x1c>)
 8001cee:	4605      	mov	r5, r0
 8001cf0:	4608      	mov	r0, r1
 8001cf2:	6023      	str	r3, [r4, #0]
 8001cf4:	f7fe fe6a 	bl	80009cc <_sbrk>
 8001cf8:	1c43      	adds	r3, r0, #1
 8001cfa:	d102      	bne.n	8001d02 <_sbrk_r+0x1a>
 8001cfc:	6823      	ldr	r3, [r4, #0]
 8001cfe:	b103      	cbz	r3, 8001d02 <_sbrk_r+0x1a>
 8001d00:	602b      	str	r3, [r5, #0]
 8001d02:	bd38      	pop	{r3, r4, r5, pc}
 8001d04:	200014bc 			; <UNDEFINED> instruction: 0x200014bc

08001d08 <__malloc_lock>:
 8001d08:	4770      	bx	lr

08001d0a <__malloc_unlock>:
 8001d0a:	4770      	bx	lr

08001d0c <_malloc_usable_size_r>:
 8001d0c:	f851 0c04 	ldr.w	r0, [r1, #-4]
 8001d10:	2800      	cmp	r0, #0
 8001d12:	f1a0 0004 	sub.w	r0, r0, #4
 8001d16:	bfbc      	itt	lt
 8001d18:	580b      	ldrlt	r3, [r1, r0]
 8001d1a:	18c0      	addlt	r0, r0, r3
 8001d1c:	4770      	bx	lr
 8001d1e:	0000      	movs	r0, r0
 8001d20:	0a646c25 	beq	991cdbc <_sidata+0x191af30>
 8001d24:	00000000 	andeq	r0, r0, r0
 8001d28:	000a6425 	andeq	r6, sl, r5, lsr #8
 8001d2c:	2c646c25 	stclcs	12, cr6, [r4], #-148	; 0xffffff6c
 8001d30:	646c2520 	strbtvs	r2, [ip], #-1312	; 0xfffffae0
 8001d34:	6c25202c 	stcvs	0, cr2, [r5], #-176	; 0xffffff50
 8001d38:	25202c64 	strcs	r2, [r0, #-3172]!	; 0xfffff39c
 8001d3c:	202c646c 	eorcs	r6, ip, ip, ror #8
 8001d40:	2c646c25 	stclcs	12, cr6, [r4], #-148	; 0xffffff6c
 8001d44:	646c2520 	strbtvs	r2, [ip], #-1312	; 0xfffffae0
 8001d48:	0000000a 	andeq	r0, r0, sl
 8001d4c:	4f500043 	svcmi	0x00500043
 8001d50:	00584953 	subseq	r4, r8, r3, asr r9
 8001d54:	2d23002e 	stccs	0, cr0, [r3, #-184]!	; 0xffffff48
 8001d58:	00202b30 	eoreq	r2, r0, r0, lsr fp
 8001d5c:	004c6c68 	subeq	r6, ip, r8, ror #24
 8001d60:	45676665 	strbmi	r6, [r7, #-1637]!	; 0xfffff99b
 8001d64:	30004746 	andcc	r4, r0, r6, asr #14
 8001d68:	34333231 	ldrtcc	r3, [r3], #-561	; 0xfffffdcf
 8001d6c:	38373635 	ldmdacc	r7!, {r0, r2, r4, r5, r9, sl, ip, sp}
 8001d70:	43424139 	movtmi	r4, #8505	; 0x2139
 8001d74:	00464544 	subeq	r4, r6, r4, asr #10
 8001d78:	33323130 	teqcc	r2, #48, 2
 8001d7c:	37363534 			; <UNDEFINED> instruction: 0x37363534
 8001d80:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
 8001d84:	66656463 	strbtvs	r6, [r5], -r3, ror #8
	...

08001d89 <_ctype_>:
 8001d89:	20202000 	eorcs	r2, r0, r0
 8001d8d:	20202020 	eorcs	r2, r0, r0, lsr #32
 8001d91:	28282020 	stmdacs	r8!, {r5, sp}
 8001d95:	20282828 	eorcs	r2, r8, r8, lsr #16
 8001d99:	20202020 	eorcs	r2, r0, r0, lsr #32
 8001d9d:	20202020 	eorcs	r2, r0, r0, lsr #32
 8001da1:	20202020 	eorcs	r2, r0, r0, lsr #32
 8001da5:	20202020 	eorcs	r2, r0, r0, lsr #32
 8001da9:	10108820 	andsne	r8, r0, r0, lsr #16
 8001dad:	10101010 	andsne	r1, r0, r0, lsl r0
 8001db1:	10101010 	andsne	r1, r0, r0, lsl r0
 8001db5:	10101010 	andsne	r1, r0, r0, lsl r0
 8001db9:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
 8001dbd:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
 8001dc1:	10040404 	andne	r0, r4, r4, lsl #8
 8001dc5:	10101010 	andsne	r1, r0, r0, lsl r0
 8001dc9:	41411010 	cmpmi	r1, r0, lsl r0
 8001dcd:	41414141 	cmpmi	r1, r1, asr #2
 8001dd1:	01010101 	tsteq	r1, r1, lsl #2
 8001dd5:	01010101 	tsteq	r1, r1, lsl #2
 8001dd9:	01010101 	tsteq	r1, r1, lsl #2
 8001ddd:	01010101 	tsteq	r1, r1, lsl #2
 8001de1:	01010101 	tsteq	r1, r1, lsl #2
 8001de5:	10101010 	andsne	r1, r0, r0, lsl r0
 8001de9:	42421010 	submi	r1, r2, #16
 8001ded:	42424242 	submi	r4, r2, #536870916	; 0x20000004
 8001df1:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 8001df5:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 8001df9:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 8001dfd:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 8001e01:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
 8001e05:	10101010 	andsne	r1, r0, r0, lsl r0
 8001e09:	00000020 	andeq	r0, r0, r0, lsr #32
	...

Disassembly of section ._check_stack:

200014c0 <._check_stack>:
	...

Disassembly of section .comment:

00000000 <.comment>:
}

// ----------------------------------------------------------------------------

void __attribute__ ((weak, noreturn)) abort (void)
{
   0:	3a434347 	bcc	10d0d24 <__Main_Stack_Size+0x10d0924>
  _exit (1);
   4:	72412820 	subvc	r2, r1, #32, 16	; 0x200000
   8:	52206863 	eorpl	r6, r0, #6488064	; 0x630000
int __attribute__((weak))
_unlink(char* name __attribute__((unused)))
{
  errno = ENOSYS;
  return -1;
}
   c:	736f7065 	cmnvc	pc, #101	; 0x65
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
  10:	726f7469 	rsbvc	r7, pc, #1761607680	; 0x69000000
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
  14:	37202979 			; <UNDEFINED> instruction: 0x37202979
    *p++ = *from++;
  18:	302e312e 	eorcc	r3, lr, lr, lsr #2
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
{
   0:	00003041 	andeq	r3, r0, r1, asr #32
  _exit (1);
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000026 	andeq	r0, r0, r6, lsr #32
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  while (p < region_end)
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
		tx_cts = 0;
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
		USART2->DR = (uint8_t) c;
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	1a011803 	bne	4603c <__Main_Stack_Size+0x45c3c>
  2c:	22021e01 	andcs	r1, r2, #1, 28
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
{
   0:	0000007c 	andeq	r0, r0, ip, ror r0
  _exit (1);
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
  10:	0800010c 	stmdaeq	r0, {r2, r3, r8}
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
  14:	00000004 	andeq	r0, r0, r4
    *p++ = *from++;
  18:	08000110 	stmdaeq	r0, {r4, r8}
  while (p < region_end)
  1c:	00000002 	andeq	r0, r0, r2
		tx_cts = 0;
  20:	08000114 	stmdaeq	r0, {r2, r4, r8}
		USART2->DR = (uint8_t) c;
  24:	00000014 	andeq	r0, r0, r4, lsl r0
  28:	08000128 	stmdaeq	r0, {r3, r5, r8}
  2c:	00000002 	andeq	r0, r0, r2
  30:	0800012c 	stmdaeq	r0, {r2, r3, r5, r8}
  34:	00000002 	andeq	r0, r0, r2
}
  38:	08000130 	stmdaeq	r0, {r4, r5, r8}
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	08000144 	stmdaeq	r0, {r2, r6, r8}
  44:	00000002 	andeq	r0, r0, r2
  48:	08000148 	stmdaeq	r0, {r3, r6, r8}
  4c:	00000014 	andeq	r0, r0, r4, lsl r0
  50:	0800015c 	stmdaeq	r0, {r2, r3, r4, r6, r8}
  54:	00000002 	andeq	r0, r0, r2
  58:	08000160 	stmdaeq	r0, {r5, r6, r8}
  5c:	00000002 	andeq	r0, r0, r2
  60:	08000164 	stmdaeq	r0, {r2, r5, r6, r8}
  64:	00000002 	andeq	r0, r0, r2
  68:	08000168 	stmdaeq	r0, {r3, r5, r6, r8}
  6c:	00000002 	andeq	r0, r0, r2
  70:	0800016c 	stmdaeq	r0, {r2, r3, r5, r6, r8}
  74:	00000002 	andeq	r0, r0, r2
	...
  80:	00000024 	andeq	r0, r0, r4, lsr #32
  84:	02220002 	eoreq	r0, r2, #2
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	08000828 	stmdaeq	r0, {r3, r5, fp}
  94:	00000104 	andeq	r0, r0, r4, lsl #2
  98:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
  9c:	0000005c 	andeq	r0, r0, ip, asr r0
	...
  a8:	0000001c 	andeq	r0, r0, ip, lsl r0
  ac:	06b60002 	ldrteq	r0, [r6], r2
  b0:	00040000 	andeq	r0, r4, r0
  b4:	00000000 	andeq	r0, r0, r0
  b8:	08000180 	stmdaeq	r0, {r7, r8}
  bc:	00000002 	andeq	r0, r0, r2
	...
  c8:	00000024 	andeq	r0, r0, r4, lsr #32
  cc:	077c0002 	ldrbeq	r0, [ip, -r2]!
  d0:	00040000 	andeq	r0, r4, r0
  d4:	00000000 	andeq	r0, r0, r0
  d8:	08000988 	stmdaeq	r0, {r3, r7, r8, fp}
  dc:	00000006 	andeq	r0, r0, r6
  e0:	00000000 	andeq	r0, r0, r0
  e4:	0000000a 	andeq	r0, r0, sl
	...
  f0:	00000024 	andeq	r0, r0, r4, lsr #32
  f4:	08070002 	stmdaeq	r7, {r1}
  f8:	00040000 	andeq	r0, r4, r0
  fc:	00000000 	andeq	r0, r0, r0
 100:	08000990 	stmdaeq	r0, {r4, r7, r8, fp}
 104:	00000018 	andeq	r0, r0, r8, lsl r0
 108:	080009a8 	stmdaeq	r0, {r3, r5, r7, r8, fp}
 10c:	00000004 	andeq	r0, r0, r4
	...
 118:	0000001c 	andeq	r0, r0, ip, lsl r0
 11c:	0ab80002 	beq	fee0012c <_estack+0xdedfb12c>
 120:	00040000 	andeq	r0, r4, r0
 124:	00000000 	andeq	r0, r0, r0
 128:	080009ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, fp}
 12c:	00000020 	andeq	r0, r0, r0, lsr #32
	...
 138:	0000001c 	andeq	r0, r0, ip, lsl r0
 13c:	0d620002 	stcleq	0, cr0, [r2, #-8]!
 140:	00040000 	andeq	r0, r4, r0
 144:	00000000 	andeq	r0, r0, r0
 148:	080009cc 	stmdaeq	r0, {r2, r3, r6, r7, r8, fp}
 14c:	00000040 	andeq	r0, r0, r0, asr #32
	...
 158:	0000002c 	andeq	r0, r0, ip, lsr #32
 15c:	16950002 	ldrne	r0, [r5], r2
 160:	00040000 	andeq	r0, r4, r0
	...
 16c:	00000020 	andeq	r0, r0, r0, lsr #32
 170:	00000000 	andeq	r0, r0, r0
 174:	00000010 	andeq	r0, r0, r0, lsl r0
 178:	08000184 	stmdaeq	r0, {r2, r7, r8}
 17c:	00000074 	andeq	r0, r0, r4, ror r0
	...
 188:	0000009c 	muleq	r0, ip, r0
 18c:	194c0002 	stmdbne	ip, {r1}^
 190:	00040000 	andeq	r0, r4, r0
 194:	00000000 	andeq	r0, r0, r0
 198:	08000a0c 	stmdaeq	r0, {r2, r3, r9, fp}
 19c:	00000010 	andeq	r0, r0, r0, lsl r0
 1a0:	00000000 	andeq	r0, r0, r0
 1a4:	00000010 	andeq	r0, r0, r0, lsl r0
 1a8:	00000000 	andeq	r0, r0, r0
 1ac:	00000010 	andeq	r0, r0, r0, lsl r0
 1b0:	00000000 	andeq	r0, r0, r0
 1b4:	00000010 	andeq	r0, r0, r0, lsl r0
 1b8:	00000000 	andeq	r0, r0, r0
 1bc:	00000010 	andeq	r0, r0, r0, lsl r0
 1c0:	00000000 	andeq	r0, r0, r0
 1c4:	00000010 	andeq	r0, r0, r0, lsl r0
 1c8:	00000000 	andeq	r0, r0, r0
 1cc:	00000010 	andeq	r0, r0, r0, lsl r0
 1d0:	00000000 	andeq	r0, r0, r0
 1d4:	00000010 	andeq	r0, r0, r0, lsl r0
 1d8:	00000000 	andeq	r0, r0, r0
 1dc:	00000010 	andeq	r0, r0, r0, lsl r0
 1e0:	00000000 	andeq	r0, r0, r0
 1e4:	0000000e 	andeq	r0, r0, lr
 1e8:	00000000 	andeq	r0, r0, r0
 1ec:	00000010 	andeq	r0, r0, r0, lsl r0
 1f0:	00000000 	andeq	r0, r0, r0
 1f4:	00000010 	andeq	r0, r0, r0, lsl r0
 1f8:	00000000 	andeq	r0, r0, r0
 1fc:	00000010 	andeq	r0, r0, r0, lsl r0
 200:	00000000 	andeq	r0, r0, r0
 204:	00000010 	andeq	r0, r0, r0, lsl r0
 208:	00000000 	andeq	r0, r0, r0
 20c:	00000010 	andeq	r0, r0, r0, lsl r0
 210:	00000000 	andeq	r0, r0, r0
 214:	00000010 	andeq	r0, r0, r0, lsl r0
 218:	00000000 	andeq	r0, r0, r0
 21c:	00000010 	andeq	r0, r0, r0, lsl r0
	...
 228:	0000003c 	andeq	r0, r0, ip, lsr r0
 22c:	2a760002 	bcs	1d8023c <__Main_Stack_Size+0x1d7fe3c>
 230:	00040000 	andeq	r0, r4, r0
 234:	00000000 	andeq	r0, r0, r0
 238:	08000a1c 	stmdaeq	r0, {r2, r3, r4, r9, fp}
 23c:	000001c4 	andeq	r0, r0, r4, asr #3
 240:	08000be0 	stmdaeq	r0, {r5, r6, r7, r8, r9, fp}
 244:	00000088 	andeq	r0, r0, r8, lsl #1
 248:	08000c68 	stmdaeq	r0, {r3, r5, r6, sl, fp}
 24c:	00000068 	andeq	r0, r0, r8, rrx
 250:	00000000 	andeq	r0, r0, r0
 254:	0000003c 	andeq	r0, r0, ip, lsr r0
 258:	08000cd0 	stmdaeq	r0, {r4, r6, r7, sl, fp}
 25c:	000000a4 	andeq	r0, r0, r4, lsr #1
	...
 268:	00000044 	andeq	r0, r0, r4, asr #32
 26c:	3e4a0002 	cdpcc	0, 4, cr0, cr10, cr2, {0}
 270:	00040000 	andeq	r0, r4, r0
 274:	00000000 	andeq	r0, r0, r0
 278:	08000d74 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl, fp}
 27c:	0000007c 	andeq	r0, r0, ip, ror r0
 280:	08000df0 	stmdaeq	r0, {r4, r5, r6, r7, r8, sl, fp}
 284:	00000028 	andeq	r0, r0, r8, lsr #32
 288:	08000e18 	stmdaeq	r0, {r3, r4, r9, sl, fp}
 28c:	00000018 	andeq	r0, r0, r8, lsl r0
 290:	00000000 	andeq	r0, r0, r0
 294:	00000038 	andeq	r0, r0, r8, lsr r0
 298:	08000e30 	stmdaeq	r0, {r4, r5, r9, sl, fp}
 29c:	00000050 	andeq	r0, r0, r0, asr r0
 2a0:	08000e80 	stmdaeq	r0, {r7, r9, sl, fp}
 2a4:	00000054 	andeq	r0, r0, r4, asr r0
	...
 2b0:	00000024 	andeq	r0, r0, r4, lsr #32
 2b4:	45460002 	strbmi	r0, [r6, #-2]
 2b8:	00040000 	andeq	r0, r4, r0
 2bc:	00000000 	andeq	r0, r0, r0
 2c0:	08000ed4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl, fp}
 2c4:	00000040 	andeq	r0, r0, r0, asr #32
 2c8:	08000f14 	stmdaeq	r0, {r2, r4, r8, r9, sl, fp}
 2cc:	000000b8 	strheq	r0, [r0], -r8
	...
 2d8:	0000001c 	andeq	r0, r0, ip, lsl r0
 2dc:	513d0002 	teqpl	sp, r2
 2e0:	00040000 	andeq	r0, r4, r0
 2e4:	00000000 	andeq	r0, r0, r0
 2e8:	08000fcc 	stmdaeq	r0, {r2, r3, r6, r7, r8, r9, sl, fp}
 2ec:	0000012c 	andeq	r0, r0, ip, lsr #2
	...
 2f8:	00000054 	andeq	r0, r0, r4, asr r0
 2fc:	5b190002 	blpl	64030c <__Main_Stack_Size+0x63ff0c>
 300:	00040000 	andeq	r0, r4, r0
 304:	00000000 	andeq	r0, r0, r0
 308:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
 30c:	0000002c 	andeq	r0, r0, ip, lsr #32
 310:	08001124 	stmdaeq	r0, {r2, r5, r8, ip}
 314:	00000004 	andeq	r0, r0, r4
 318:	08001128 	stmdaeq	r0, {r3, r5, r8, ip}
 31c:	00000030 	andeq	r0, r0, r0, lsr r0
 320:	08001158 	stmdaeq	r0, {r3, r4, r6, r8, ip}
 324:	00000004 	andeq	r0, r0, r4
 328:	0800115c 	stmdaeq	r0, {r2, r3, r4, r6, r8, ip}
 32c:	00000004 	andeq	r0, r0, r4
 330:	00000000 	andeq	r0, r0, r0
 334:	00000018 	andeq	r0, r0, r8, lsl r0
 338:	08001160 	stmdaeq	r0, {r5, r6, r8, ip}
 33c:	0000012c 	andeq	r0, r0, ip, lsr #2
 340:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
 344:	00000040 	andeq	r0, r0, r0, asr #32
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
{
       0:	0000021e 	andeq	r0, r0, lr, lsl r2
  _exit (1);
       4:	00000004 	andeq	r0, r0, r4
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	00000167 	andeq	r0, r0, r7, ror #2
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
      10:	0000bb0c 	andeq	fp, r0, ip, lsl #22
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
      14:	00004800 	andeq	r4, r0, r0, lsl #16
	...
      24:	06010200 	streq	r0, [r1], -r0, lsl #4
      28:	0000008e 	andeq	r0, r0, lr, lsl #1
      2c:	13050202 	movwne	r0, #20994	; 0x5202
      30:	02000002 	andeq	r0, r0, #2
      34:	012f0504 			; <UNDEFINED> instruction: 0x012f0504
      38:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
      3c:	00012a05 	andeq	r2, r1, r5, lsl #20
      40:	08010200 	stmdaeq	r1, {r9}
      44:	0000008c 	andeq	r0, r0, ip, lsl #1
      48:	a8070202 	stmdage	r7, {r1, r9}
      4c:	03000000 	movweq	r0, #0
      50:	00000ae3 	andeq	r0, r0, r3, ror #21
      54:	005a3403 	subseq	r3, sl, r3, lsl #8
      58:	04020000 	streq	r0, [r2], #-0
      5c:	0000e407 	andeq	lr, r0, r7, lsl #8
      60:	07080200 	streq	r0, [r8, -r0, lsl #4]
      64:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
      68:	69050404 	stmdbvs	r5, {r2, sl}
      6c:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
      70:	00e90704 	rsceq	r0, r9, r4, lsl #14
      74:	20050000 	andcs	r0, r5, r0
      78:	00d91a02 	sbcseq	r1, r9, r2, lsl #20
      7c:	72060000 	andvc	r0, r6, #0
      80:	1c020030 	stcne	0, cr0, [r2], {48}	; 0x30
      84:	0000004f 	andeq	r0, r0, pc, asr #32
      88:	31720600 	cmncc	r2, r0, lsl #12
      8c:	4f1d0200 	svcmi	0x001d0200
      90:	04000000 	streq	r0, [r0], #-0
      94:	00327206 	eorseq	r7, r2, r6, lsl #4
      98:	004f1e02 	subeq	r1, pc, r2, lsl #28
      9c:	06080000 	streq	r0, [r8], -r0
      a0:	02003372 	andeq	r3, r0, #-939524095	; 0xc8000001
      a4:	00004f1f 	andeq	r4, r0, pc, lsl pc
      a8:	72060c00 	andvc	r0, r6, #0, 24
      ac:	02003231 	andeq	r3, r0, #268435459	; 0x10000003
      b0:	00004f20 	andeq	r4, r0, r0, lsr #30
      b4:	6c061000 	stcvs	0, cr1, [r6], {-0}
      b8:	21020072 	tstcs	r2, r2, ror r0
      bc:	0000004f 	andeq	r0, r0, pc, asr #32
      c0:	63700614 	cmnvs	r0, #20, 12	; 0x1400000
      c4:	4f220200 	svcmi	0x00220200
      c8:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
      cc:	72737006 	rsbsvc	r7, r3, #6
      d0:	4f230200 	svcmi	0x00230200
      d4:	1c000000 	stcne	0, cr0, [r0], {-0}
      d8:	00000300 	andeq	r0, r0, r0, lsl #6
      dc:	27020000 	strcs	r0, [r2, -r0]
      e0:	00000076 	andeq	r0, r0, r6, ror r0
      e4:	00002507 	andeq	r2, r0, r7, lsl #10
      e8:	6cbc0100 	ldfvss	f0, [ip]
      ec:	02080001 	andeq	r0, r8, #1
      f0:	01000000 	mrseq	r0, (UNDEF: 0)
      f4:	021d079c 	andseq	r0, sp, #156, 14	; 0x2700000
      f8:	b6010000 	strlt	r0, [r1], -r0
      fc:	08000168 	stmdaeq	r0, {r3, r5, r6, r8}
     100:	00000002 	andeq	r0, r0, r2
     104:	14079c01 	strne	r9, [r7], #-3073	; 0xfffff3ff
     108:	01000000 	mrseq	r0, (UNDEF: 0)
     10c:	000164ae 	andeq	r6, r1, lr, lsr #9
     110:	00000208 	andeq	r0, r0, r8, lsl #4
     114:	079c0100 	ldreq	r0, [ip, r0, lsl #2]
     118:	0000014a 	andeq	r0, r0, sl, asr #2
     11c:	0160a601 	cmneq	r0, r1, lsl #12
     120:	00020800 	andeq	r0, r2, r0, lsl #16
     124:	9c010000 	stcls	0, cr0, [r1], {-0}
     128:	00011508 	andeq	r1, r1, r8, lsl #10
     12c:	5c9d0100 	ldfpls	f0, [sp], {0}
     130:	02080001 	andeq	r0, r8, #1
     134:	01000000 	mrseq	r0, (UNDEF: 0)
     138:	0001579c 	muleq	r1, ip, r7
     13c:	023e0900 	eorseq	r0, lr, #0, 18
     140:	9d010000 	stcls	0, cr0, [r1, #-0]
     144:	00000157 	andeq	r0, r0, r7, asr r1
     148:	6c0a5001 	stcvs	0, cr5, [sl], {1}
     14c:	9e010072 	mcrls	0, 0, r0, cr1, cr2, {3}
     150:	0000004f 	andeq	r0, r0, pc, asr #32
     154:	0b005101 	bleq	14560 <__Main_Stack_Size+0x14160>
     158:	0000d904 	andeq	sp, r0, r4, lsl #18
     15c:	01020700 	tsteq	r2, r0, lsl #14
     160:	8b010000 	blhi	40168 <__Main_Stack_Size+0x3fd68>
     164:	08000148 	stmdaeq	r0, {r3, r6, r8}
     168:	00000014 	andeq	r0, r0, r4, lsl r0
     16c:	35089c01 	strcc	r9, [r8, #-3073]	; 0xfffff3ff
     170:	01000000 	mrseq	r0, (UNDEF: 0)
     174:	00014484 	andeq	r4, r1, r4, lsl #9
     178:	00000208 	andeq	r0, r0, r8, lsl #4
     17c:	9d9c0100 	ldflss	f0, [ip]
     180:	09000001 	stmdbeq	r0, {r0}
     184:	0000023e 	andeq	r0, r0, lr, lsr r2
     188:	01578401 	cmpeq	r7, r1, lsl #8
     18c:	50010000 	andpl	r0, r1, r0
     190:	00726c0a 	rsbseq	r6, r2, sl, lsl #24
     194:	004f8501 	subeq	r8, pc, r1, lsl #10
     198:	51010000 	mrspl	r0, (UNDEF: 1)
     19c:	01560700 	cmpeq	r6, r0, lsl #14
     1a0:	72010000 	andvc	r0, r1, #0
     1a4:	08000130 	stmdaeq	r0, {r4, r5, r8}
     1a8:	00000014 	andeq	r0, r0, r4, lsl r0
     1ac:	2c079c01 	stccs	12, cr9, [r7], {1}
     1b0:	01000002 	tsteq	r0, r2
     1b4:	00012c6c 	andeq	r2, r1, ip, ror #24
     1b8:	00000208 	andeq	r0, r0, r8, lsl #4
     1bc:	089c0100 	ldmeq	ip, {r8}
     1c0:	00000078 	andeq	r0, r0, r8, ror r0
     1c4:	01283501 			; <UNDEFINED> instruction: 0x01283501
     1c8:	00020800 	andeq	r0, r2, r0, lsl #16
     1cc:	9c010000 	stcls	0, cr0, [r1], {-0}
     1d0:	000001ee 	andeq	r0, r0, lr, ror #3
     1d4:	00023e09 	andeq	r3, r2, r9, lsl #28
     1d8:	57350100 	ldrpl	r0, [r5, -r0, lsl #2]!
     1dc:	01000001 	tsteq	r0, r1
     1e0:	726c0a50 	rsbvc	r0, ip, #80, 20	; 0x50000
     1e4:	4f360100 	svcmi	0x00360100
     1e8:	01000000 	mrseq	r0, (UNDEF: 0)
     1ec:	38070051 	stmdacc	r7, {r0, r4, r6}
     1f0:	01000001 	tsteq	r0, r1
     1f4:	00011423 	andeq	r1, r1, r3, lsr #8
     1f8:	00001408 	andeq	r1, r0, r8, lsl #8
     1fc:	079c0100 	ldreq	r0, [ip, r0, lsl #2]
     200:	000000f6 	strdeq	r0, [r0], -r6
     204:	01101401 	tsteq	r0, r1, lsl #8
     208:	00020800 	andeq	r0, r2, r0, lsl #16
     20c:	9c010000 	stcls	0, cr0, [r1], {-0}
     210:	00009a07 	andeq	r9, r0, r7, lsl #20
     214:	0c080100 	stfeqs	f0, [r8], {-0}
     218:	04080001 	streq	r0, [r8], #-1
     21c:	01000000 	mrseq	r0, (UNDEF: 0)
     220:	0490009c 	ldreq	r0, [r0], #156	; 0x9c
     224:	00040000 	andeq	r0, r4, r0
     228:	000000ac 	andeq	r0, r0, ip, lsr #1
     22c:	01670104 	cmneq	r7, r4, lsl #2
     230:	8d0c0000 	stchi	0, cr0, [ip, #-0]
     234:	48000002 	stmdami	r0, {r1}
     238:	90000000 	andls	r0, r0, r0
     23c:	00000000 	andeq	r0, r0, r0
     240:	c1000000 	mrsgt	r0, (UNDEF: 0)
     244:	02000000 	andeq	r0, r0, #0
     248:	008e0601 	addeq	r0, lr, r1, lsl #12
     24c:	02020000 	andeq	r0, r2, #0
     250:	00021305 	andeq	r1, r2, r5, lsl #6
     254:	0ae40300 	beq	ff900e5c <_estack+0xdf8fbe5c>
     258:	28020000 	stmdacs	r2, {}	; <UNPREDICTABLE>
     25c:	00000043 	andeq	r0, r0, r3, asr #32
     260:	00003304 	andeq	r3, r0, r4, lsl #6
     264:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
     268:	0000012f 	andeq	r0, r0, pc, lsr #2
     26c:	2a050802 	bcs	14227c <__Main_Stack_Size+0x141e7c>
     270:	03000001 	movweq	r0, #1
     274:	0000027d 	andeq	r0, r0, sp, ror r2
     278:	006b2e02 	rsbeq	r2, fp, r2, lsl #28
     27c:	51040000 	mrspl	r0, (UNDEF: 4)
     280:	05000000 	streq	r0, [r0, #-0]
     284:	00000051 	andeq	r0, r0, r1, asr r0
     288:	00006104 	andeq	r6, r0, r4, lsl #2
     28c:	08010200 	stmdaeq	r1, {r9}
     290:	0000008c 	andeq	r0, r0, ip, lsl #1
     294:	00031903 	andeq	r1, r3, r3, lsl #18
     298:	7d310200 	lfmvc	f0, 4, [r1, #-0]
     29c:	02000000 	andeq	r0, r0, #0
     2a0:	00a80702 	adceq	r0, r8, r2, lsl #14
     2a4:	e3030000 	movw	r0, #12288	; 0x3000
     2a8:	0200000a 	andeq	r0, r0, #10
     2ac:	00009934 	andeq	r9, r0, r4, lsr r9
     2b0:	00840400 	addeq	r0, r4, r0, lsl #8
     2b4:	8f050000 	svchi	0x00050000
     2b8:	02000000 	andeq	r0, r0, #0
     2bc:	00e40704 	rsceq	r0, r4, r4, lsl #14
     2c0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     2c4:	0000df07 	andeq	sp, r0, r7, lsl #30
     2c8:	05040600 	streq	r0, [r4, #-1536]	; 0xfffffa00
     2cc:	00746e69 	rsbseq	r6, r4, r9, ror #28
     2d0:	e9070402 	stmdb	r7, {r1, sl}
     2d4:	07000000 	streq	r0, [r0, -r0]
     2d8:	015b038c 	cmpeq	fp, ip, lsl #7
     2dc:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     2e0:	00026808 	andeq	r6, r2, r8, lsl #16
     2e4:	015d0300 	cmpeq	sp, r0, lsl #6
     2e8:	00000094 	muleq	r0, r4, r0
     2ec:	02a50800 	adceq	r0, r5, #0, 16
     2f0:	5e030000 	cdppl	0, 0, cr0, cr3, cr0, {0}
     2f4:	00008f01 	andeq	r8, r0, r1, lsl #30
     2f8:	4f080400 	svcmi	0x00080400
     2fc:	03000003 	movweq	r0, #3
     300:	008f015f 	addeq	r0, pc, pc, asr r1	; <UNPREDICTABLE>
     304:	08080000 	stmdaeq	r8, {}	; <UNPREDICTABLE>
     308:	000002f3 	strdeq	r0, [r0], -r3
     30c:	8f016003 	svchi	0x00016003
     310:	0c000000 	stceq	0, cr0, [r0], {-0}
     314:	52435309 	subpl	r5, r3, #603979776	; 0x24000000
     318:	01610300 	cmneq	r1, r0, lsl #6
     31c:	0000008f 	andeq	r0, r0, pc, lsl #1
     320:	43430910 	movtmi	r0, #14608	; 0x3910
     324:	62030052 	andvs	r0, r3, #82	; 0x52
     328:	00008f01 	andeq	r8, r0, r1, lsl #30
     32c:	53091400 	movwpl	r1, #37888	; 0x9400
     330:	03005048 	movweq	r5, #72	; 0x48
     334:	01e00163 	mvneq	r0, r3, ror #2
     338:	08180000 	ldmdaeq	r8, {}	; <UNPREDICTABLE>
     33c:	00000322 	andeq	r0, r0, r2, lsr #6
     340:	8f016403 	svchi	0x00016403
     344:	24000000 	strcs	r0, [r0], #-0
     348:	0002d408 	andeq	sp, r2, r8, lsl #8
     34c:	01650300 	cmneq	r5, r0, lsl #6
     350:	0000008f 	andeq	r0, r0, pc, lsl #1
     354:	036e0828 	cmneq	lr, #40, 16	; 0x280000
     358:	66030000 	strvs	r0, [r3], -r0
     35c:	00008f01 	andeq	r8, r0, r1, lsl #30
     360:	59082c00 	stmdbpl	r8, {sl, fp, sp}
     364:	03000003 	movweq	r0, #3
     368:	008f0167 	addeq	r0, pc, r7, ror #2
     36c:	08300000 	ldmdaeq	r0!, {}	; <UNPREDICTABLE>
     370:	0000033e 	andeq	r0, r0, lr, lsr r3
     374:	8f016803 	svchi	0x00016803
     378:	34000000 	strcc	r0, [r0], #-0
     37c:	0002b208 	andeq	fp, r2, r8, lsl #4
     380:	01690300 	cmneq	r9, r0, lsl #6
     384:	0000008f 	andeq	r0, r0, pc, lsl #1
     388:	03980838 	orrseq	r0, r8, #56, 16	; 0x380000
     38c:	6a030000 	bvs	c0394 <__Main_Stack_Size+0xbff94>
     390:	00008f01 	andeq	r8, r0, r1, lsl #30
     394:	50093c00 	andpl	r3, r9, r0, lsl #24
     398:	03005246 	movweq	r5, #582	; 0x246
     39c:	01fa016b 	mvnseq	r0, fp, ror #2
     3a0:	09400000 	stmdbeq	r0, {}^	; <UNPREDICTABLE>
     3a4:	00524644 	subseq	r4, r2, r4, asr #12
     3a8:	94016c03 	strls	r6, [r1], #-3075	; 0xfffff3fd
     3ac:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
     3b0:	52444109 	subpl	r4, r4, #1073741826	; 0x40000002
     3b4:	016d0300 	cmneq	sp, r0, lsl #6
     3b8:	00000094 	muleq	r0, r4, r0
     3bc:	0373084c 	cmneq	r3, #76, 16	; 0x4c0000
     3c0:	6e030000 	cdpvs	0, 0, cr0, cr3, cr0, {0}
     3c4:	00021401 	andeq	r1, r2, r1, lsl #8
     3c8:	54085000 	strpl	r5, [r8], #-0
     3cc:	03000003 	movweq	r0, #3
     3d0:	022e016f 	eoreq	r0, lr, #-1073741797	; 0xc000001b
     3d4:	08600000 	stmdaeq	r0!, {}^	; <UNPREDICTABLE>
     3d8:	0000026e 	andeq	r0, r0, lr, ror #4
     3dc:	33017003 	movwcc	r7, #4099	; 0x1003
     3e0:	74000002 	strvc	r0, [r0], #-2
     3e4:	0003c108 	andeq	ip, r3, r8, lsl #2
     3e8:	01710300 	cmneq	r1, r0, lsl #6
     3ec:	0000008f 	andeq	r0, r0, pc, lsl #1
     3f0:	5c0a0088 	stcpl	0, cr0, [sl], {136}	; 0x88
     3f4:	e0000000 	and	r0, r0, r0
     3f8:	0b000001 	bleq	404 <__Main_Stack_Size+0x4>
     3fc:	000000ae 	andeq	r0, r0, lr, lsr #1
     400:	d004000b 	andle	r0, r4, fp
     404:	0a000001 	beq	410 <__Main_Stack_Size+0x10>
     408:	00000094 	muleq	r0, r4, r0
     40c:	000001f5 	strdeq	r0, [r0], -r5
     410:	0000ae0b 	andeq	sl, r0, fp, lsl #28
     414:	05000100 	streq	r0, [r0, #-256]	; 0xffffff00
     418:	000001e5 	andeq	r0, r0, r5, ror #3
     41c:	0001f504 	andeq	pc, r1, r4, lsl #10
     420:	00940a00 	addseq	r0, r4, r0, lsl #20
     424:	020f0000 	andeq	r0, pc, #0
     428:	ae0b0000 	cdpge	0, 0, cr0, cr11, cr0, {0}
     42c:	03000000 	movweq	r0, #0
     430:	01ff0500 	mvnseq	r0, r0, lsl #10
     434:	0f040000 	svceq	0x00040000
     438:	0a000002 	beq	448 <__Main_Stack_Size+0x48>
     43c:	00000094 	muleq	r0, r4, r0
     440:	00000229 	andeq	r0, r0, r9, lsr #4
     444:	0000ae0b 	andeq	sl, r0, fp, lsl #28
     448:	05000400 	streq	r0, [r0, #-1024]	; 0xfffffc00
     44c:	00000219 	andeq	r0, r0, r9, lsl r2
     450:	00022904 	andeq	r2, r2, r4, lsl #18
     454:	00840a00 	addeq	r0, r4, r0, lsl #20
     458:	02430000 	subeq	r0, r3, #0
     45c:	ae0b0000 	cdpge	0, 0, cr0, cr11, cr0, {0}
     460:	04000000 	streq	r0, [r0], #-0
     464:	02f90c00 	rscseq	r0, r9, #0, 24
     468:	72030000 	andvc	r0, r3, #0
     46c:	0000b501 	andeq	fp, r0, r1, lsl #10
     470:	03b40d00 			; <UNDEFINED> instruction: 0x03b40d00
     474:	29030000 	stmdbcs	r3, {}	; <UNPREDICTABLE>
     478:	00003e06 	andeq	r3, r0, r6, lsl #28
     47c:	035e0e00 	cmpeq	lr, #0, 28
     480:	35040000 	strcc	r0, [r4, #-0]
     484:	00000084 	andeq	r0, r0, r4, lsl #1
     488:	6b01070f 	blvs	420cc <__Main_Stack_Size+0x41ccc>
     48c:	05000000 	streq	r0, [r0, #-0]
     490:	02810207 	addeq	r0, r1, #1879048192	; 0x70000000
     494:	92100000 	andsls	r0, r0, #0
     498:	00000003 	andeq	r0, r0, r3
     49c:	54455311 	strbpl	r5, [r5], #-785	; 0xfffffcef
     4a0:	07000100 	streq	r0, [r0, -r0, lsl #2]
     4a4:	03850524 	orreq	r0, r5, #36, 10	; 0x9000000
     4a8:	000002fd 	strdeq	r0, [r0], -sp
     4ac:	52434109 	subpl	r4, r3, #1073741826	; 0x40000002
     4b0:	03870500 	orreq	r0, r7, #0, 10
     4b4:	0000008f 	andeq	r0, r0, pc, lsl #1
     4b8:	02ad0800 	adceq	r0, sp, #0, 16
     4bc:	88050000 	stmdahi	r5, {}	; <UNPREDICTABLE>
     4c0:	00008f03 	andeq	r8, r0, r3, lsl #30
     4c4:	aa080400 	bge	2014cc <__Main_Stack_Size+0x2010cc>
     4c8:	05000002 	streq	r0, [r0, #-2]
     4cc:	008f0389 	addeq	r0, pc, r9, lsl #7
     4d0:	09080000 	stmdbeq	r8, {}	; <UNPREDICTABLE>
     4d4:	05005253 	streq	r5, [r0, #-595]	; 0xfffffdad
     4d8:	008f038a 	addeq	r0, pc, sl, lsl #7
     4dc:	090c0000 	stmdbeq	ip, {}	; <UNPREDICTABLE>
     4e0:	05005243 	streq	r5, [r0, #-579]	; 0xfffffdbd
     4e4:	008f038b 	addeq	r0, pc, fp, lsl #7
     4e8:	09100000 	ldmdbeq	r0, {}	; <UNPREDICTABLE>
     4ec:	05005241 	streq	r5, [r0, #-577]	; 0xfffffdbf
     4f0:	008f038c 	addeq	r0, pc, ip, lsl #7
     4f4:	08140000 	ldmdaeq	r4, {}	; <UNPREDICTABLE>
     4f8:	0000039d 	muleq	r0, sp, r3
     4fc:	8f038d05 	svchi	0x00038d05
     500:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     504:	52424f09 	subpl	r4, r2, #9, 30	; 0x24
     508:	038e0500 	orreq	r0, lr, #0, 10
     50c:	0000008f 	andeq	r0, r0, pc, lsl #1
     510:	02cf081c 	sbceq	r0, pc, #28, 16	; 0x1c0000
     514:	8f050000 	svchi	0x00050000
     518:	00008f03 	andeq	r8, r0, r3, lsl #30
     51c:	0c002000 	stceq	0, cr2, [r0], {-0}
     520:	000003a6 	andeq	r0, r0, r6, lsr #7
     524:	81039805 	tsthi	r3, r5, lsl #16
     528:	07000002 	streq	r0, [r0, -r2]
     52c:	04340528 	ldrteq	r0, [r4], #-1320	; 0xfffffad8
     530:	00000394 	muleq	r0, r4, r3
     534:	00524309 	subseq	r4, r2, r9, lsl #6
     538:	8f043605 	svchi	0x00043605
     53c:	00000000 	andeq	r0, r0, r0
     540:	00027808 	andeq	r7, r2, r8, lsl #16
     544:	04370500 	ldrteq	r0, [r7], #-1280	; 0xfffffb00
     548:	0000008f 	andeq	r0, r0, pc, lsl #1
     54c:	49430904 	stmdbmi	r3, {r2, r8, fp}^
     550:	38050052 	stmdacc	r5, {r1, r4, r6}
     554:	00008f04 	andeq	r8, r0, r4, lsl #30
     558:	c6080800 	strgt	r0, [r8], -r0, lsl #16
     55c:	05000002 	streq	r0, [r0, #-2]
     560:	008f0439 	addeq	r0, pc, r9, lsr r4	; <UNPREDICTABLE>
     564:	080c0000 	stmdaeq	ip, {}	; <UNPREDICTABLE>
     568:	00000250 	andeq	r0, r0, r0, asr r2
     56c:	8f043a05 	svchi	0x00043a05
     570:	10000000 	andne	r0, r0, r0
     574:	0002bf08 	andeq	fp, r2, r8, lsl #30
     578:	043b0500 	ldrteq	r0, [fp], #-1280	; 0xfffffb00
     57c:	0000008f 	andeq	r0, r0, pc, lsl #1
     580:	03020814 	movweq	r0, #10260	; 0x2814
     584:	3c050000 	stccc	0, cr0, [r5], {-0}
     588:	00008f04 	andeq	r8, r0, r4, lsl #30
     58c:	85081800 	strhi	r1, [r8, #-2048]	; 0xfffff800
     590:	05000002 	streq	r0, [r0, #-2]
     594:	008f043d 	addeq	r0, pc, sp, lsr r4	; <UNPREDICTABLE>
     598:	081c0000 	ldmdaeq	ip, {}	; <UNPREDICTABLE>
     59c:	00000259 	andeq	r0, r0, r9, asr r2
     5a0:	8f043e05 	svchi	0x00043e05
     5a4:	20000000 	andcs	r0, r0, r0
     5a8:	52534309 	subspl	r4, r3, #603979776	; 0x24000000
     5ac:	043f0500 	ldrteq	r0, [pc], #-1280	; 5b4 <__Main_Stack_Size+0x1b4>
     5b0:	0000008f 	andeq	r0, r0, pc, lsl #1
     5b4:	440c0024 	strmi	r0, [ip], #-36	; 0xffffffdc
     5b8:	05000002 	streq	r0, [r0, #-2]
     5bc:	0309044a 	movweq	r0, #37962	; 0x944a
     5c0:	5b120000 	blpl	4805c8 <__Main_Stack_Size+0x4801c8>
     5c4:	01000002 	tsteq	r0, r2
     5c8:	10030540 	andne	r0, r3, r0, asr #10
     5cc:	0a200000 	beq	8005d4 <__Main_Stack_Size+0x8001d4>
     5d0:	00000066 	andeq	r0, r0, r6, rrx
     5d4:	000003bd 			; <UNDEFINED> instruction: 0x000003bd
     5d8:	0000ae0b 	andeq	sl, r0, fp, lsl #28
     5dc:	05000f00 	streq	r0, [r0, #-3840]	; 0xfffff100
     5e0:	000003ad 	andeq	r0, r0, sp, lsr #7
     5e4:	0003bd04 	andeq	fp, r3, r4, lsl #26
     5e8:	03781300 	cmneq	r8, #0, 6
     5ec:	45010000 	strmi	r0, [r1, #-0]
     5f0:	000003c2 	andeq	r0, r0, r2, asr #7
     5f4:	00000305 	andeq	r0, r0, r5, lsl #6
     5f8:	d9142000 	ldmdble	r4, {sp}
     5fc:	01000002 	tsteq	r0, r2
     600:	fe01036a 	cdp2	3, 0, cr0, cr1, cr10, {3}
     604:	15000003 	strne	r0, [r0, #-3]
     608:	0000030a 	andeq	r0, r0, sl, lsl #6
     60c:	8f036c01 	svchi	0x00036c01
     610:	15000000 	strne	r0, [r0, #-0]
     614:	0000025e 	andeq	r0, r0, lr, asr r2
     618:	8f036c01 	svchi	0x00036c01
     61c:	00000000 	andeq	r0, r0, r0
     620:	00038616 	andeq	r8, r3, r6, lsl r6
     624:	01320100 	teqeq	r2, r0, lsl #2
     628:	03281701 			; <UNDEFINED> instruction: 0x03281701
     62c:	c1010000 	mrsgt	r0, (UNDEF: 1)
     630:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
     634:	0000005c 	andeq	r0, r0, ip, asr r0
     638:	044a9c01 	strbeq	r9, [sl], #-3073	; 0xfffff3ff
     63c:	74180000 	ldrvc	r0, [r8], #-0
     640:	0100706d 	tsteq	r0, sp, rrx
     644:	000084c3 	andeq	r8, r0, r3, asr #9
     648:	00000000 	andeq	r0, r0, r0
     64c:	02b71900 	adcseq	r1, r7, #0, 18
     650:	c3010000 	movwgt	r0, #4096	; 0x1000
     654:	00000084 	andeq	r0, r0, r4, lsl #1
     658:	00000044 	andeq	r0, r0, r4, asr #32
     65c:	0002e919 	andeq	lr, r2, r9, lsl r9
     660:	84c30100 	strbhi	r0, [r3], #256	; 0x100
     664:	8b000000 	blhi	66c <__Main_Stack_Size+0x26c>
     668:	00000000 	andeq	r0, r0, r0
     66c:	0003441a 	andeq	r4, r3, sl, lsl r4
     670:	28630100 	stmdacs	r3!, {r8}^
     674:	04080008 	streq	r0, [r8], #-8
     678:	01000001 	tsteq	r0, r1
     67c:	03fe1b9c 	mvnseq	r1, #156, 22	; 0x27000
     680:	082a0000 	stmdaeq	sl!, {}	; <UNPREDICTABLE>
     684:	00700800 	rsbseq	r0, r0, r0, lsl #16
     688:	95010000 	strls	r0, [r1, #-0]
     68c:	0003d81c 	andeq	sp, r3, ip, lsl r8
     690:	00082a00 	andeq	r2, r8, r0, lsl #20
     694:	00007008 	andeq	r7, r0, r8
     698:	013f0100 	teqeq	pc, r0, lsl #2
     69c:	0000701d 	andeq	r7, r0, sp, lsl r0
     6a0:	03e51e00 	mvneq	r1, #0, 28
     6a4:	91020000 	mrsls	r0, (UNDEF: 2)
     6a8:	03f11e70 	mvnseq	r1, #112, 28	; 0x700
     6ac:	91020000 	mrsls	r0, (UNDEF: 2)
     6b0:	00000074 	andeq	r0, r0, r4, ror r0
     6b4:	00c20000 	sbceq	r0, r2, r0
     6b8:	00040000 	andeq	r0, r4, r0
     6bc:	00000249 	andeq	r0, r0, r9, asr #4
     6c0:	01670104 	cmneq	r7, r4, lsl #2
     6c4:	d00c0000 	andle	r0, ip, r0
     6c8:	48000003 	stmdami	r0, {r0, r1}
     6cc:	a8000000 	stmdage	r0, {}	; <UNPREDICTABLE>
     6d0:	00000000 	andeq	r0, r0, r0
     6d4:	ee000000 	cdp	0, 0, cr0, cr0, cr0, {0}
     6d8:	02000001 	andeq	r0, r0, #1
     6dc:	008e0601 	addeq	r0, lr, r1, lsl #12
     6e0:	02020000 	andeq	r0, r2, #0
     6e4:	00021305 	andeq	r1, r2, r5, lsl #6
     6e8:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
     6ec:	0000012f 	andeq	r0, r0, pc, lsr #2
     6f0:	2a050802 	bcs	142700 <__Main_Stack_Size+0x142300>
     6f4:	02000001 	andeq	r0, r0, #1
     6f8:	008c0801 	addeq	r0, ip, r1, lsl #16
     6fc:	02020000 	andeq	r0, r2, #0
     700:	0000a807 	andeq	sl, r0, r7, lsl #16
     704:	07040200 	streq	r0, [r4, -r0, lsl #4]
     708:	000000e4 	andeq	r0, r0, r4, ror #1
     70c:	df070802 	svcle	0x00070802
     710:	03000000 	movweq	r0, #0
     714:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     718:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
     71c:	0000e907 	andeq	lr, r0, r7, lsl #18
     720:	03f90400 	mvnseq	r0, #0, 8
     724:	71010000 	mrsvc	r0, (UNDEF: 1)
     728:	00000064 	andeq	r0, r0, r4, rrx
     72c:	0003c705 	andeq	ip, r3, r5, lsl #14
     730:	87730100 	ldrbhi	r0, [r3, -r0, lsl #2]!
     734:	06000000 	streq	r0, [r0], -r0
     738:	00008c04 	andeq	r8, r0, r4, lsl #24
     73c:	00810700 	addeq	r0, r1, r0, lsl #14
     740:	09080000 	stmdbeq	r8, {}	; <UNPREDICTABLE>
     744:	00000076 	andeq	r0, r0, r6, ror r0
     748:	0000009d 	muleq	r0, sp, r0
     74c:	0000640a 	andeq	r6, r0, sl, lsl #8
     750:	07004200 	streq	r4, [r0, -r0, lsl #4]
     754:	0000008d 	andeq	r0, r0, sp, lsl #1
     758:	0004010b 	andeq	r0, r4, fp, lsl #2
     75c:	9d7a0100 	ldflse	f0, [sl, #-0]
     760:	05000000 	streq	r0, [r0, #-0]
     764:	00000003 	andeq	r0, r0, r3
     768:	03e90c08 	mvneq	r0, #8, 24	; 0x800
     76c:	16010000 	strne	r0, [r1], -r0
     770:	00018003 	andeq	r8, r1, r3
     774:	00000208 	andeq	r0, r0, r8, lsl #4
     778:	009c0100 	addseq	r0, ip, r0, lsl #2
     77c:	00000087 	andeq	r0, r0, r7, lsl #1
     780:	02e30004 	rsceq	r0, r3, #4
     784:	01040000 	mrseq	r0, (UNDEF: 4)
     788:	00000167 	andeq	r0, r0, r7, ror #2
     78c:	0004310c 	andeq	r3, r4, ip, lsl #2
     790:	00004800 	andeq	r4, r0, r0, lsl #16
     794:	0000b800 	andeq	fp, r0, r0, lsl #16
     798:	00000000 	andeq	r0, r0, r0
     79c:	00023700 	andeq	r3, r2, r0, lsl #14
     7a0:	042b0200 	strteq	r0, [fp], #-512	; 0xfffffe00
     7a4:	1b010000 	blne	407ac <__Main_Stack_Size+0x403ac>
     7a8:	00000000 	andeq	r0, r0, r0
     7ac:	0000000a 	andeq	r0, r0, sl
     7b0:	004a9c01 	subeq	r9, sl, r1, lsl #24
     7b4:	00030000 	andeq	r0, r3, r0
     7b8:	4a000000 	bmi	7c0 <__Main_Stack_Size+0x3c0>
     7bc:	04000000 	streq	r0, [r0], #-0
     7c0:	31015001 	tstcc	r1, r1
     7c4:	25050000 	strcs	r0, [r5, #-0]
     7c8:	01000004 	tsteq	r0, r4
     7cc:	00098811 	andeq	r8, r9, r1, lsl r8
     7d0:	00000608 	andeq	r0, r0, r8, lsl #12
     7d4:	789c0100 	ldmvc	ip, {r8}
     7d8:	06000000 	streq	r0, [r0], -r0
     7dc:	0000040f 	andeq	r0, r0, pc, lsl #8
     7e0:	00781101 	rsbseq	r1, r8, r1, lsl #2
     7e4:	00bc0000 	adcseq	r0, ip, r0
     7e8:	8e070000 	cdphi	0, 0, cr0, cr7, cr0, {0}
     7ec:	7f080009 	svcvc	0x00080009
     7f0:	00000000 	andeq	r0, r0, r0
     7f4:	69050408 	stmdbvs	r5, {r3, sl}
     7f8:	0900746e 	stmdbeq	r0, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
     7fc:	00000414 	andeq	r0, r0, r4, lsl r4
     800:	00000414 	andeq	r0, r0, r4, lsl r4
     804:	ad000301 	stcge	3, cr0, [r0, #-4]
     808:	04000002 	streq	r0, [r0], #-2
     80c:	00037b00 	andeq	r7, r3, r0, lsl #22
     810:	67010400 	strvs	r0, [r1, -r0, lsl #8]
     814:	0c000001 	stceq	0, cr0, [r0], {1}
     818:	00000479 	andeq	r0, r0, r9, ror r4
     81c:	00000048 	andeq	r0, r0, r8, asr #32
     820:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     824:	00000000 	andeq	r0, r0, r0
     828:	0000028d 	andeq	r0, r0, sp, lsl #5
     82c:	8e060102 	adfhis	f0, f6, f2
     830:	02000000 	andeq	r0, r0, #0
     834:	02130502 	andseq	r0, r3, #8388608	; 0x800000
     838:	e4030000 	str	r0, [r3], #-0
     83c:	0200000a 	andeq	r0, r0, #10
     840:	00004328 	andeq	r4, r0, r8, lsr #6
     844:	00330400 	eorseq	r0, r3, r0, lsl #8
     848:	04020000 	streq	r0, [r2], #-0
     84c:	00012f05 	andeq	r2, r1, r5, lsl #30
     850:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     854:	0000012a 	andeq	r0, r0, sl, lsr #2
     858:	00027d03 	andeq	r7, r2, r3, lsl #26
     85c:	612e0200 			; <UNDEFINED> instruction: 0x612e0200
     860:	04000000 	streq	r0, [r0], #-0
     864:	00000051 	andeq	r0, r0, r1, asr r0
     868:	8c080102 	stfhis	f0, [r8], {2}
     86c:	02000000 	andeq	r0, r0, #0
     870:	00a80702 	adceq	r0, r8, r2, lsl #14
     874:	e3030000 	movw	r0, #12288	; 0x3000
     878:	0200000a 	andeq	r0, r0, #10
     87c:	00008434 	andeq	r8, r0, r4, lsr r4
     880:	006f0400 	rsbeq	r0, pc, r0, lsl #8
     884:	7a050000 	bvc	14088c <__Main_Stack_Size+0x14048c>
     888:	02000000 	andeq	r0, r0, #0
     88c:	00e40704 	rsceq	r0, r4, r4, lsl #14
     890:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     894:	0000df07 	andeq	sp, r0, r7, lsl #30
     898:	05040600 	streq	r0, [r4, #-1536]	; 0xfffffa00
     89c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     8a0:	e9070402 	stmdb	r7, {r1, sl}
     8a4:	07000000 	streq	r0, [r0, -r0]
     8a8:	015b038c 	cmpeq	fp, ip, lsl #7
     8ac:	000001bb 			; <UNDEFINED> instruction: 0x000001bb
     8b0:	00026808 	andeq	r6, r2, r8, lsl #16
     8b4:	015d0300 	cmpeq	sp, r0, lsl #6
     8b8:	0000007f 	andeq	r0, r0, pc, ror r0
     8bc:	02a50800 	adceq	r0, r5, #0, 16
     8c0:	5e030000 	cdppl	0, 0, cr0, cr3, cr0, {0}
     8c4:	00007a01 	andeq	r7, r0, r1, lsl #20
     8c8:	4f080400 	svcmi	0x00080400
     8cc:	03000003 	movweq	r0, #3
     8d0:	007a015f 	rsbseq	r0, sl, pc, asr r1
     8d4:	08080000 	stmdaeq	r8, {}	; <UNPREDICTABLE>
     8d8:	000002f3 	strdeq	r0, [r0], -r3
     8dc:	7a016003 	bvc	588f0 <__Main_Stack_Size+0x584f0>
     8e0:	0c000000 	stceq	0, cr0, [r0], {-0}
     8e4:	52435309 	subpl	r5, r3, #603979776	; 0x24000000
     8e8:	01610300 	cmneq	r1, r0, lsl #6
     8ec:	0000007a 	andeq	r0, r0, sl, ror r0
     8f0:	43430910 	movtmi	r0, #14608	; 0x3910
     8f4:	62030052 	andvs	r0, r3, #82	; 0x52
     8f8:	00007a01 	andeq	r7, r0, r1, lsl #20
     8fc:	53091400 	movwpl	r1, #37888	; 0x9400
     900:	03005048 	movweq	r5, #72	; 0x48
     904:	01cb0163 	biceq	r0, fp, r3, ror #2
     908:	08180000 	ldmdaeq	r8, {}	; <UNPREDICTABLE>
     90c:	00000322 	andeq	r0, r0, r2, lsr #6
     910:	7a016403 	bvc	59924 <__Main_Stack_Size+0x59524>
     914:	24000000 	strcs	r0, [r0], #-0
     918:	0002d408 	andeq	sp, r2, r8, lsl #8
     91c:	01650300 	cmneq	r5, r0, lsl #6
     920:	0000007a 	andeq	r0, r0, sl, ror r0
     924:	036e0828 	cmneq	lr, #40, 16	; 0x280000
     928:	66030000 	strvs	r0, [r3], -r0
     92c:	00007a01 	andeq	r7, r0, r1, lsl #20
     930:	59082c00 	stmdbpl	r8, {sl, fp, sp}
     934:	03000003 	movweq	r0, #3
     938:	007a0167 	rsbseq	r0, sl, r7, ror #2
     93c:	08300000 	ldmdaeq	r0!, {}	; <UNPREDICTABLE>
     940:	0000033e 	andeq	r0, r0, lr, lsr r3
     944:	7a016803 	bvc	5a958 <__Main_Stack_Size+0x5a558>
     948:	34000000 	strcc	r0, [r0], #-0
     94c:	0002b208 	andeq	fp, r2, r8, lsl #4
     950:	01690300 	cmneq	r9, r0, lsl #6
     954:	0000007a 	andeq	r0, r0, sl, ror r0
     958:	03980838 	orrseq	r0, r8, #56, 16	; 0x380000
     95c:	6a030000 	bvs	c0964 <__Main_Stack_Size+0xc0564>
     960:	00007a01 	andeq	r7, r0, r1, lsl #20
     964:	50093c00 	andpl	r3, r9, r0, lsl #24
     968:	03005246 	movweq	r5, #582	; 0x246
     96c:	01e5016b 	mvneq	r0, fp, ror #2
     970:	09400000 	stmdbeq	r0, {}^	; <UNPREDICTABLE>
     974:	00524644 	subseq	r4, r2, r4, asr #12
     978:	7f016c03 	svcvc	0x00016c03
     97c:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
     980:	52444109 	subpl	r4, r4, #1073741826	; 0x40000002
     984:	016d0300 	cmneq	sp, r0, lsl #6
     988:	0000007f 	andeq	r0, r0, pc, ror r0
     98c:	0373084c 	cmneq	r3, #76, 16	; 0x4c0000
     990:	6e030000 	cdpvs	0, 0, cr0, cr3, cr0, {0}
     994:	0001ff01 	andeq	pc, r1, r1, lsl #30
     998:	54085000 	strpl	r5, [r8], #-0
     99c:	03000003 	movweq	r0, #3
     9a0:	0219016f 	andseq	r0, r9, #-1073741797	; 0xc000001b
     9a4:	08600000 	stmdaeq	r0!, {}^	; <UNPREDICTABLE>
     9a8:	0000026e 	andeq	r0, r0, lr, ror #4
     9ac:	1e017003 	cdpne	0, 0, cr7, cr1, cr3, {0}
     9b0:	74000002 	strvc	r0, [r0], #-2
     9b4:	0003c108 	andeq	ip, r3, r8, lsl #2
     9b8:	01710300 	cmneq	r1, r0, lsl #6
     9bc:	0000007a 	andeq	r0, r0, sl, ror r0
     9c0:	5c0a0088 	stcpl	0, cr0, [sl], {136}	; 0x88
     9c4:	cb000000 	blgt	9cc <__Main_Stack_Size+0x5cc>
     9c8:	0b000001 	bleq	9d4 <__Main_Stack_Size+0x5d4>
     9cc:	00000099 	muleq	r0, r9, r0
     9d0:	bb04000b 	bllt	100a04 <__Main_Stack_Size+0x100604>
     9d4:	0a000001 	beq	9e0 <__Main_Stack_Size+0x5e0>
     9d8:	0000007f 	andeq	r0, r0, pc, ror r0
     9dc:	000001e0 	andeq	r0, r0, r0, ror #3
     9e0:	0000990b 	andeq	r9, r0, fp, lsl #18
     9e4:	05000100 	streq	r0, [r0, #-256]	; 0xffffff00
     9e8:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     9ec:	0001e004 	andeq	lr, r1, r4
     9f0:	007f0a00 	rsbseq	r0, pc, r0, lsl #20
     9f4:	01fa0000 	mvnseq	r0, r0
     9f8:	990b0000 	stmdbls	fp, {}	; <UNPREDICTABLE>
     9fc:	03000000 	movweq	r0, #0
     a00:	01ea0500 	mvneq	r0, r0, lsl #10
     a04:	fa040000 	blx	100a0c <__Main_Stack_Size+0x10060c>
     a08:	0a000001 	beq	a14 <__Main_Stack_Size+0x614>
     a0c:	0000007f 	andeq	r0, r0, pc, ror r0
     a10:	00000214 	andeq	r0, r0, r4, lsl r2
     a14:	0000990b 	andeq	r9, r0, fp, lsl #18
     a18:	05000400 	streq	r0, [r0, #-1024]	; 0xfffffc00
     a1c:	00000204 	andeq	r0, r0, r4, lsl #4
     a20:	00021404 	andeq	r1, r2, r4, lsl #8
     a24:	006f0a00 	rsbeq	r0, pc, r0, lsl #20
     a28:	022e0000 	eoreq	r0, lr, #0
     a2c:	990b0000 	stmdbls	fp, {}	; <UNPREDICTABLE>
     a30:	04000000 	streq	r0, [r0], #-0
     a34:	02f90c00 	rscseq	r0, r9, #0, 24
     a38:	72030000 	andvc	r0, r3, #0
     a3c:	0000a001 	andeq	sl, r0, r1
     a40:	03b40d00 			; <UNDEFINED> instruction: 0x03b40d00
     a44:	29030000 	stmdbcs	r3, {}	; <UNPREDICTABLE>
     a48:	00003e06 	andeq	r3, r0, r6, lsl #28
     a4c:	035e0e00 	cmpeq	lr, #0, 28
     a50:	35040000 	strcc	r0, [r4, #-0]
     a54:	0000006f 	andeq	r0, r0, pc, rrx
     a58:	00049e0e 	andeq	r9, r4, lr, lsl #28
     a5c:	99070100 	stmdbls	r7, {r8}
     a60:	0f000000 	svceq	0x00000000
     a64:	00000447 	andeq	r0, r0, r7, asr #8
     a68:	09a83c01 	stmibeq	r8!, {r0, sl, fp, ip, sp}
     a6c:	00040800 	andeq	r0, r4, r0, lsl #16
     a70:	9c010000 	stcls	0, cr0, [r1], {-0}
     a74:	0000027b 	andeq	r0, r0, fp, ror r2
     a78:	0009ac10 	andeq	sl, r9, r0, lsl ip
     a7c:	00029a08 	andeq	r9, r2, r8, lsl #20
     a80:	5d0f0000 	stcpl	0, cr0, [pc, #-0]	; a88 <__Main_Stack_Size+0x688>
     a84:	01000004 	tsteq	r0, r4
     a88:	00099019 	andeq	r9, r9, r9, lsl r0
     a8c:	00001808 	andeq	r1, r0, r8, lsl #16
     a90:	9a9c0100 	bls	fe700e98 <_estack+0xde6fbe98>
     a94:	11000002 	tstne	r0, r2
     a98:	08000996 	stmdaeq	r0, {r1, r2, r4, r7, r8, fp}
     a9c:	000002a5 	andeq	r0, r0, r5, lsr #5
     aa0:	03281200 			; <UNDEFINED> instruction: 0x03281200
     aa4:	03280000 			; <UNDEFINED> instruction: 0x03280000
     aa8:	50040000 	andpl	r0, r4, r0
     aac:	00034412 	andeq	r4, r3, r2, lsl r4
     ab0:	00034400 	andeq	r4, r3, r0, lsl #8
     ab4:	004f0400 	subeq	r0, pc, r0, lsl #8
     ab8:	000002a6 	andeq	r0, r0, r6, lsr #5
     abc:	04700004 	ldrbteq	r0, [r0], #-4
     ac0:	01040000 	mrseq	r0, (UNDEF: 4)
     ac4:	00000167 	andeq	r0, r0, r7, ror #2
     ac8:	0004b40c 	andeq	fp, r4, ip, lsl #8
     acc:	00004800 	andeq	r4, r0, r0, lsl #16
     ad0:	0000e800 	andeq	lr, r0, r0, lsl #16
     ad4:	00000000 	andeq	r0, r0, r0
     ad8:	00036000 	andeq	r6, r3, r0
     adc:	06010200 	streq	r0, [r1], -r0, lsl #4
     ae0:	0000008e 	andeq	r0, r0, lr, lsl #1
     ae4:	13050202 	movwne	r0, #20994	; 0x5202
     ae8:	03000002 	movweq	r0, #2
     aec:	00000ae4 	andeq	r0, r0, r4, ror #21
     af0:	00432804 	subeq	r2, r3, r4, lsl #16
     af4:	33040000 	movwcc	r0, #16384	; 0x4000
     af8:	02000000 	andeq	r0, r0, #0
     afc:	012f0504 			; <UNDEFINED> instruction: 0x012f0504
     b00:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     b04:	00012a05 	andeq	r2, r1, r5, lsl #20
     b08:	027d0300 	rsbseq	r0, sp, #0, 6
     b0c:	2e040000 	cdpcs	0, 0, cr0, cr4, cr0, {0}
     b10:	00000061 	andeq	r0, r0, r1, rrx
     b14:	00005104 	andeq	r5, r0, r4, lsl #2
     b18:	08010200 	stmdaeq	r1, {r9}
     b1c:	0000008c 	andeq	r0, r0, ip, lsl #1
     b20:	a8070202 	stmdage	r7, {r1, r9}
     b24:	03000000 	movweq	r0, #0
     b28:	00000ae3 	andeq	r0, r0, r3, ror #21
     b2c:	00843404 	addeq	r3, r4, r4, lsl #8
     b30:	6f040000 	svcvs	0x00040000
     b34:	05000000 	streq	r0, [r0, #-0]
     b38:	0000007a 	andeq	r0, r0, sl, ror r0
     b3c:	e4070402 	str	r0, [r7], #-1026	; 0xfffffbfe
     b40:	02000000 	andeq	r0, r0, #0
     b44:	00df0708 	sbcseq	r0, pc, r8, lsl #14
     b48:	04060000 	streq	r0, [r6], #-0
     b4c:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     b50:	07040200 	streq	r0, [r4, -r0, lsl #4]
     b54:	000000e9 	andeq	r0, r0, r9, ror #1
     b58:	5b038c07 	blpl	e3b7c <__Main_Stack_Size+0xe377c>
     b5c:	0001bb01 	andeq	fp, r1, r1, lsl #22
     b60:	02680800 	rsbeq	r0, r8, #0, 16
     b64:	5d030000 	stcpl	0, cr0, [r3, #-0]
     b68:	00007f01 	andeq	r7, r0, r1, lsl #30
     b6c:	a5080000 	strge	r0, [r8, #-0]
     b70:	03000002 	movweq	r0, #2
     b74:	007a015e 	rsbseq	r0, sl, lr, asr r1
     b78:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
     b7c:	0000034f 	andeq	r0, r0, pc, asr #6
     b80:	7a015f03 	bvc	58794 <__Main_Stack_Size+0x58394>
     b84:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     b88:	0002f308 	andeq	pc, r2, r8, lsl #6
     b8c:	01600300 	cmneq	r0, r0, lsl #6
     b90:	0000007a 	andeq	r0, r0, sl, ror r0
     b94:	4353090c 	cmpmi	r3, #12, 18	; 0x30000
     b98:	61030052 	qaddvs	r0, r2, r3
     b9c:	00007a01 	andeq	r7, r0, r1, lsl #20
     ba0:	43091000 	movwmi	r1, #36864	; 0x9000
     ba4:	03005243 	movweq	r5, #579	; 0x243
     ba8:	007a0162 	rsbseq	r0, sl, r2, ror #2
     bac:	09140000 	ldmdbeq	r4, {}	; <UNPREDICTABLE>
     bb0:	00504853 	subseq	r4, r0, r3, asr r8
     bb4:	cb016303 	blgt	597c8 <__Main_Stack_Size+0x593c8>
     bb8:	18000001 	stmdane	r0, {r0}
     bbc:	00032208 	andeq	r2, r3, r8, lsl #4
     bc0:	01640300 	cmneq	r4, r0, lsl #6
     bc4:	0000007a 	andeq	r0, r0, sl, ror r0
     bc8:	02d40824 	sbcseq	r0, r4, #36, 16	; 0x240000
     bcc:	65030000 	strvs	r0, [r3, #-0]
     bd0:	00007a01 	andeq	r7, r0, r1, lsl #20
     bd4:	6e082800 	cdpvs	8, 0, cr2, cr8, cr0, {0}
     bd8:	03000003 	movweq	r0, #3
     bdc:	007a0166 	rsbseq	r0, sl, r6, ror #2
     be0:	082c0000 	stmdaeq	ip!, {}	; <UNPREDICTABLE>
     be4:	00000359 	andeq	r0, r0, r9, asr r3
     be8:	7a016703 	bvc	5a7fc <__Main_Stack_Size+0x5a3fc>
     bec:	30000000 	andcc	r0, r0, r0
     bf0:	00033e08 	andeq	r3, r3, r8, lsl #28
     bf4:	01680300 	cmneq	r8, r0, lsl #6
     bf8:	0000007a 	andeq	r0, r0, sl, ror r0
     bfc:	02b20834 	adcseq	r0, r2, #52, 16	; 0x340000
     c00:	69030000 	stmdbvs	r3, {}	; <UNPREDICTABLE>
     c04:	00007a01 	andeq	r7, r0, r1, lsl #20
     c08:	98083800 	stmdals	r8, {fp, ip, sp}
     c0c:	03000003 	movweq	r0, #3
     c10:	007a016a 	rsbseq	r0, sl, sl, ror #2
     c14:	093c0000 	ldmdbeq	ip!, {}	; <UNPREDICTABLE>
     c18:	00524650 	subseq	r4, r2, r0, asr r6
     c1c:	e5016b03 	str	r6, [r1, #-2819]	; 0xfffff4fd
     c20:	40000001 	andmi	r0, r0, r1
     c24:	52464409 	subpl	r4, r6, #150994944	; 0x9000000
     c28:	016c0300 	cmneq	ip, r0, lsl #6
     c2c:	0000007f 	andeq	r0, r0, pc, ror r0
     c30:	44410948 	strbmi	r0, [r1], #-2376	; 0xfffff6b8
     c34:	6d030052 	stcvs	0, cr0, [r3, #-328]	; 0xfffffeb8
     c38:	00007f01 	andeq	r7, r0, r1, lsl #30
     c3c:	73084c00 	movwvc	r4, #35840	; 0x8c00
     c40:	03000003 	movweq	r0, #3
     c44:	01ff016e 	mvnseq	r0, lr, ror #2
     c48:	08500000 	ldmdaeq	r0, {}^	; <UNPREDICTABLE>
     c4c:	00000354 	andeq	r0, r0, r4, asr r3
     c50:	19016f03 	stmdbne	r1, {r0, r1, r8, r9, sl, fp, sp, lr}
     c54:	60000002 	andvs	r0, r0, r2
     c58:	00026e08 	andeq	r6, r2, r8, lsl #28
     c5c:	01700300 	cmneq	r0, r0, lsl #6
     c60:	0000021e 	andeq	r0, r0, lr, lsl r2
     c64:	03c10874 	biceq	r0, r1, #116, 16	; 0x740000
     c68:	71030000 	mrsvc	r0, (UNDEF: 3)
     c6c:	00007a01 	andeq	r7, r0, r1, lsl #20
     c70:	0a008800 	beq	22c78 <__Main_Stack_Size+0x22878>
     c74:	0000005c 	andeq	r0, r0, ip, asr r0
     c78:	000001cb 	andeq	r0, r0, fp, asr #3
     c7c:	0000990b 	andeq	r9, r0, fp, lsl #18
     c80:	04000b00 	streq	r0, [r0], #-2816	; 0xfffff500
     c84:	000001bb 			; <UNDEFINED> instruction: 0x000001bb
     c88:	00007f0a 	andeq	r7, r0, sl, lsl #30
     c8c:	0001e000 	andeq	lr, r1, r0
     c90:	00990b00 	addseq	r0, r9, r0, lsl #22
     c94:	00010000 	andeq	r0, r1, r0
     c98:	0001d005 	andeq	sp, r1, r5
     c9c:	01e00400 	mvneq	r0, r0, lsl #8
     ca0:	7f0a0000 	svcvc	0x000a0000
     ca4:	fa000000 	blx	cac <__Main_Stack_Size+0x8ac>
     ca8:	0b000001 	bleq	cb4 <__Main_Stack_Size+0x8b4>
     cac:	00000099 	muleq	r0, r9, r0
     cb0:	ea050003 	b	140cc4 <__Main_Stack_Size+0x1408c4>
     cb4:	04000001 	streq	r0, [r0], #-1
     cb8:	000001fa 	strdeq	r0, [r0], -sl
     cbc:	00007f0a 	andeq	r7, r0, sl, lsl #30
     cc0:	00021400 	andeq	r1, r2, r0, lsl #8
     cc4:	00990b00 	addseq	r0, r9, r0, lsl #22
     cc8:	00040000 	andeq	r0, r4, r0
     ccc:	00020405 	andeq	r0, r2, r5, lsl #8
     cd0:	02140400 	andseq	r0, r4, #0, 8
     cd4:	6f0a0000 	svcvs	0x000a0000
     cd8:	2e000000 	cdpcs	0, 0, cr0, cr0, cr0, {0}
     cdc:	0b000002 	bleq	cec <__Main_Stack_Size+0x8ec>
     ce0:	00000099 	muleq	r0, r9, r0
     ce4:	f90c0004 			; <UNDEFINED> instruction: 0xf90c0004
     ce8:	03000002 	movweq	r0, #2
     cec:	00a00172 	adceq	r0, r0, r2, ror r1
     cf0:	b40d0000 	strlt	r0, [sp], #-0
     cf4:	03000003 	movweq	r0, #3
     cf8:	003e0629 	eorseq	r0, lr, r9, lsr #12
     cfc:	5e0e0000 	cdppl	0, 0, cr0, cr14, cr0, {0}
     d00:	05000003 	streq	r0, [r0, #-3]
     d04:	00006f35 	andeq	r6, r0, r5, lsr pc
     d08:	04140f00 	ldreq	r0, [r4], #-3840	; 0xfffff100
     d0c:	16010000 	strne	r0, [r1], -r0
     d10:	080009ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, fp}
     d14:	00000020 	andeq	r0, r0, r0, lsr #32
     d18:	02979c01 	addseq	r9, r7, #256	; 0x100
     d1c:	97100000 	ldrls	r0, [r0, -r0]
     d20:	ac000002 	stcge	0, cr0, [r0], {2}
     d24:	20080009 	andcs	r0, r8, r9
     d28:	01000000 	mrseq	r0, (UNDEF: 0)
     d2c:	02a01118 	adceq	r1, r0, #24, 2
     d30:	09ac0000 	stmibeq	ip!, {}	; <UNPREDICTABLE>
     d34:	00040800 	andeq	r0, r4, r0, lsl #16
     d38:	ea030000 	b	c0d40 <__Main_Stack_Size+0xc0940>
     d3c:	02a01105 	adceq	r1, r0, #1073741825	; 0x40000001
     d40:	09be0000 	ldmibeq	lr!, {}	; <UNPREDICTABLE>
     d44:	000e0800 	andeq	r0, lr, r0, lsl #16
     d48:	ef030000 	svc	0x00030000
     d4c:	12000005 	andne	r0, r0, #5
     d50:	000004d4 	ldrdeq	r0, [r0], -r4
     d54:	0305e803 	movweq	lr, #22531	; 0x5803
     d58:	0004ae13 	andeq	sl, r4, r3, lsl lr
     d5c:	016f0200 	cmneq	pc, r0, lsl #4
     d60:	092f0003 	stmdbeq	pc!, {r0, r1}	; <UNPREDICTABLE>
     d64:	00040000 	andeq	r0, r4, r0
     d68:	0000057d 	andeq	r0, r0, sp, ror r5
     d6c:	01670104 	cmneq	r7, r4, lsl #2
     d70:	200c0000 	andcs	r0, ip, r0
     d74:	48000008 	stmdami	r0, {r3}
     d78:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
     d7c:	00000000 	andeq	r0, r0, r0
     d80:	3e000000 	cdpcc	0, 0, cr0, cr0, cr0, {0}
     d84:	02000004 	andeq	r0, r0, #4
     d88:	008e0601 	addeq	r0, lr, r1, lsl #12
     d8c:	01020000 	mrseq	r0, (UNDEF: 2)
     d90:	00008c08 	andeq	r8, r0, r8, lsl #24
     d94:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
     d98:	00000213 	andeq	r0, r0, r3, lsl r2
     d9c:	a8070202 	stmdage	r7, {r1, r9}
     da0:	02000000 	andeq	r0, r0, #0
     da4:	012f0504 			; <UNDEFINED> instruction: 0x012f0504
     da8:	04020000 	streq	r0, [r2], #-0
     dac:	0000e407 	andeq	lr, r0, r7, lsl #8
     db0:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     db4:	0000012a 	andeq	r0, r0, sl, lsr #2
     db8:	df070802 	svcle	0x00070802
     dbc:	03000000 	movweq	r0, #0
     dc0:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     dc4:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
     dc8:	0000e907 	andeq	lr, r0, r7, lsl #18
     dcc:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
     dd0:	000006e7 	andeq	r0, r0, r7, ror #13
     dd4:	0006d504 	andeq	sp, r6, r4, lsl #10
     dd8:	5d0c0200 	sfmpl	f0, 4, [ip, #-0]
     ddc:	04000000 	streq	r0, [r0], #-0
     de0:	00000a28 	andeq	r0, r0, r8, lsr #20
     de4:	00412c03 	subeq	r2, r1, r3, lsl #24
     de8:	0f040000 	svceq	0x00040000
     dec:	03000008 	movweq	r0, #8
     df0:	00004172 	andeq	r4, r0, r2, ror r1
     df4:	06b60500 	ldrteq	r0, [r6], r0, lsl #10
     df8:	65040000 	strvs	r0, [r4, #-0]
     dfc:	00006401 	andeq	r6, r0, r1, lsl #8
     e00:	03040600 	movweq	r0, #17920	; 0x4600
     e04:	0000bea6 	andeq	fp, r0, r6, lsr #29
     e08:	06b00700 	ldrteq	r0, [r0], r0, lsl #14
     e0c:	a8030000 	stmdage	r3, {}	; <UNPREDICTABLE>
     e10:	00000093 	muleq	r0, r3, r0
     e14:	00065607 	andeq	r5, r6, r7, lsl #12
     e18:	bea90300 	cdplt	3, 10, cr0, cr9, cr0, {0}
     e1c:	00000000 	andeq	r0, r0, r0
     e20:	00002c08 	andeq	r2, r0, r8, lsl #24
     e24:	0000ce00 	andeq	ip, r0, r0, lsl #28
     e28:	00640900 	rsbeq	r0, r4, r0, lsl #18
     e2c:	00030000 	andeq	r0, r3, r0
     e30:	a303080a 	movwge	r0, #14346	; 0x380a
     e34:	000000ef 	andeq	r0, r0, pc, ror #1
     e38:	0007f10b 	andeq	pc, r7, fp, lsl #2
     e3c:	5da50300 	stcpl	3, cr0, [r5]
     e40:	00000000 	andeq	r0, r0, r0
     e44:	0007f90b 	andeq	pc, r7, fp, lsl #18
     e48:	9faa0300 	svcls	0x00aa0300
     e4c:	04000000 	streq	r0, [r0], #-0
     e50:	07690400 	strbeq	r0, [r9, -r0, lsl #8]!
     e54:	ab030000 	blge	c0e5c <__Main_Stack_Size+0xc0a5c>
     e58:	000000ce 	andeq	r0, r0, lr, asr #1
     e5c:	00061f04 	andeq	r1, r6, r4, lsl #30
     e60:	72af0300 	adcvc	r0, pc, #0, 6
     e64:	0c000000 	stceq	0, cr0, [r0], {-0}
     e68:	08070404 	stmdaeq	r7, {r2, sl}
     e6c:	8b050000 	blhi	140e74 <__Main_Stack_Size+0x140a74>
     e70:	00000112 	andeq	r0, r0, r2, lsl r1
     e74:	0118040d 	tsteq	r8, sp, lsl #8
     e78:	01020000 	mrseq	r0, (UNDEF: 2)
     e7c:	00009506 	andeq	r9, r0, r6, lsl #10
     e80:	01180e00 	tsteq	r8, r0, lsl #28
     e84:	57040000 	strpl	r0, [r4, -r0]
     e88:	06000008 	streq	r0, [r0], -r8
     e8c:	00004816 	andeq	r4, r0, r6, lsl r8
     e90:	06300f00 	ldrteq	r0, [r0], -r0, lsl #30
     e94:	06180000 	ldreq	r0, [r8], -r0
     e98:	0001822f 	andeq	r8, r1, pc, lsr #4
     e9c:	07940b00 	ldreq	r0, [r4, r0, lsl #22]
     ea0:	31060000 	mrscc	r0, (UNDEF: 6)
     ea4:	00000182 	andeq	r0, r0, r2, lsl #3
     ea8:	6b5f1000 	blvs	17c4eb0 <__Main_Stack_Size+0x17c4ab0>
     eac:	5d320600 	ldcpl	6, cr0, [r2, #-0]
     eb0:	04000000 	streq	r0, [r0], #-0
     eb4:	0007dc0b 	andeq	sp, r7, fp, lsl #24
     eb8:	5d320600 	ldcpl	6, cr0, [r2, #-0]
     ebc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     ec0:	0006190b 	andeq	r1, r6, fp, lsl #18
     ec4:	5d320600 	ldcpl	6, cr0, [r2, #-0]
     ec8:	0c000000 	stceq	0, cr0, [r0], {-0}
     ecc:	00088c0b 	andeq	r8, r8, fp, lsl #24
     ed0:	5d320600 	ldcpl	6, cr0, [r2, #-0]
     ed4:	10000000 	andne	r0, r0, r0
     ed8:	00785f10 	rsbseq	r5, r8, r0, lsl pc
     edc:	01883306 	orreq	r3, r8, r6, lsl #6
     ee0:	00140000 	andseq	r0, r4, r0
     ee4:	012f040d 			; <UNDEFINED> instruction: 0x012f040d
     ee8:	24080000 	strcs	r0, [r8], #-0
     eec:	98000001 	stmdals	r0, {r0}
     ef0:	09000001 	stmdbeq	r0, {r0}
     ef4:	00000064 	andeq	r0, r0, r4, rrx
     ef8:	510f0000 	mrspl	r0, CPSR
     efc:	24000006 	strcs	r0, [r0], #-6
     f00:	02113706 	andseq	r3, r1, #1572864	; 0x180000
     f04:	550b0000 	strpl	r0, [fp, #-0]
     f08:	06000005 	streq	r0, [r0], -r5
     f0c:	00005d39 	andeq	r5, r0, r9, lsr sp
     f10:	170b0000 	strne	r0, [fp, -r0]
     f14:	06000008 	streq	r0, [r0], -r8
     f18:	00005d3a 	andeq	r5, r0, sl, lsr sp
     f1c:	6a0b0400 	bvs	2c1f24 <__Main_Stack_Size+0x2c1b24>
     f20:	06000005 	streq	r0, [r0], -r5
     f24:	00005d3b 	andeq	r5, r0, fp, lsr sp
     f28:	050b0800 	streq	r0, [fp, #-2048]	; 0xfffff800
     f2c:	06000009 	streq	r0, [r0], -r9
     f30:	00005d3c 	andeq	r5, r0, ip, lsr sp
     f34:	fa0b0c00 	blx	2c3f3c <__Main_Stack_Size+0x2c3b3c>
     f38:	06000006 	streq	r0, [r0], -r6
     f3c:	00005d3d 	andeq	r5, r0, sp, lsr sp
     f40:	cb0b1000 	blgt	2c4f48 <__Main_Stack_Size+0x2c4b48>
     f44:	06000006 	streq	r0, [r0], -r6
     f48:	00005d3e 	andeq	r5, r0, lr, lsr sp
     f4c:	910b1400 	tstls	fp, r0, lsl #8
     f50:	06000008 	streq	r0, [r0], -r8
     f54:	00005d3f 	andeq	r5, r0, pc, lsr sp
     f58:	4b0b1800 	blmi	2c6f60 <__Main_Stack_Size+0x2c6b60>
     f5c:	06000007 	streq	r0, [r0], -r7
     f60:	00005d40 	andeq	r5, r0, r0, asr #26
     f64:	cc0b1c00 	stcgt	12, cr1, [fp], {-0}
     f68:	06000008 	streq	r0, [r0], -r8
     f6c:	00005d41 	andeq	r5, r0, r1, asr #26
     f70:	11002000 	mrsne	r2, (UNDEF: 0)
     f74:	00000579 	andeq	r0, r0, r9, ror r5
     f78:	4a060108 	bmi	1813a0 <__Main_Stack_Size+0x180fa0>
     f7c:	00000251 	andeq	r0, r0, r1, asr r2
     f80:	0006070b 	andeq	r0, r6, fp, lsl #14
     f84:	514b0600 	cmppl	fp, r0, lsl #12
     f88:	00000002 	andeq	r0, r0, r2
     f8c:	0004e50b 	andeq	lr, r4, fp, lsl #10
     f90:	514c0600 	cmppl	ip, r0, lsl #12
     f94:	80000002 	andhi	r0, r0, r2
     f98:	00084912 	andeq	r4, r8, r2, lsl r9
     f9c:	244e0600 	strbcs	r0, [lr], #-1536	; 0xfffffa00
     fa0:	00000001 	andeq	r0, r0, r1
     fa4:	05bc1201 	ldreq	r1, [ip, #513]!	; 0x201
     fa8:	51060000 	mrspl	r0, (UNDEF: 6)
     fac:	00000124 	andeq	r0, r0, r4, lsr #2
     fb0:	08000104 	stmdaeq	r0, {r2, r8}
     fb4:	00000105 	andeq	r0, r0, r5, lsl #2
     fb8:	00000261 	andeq	r0, r0, r1, ror #4
     fbc:	00006409 	andeq	r6, r0, r9, lsl #8
     fc0:	11001f00 	tstne	r0, r0, lsl #30
     fc4:	00000703 	andeq	r0, r0, r3, lsl #14
     fc8:	5d060190 	stfpls	f0, [r6, #-576]	; 0xfffffdc0
     fcc:	0000029f 	muleq	r0, pc, r2	; <UNPREDICTABLE>
     fd0:	0007940b 	andeq	r9, r7, fp, lsl #8
     fd4:	9f5e0600 	svcls	0x005e0600
     fd8:	00000002 	andeq	r0, r0, r2
     fdc:	0007ac0b 	andeq	sl, r7, fp, lsl #24
     fe0:	5d5f0600 	ldclpl	6, cr0, [pc, #-0]	; fe8 <__Main_Stack_Size+0xbe8>
     fe4:	04000000 	streq	r0, [r0], #-0
     fe8:	00060f0b 	andeq	r0, r6, fp, lsl #30
     fec:	a5610600 	strbge	r0, [r1, #-1536]!	; 0xfffffa00
     ff0:	08000002 	stmdaeq	r0, {r1}
     ff4:	0005790b 	andeq	r7, r5, fp, lsl #18
     ff8:	11620600 	cmnne	r2, r0, lsl #12
     ffc:	88000002 	stmdahi	r0, {r1}
    1000:	61040d00 	tstvs	r4, r0, lsl #26
    1004:	08000002 	stmdaeq	r0, {r1}
    1008:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
    100c:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
    1010:	00006409 	andeq	r6, r0, r9, lsl #8
    1014:	0d001f00 	stceq	15, cr1, [r0, #-0]
    1018:	0002bb04 	andeq	fp, r2, r4, lsl #22
    101c:	550f1300 	strpl	r1, [pc, #-768]	; d24 <__Main_Stack_Size+0x924>
    1020:	08000007 	stmdaeq	r0, {r0, r1, r2}
    1024:	02e17506 	rsceq	r7, r1, #25165824	; 0x1800000
    1028:	640b0000 	strvs	r0, [fp], #-0
    102c:	06000005 	streq	r0, [r0], -r5
    1030:	0002e176 	andeq	lr, r2, r6, ror r1
    1034:	480b0000 	stmdami	fp, {}	; <UNPREDICTABLE>
    1038:	0600000b 	streq	r0, [r0], -fp
    103c:	00005d77 	andeq	r5, r0, r7, ror sp
    1040:	0d000400 	cfstrseq	mvf0, [r0, #-0]
    1044:	00002c04 	andeq	r2, r0, r4, lsl #24
    1048:	07740f00 	ldrbeq	r0, [r4, -r0, lsl #30]!
    104c:	06680000 	strbteq	r0, [r8], -r0
    1050:	000411b5 			; <UNDEFINED> instruction: 0x000411b5
    1054:	705f1000 	subsvc	r1, pc, r0
    1058:	e1b60600 			; <UNDEFINED> instruction: 0xe1b60600
    105c:	00000002 	andeq	r0, r0, r2
    1060:	00725f10 	rsbseq	r5, r2, r0, lsl pc
    1064:	005db706 	subseq	fp, sp, r6, lsl #14
    1068:	10040000 	andne	r0, r4, r0
    106c:	0600775f 			; <UNDEFINED> instruction: 0x0600775f
    1070:	00005db8 			; <UNDEFINED> instruction: 0x00005db8
    1074:	b50b0800 	strlt	r0, [fp, #-2048]	; 0xfffff800
    1078:	06000005 	streq	r0, [r0], -r5
    107c:	000033b9 			; <UNDEFINED> instruction: 0x000033b9
    1080:	6d0b0c00 	stcvs	12, cr0, [fp, #-0]
    1084:	06000006 	streq	r0, [r0], -r6
    1088:	000033ba 			; <UNDEFINED> instruction: 0x000033ba
    108c:	5f100e00 	svcpl	0x00100e00
    1090:	06006662 	streq	r6, [r0], -r2, ror #12
    1094:	0002bcbb 			; <UNDEFINED> instruction: 0x0002bcbb
    1098:	240b1000 	strcs	r1, [fp], #-0
    109c:	06000005 	streq	r0, [r0], -r5
    10a0:	00005dbc 			; <UNDEFINED> instruction: 0x00005dbc
    10a4:	870b1800 	strhi	r1, [fp, -r0, lsl #16]
    10a8:	06000005 	streq	r0, [r0], -r5
    10ac:	000105c3 	andeq	r0, r1, r3, asr #11
    10b0:	730b1c00 	movwvc	r1, #48128	; 0xbc00
    10b4:	0600000e 	streq	r0, [r0], -lr
    10b8:	00056cc5 	andeq	r6, r5, r5, asr #25
    10bc:	070b2000 	streq	r2, [fp, -r0]
    10c0:	06000014 			; <UNDEFINED> instruction: 0x06000014
    10c4:	00059bc7 	andeq	r9, r5, r7, asr #23
    10c8:	010b2400 	tsteq	fp, r0, lsl #8
    10cc:	06000008 	streq	r0, [r0], -r8
    10d0:	0005bfca 	andeq	fp, r5, sl, asr #31
    10d4:	e60b2800 	str	r2, [fp], -r0, lsl #16
    10d8:	06000008 	streq	r0, [r0], -r8
    10dc:	0005d9cb 	andeq	sp, r5, fp, asr #19
    10e0:	5f102c00 	svcpl	0x00102c00
    10e4:	06006275 			; <UNDEFINED> instruction: 0x06006275
    10e8:	0002bcce 	andeq	fp, r2, lr, asr #25
    10ec:	5f103000 	svcpl	0x00103000
    10f0:	06007075 			; <UNDEFINED> instruction: 0x06007075
    10f4:	0002e1cf 	andeq	lr, r2, pc, asr #3
    10f8:	5f103800 	svcpl	0x00103800
    10fc:	06007275 			; <UNDEFINED> instruction: 0x06007275
    1100:	00005dd0 	ldrdeq	r5, [r0], -r0
    1104:	5e0b3c00 	cdppl	12, 0, cr3, cr11, cr0, {0}
    1108:	06000005 	streq	r0, [r0], -r5
    110c:	0005dfd3 	ldrdeq	sp, [r5], -r3
    1110:	be0b4000 	cdplt	0, 0, cr4, cr11, cr0, {0}
    1114:	06000008 	streq	r0, [r0], -r8
    1118:	0005efd4 	ldrdeq	lr, [r5], -r4
    111c:	5f104300 	svcpl	0x00104300
    1120:	0600626c 	streq	r6, [r0], -ip, ror #4
    1124:	0002bcd7 	ldrdeq	fp, [r2], -r7
    1128:	e20b4400 	and	r4, fp, #0, 8
    112c:	0600000b 	streq	r0, [r0], -fp
    1130:	00005dda 	ldrdeq	r5, [r0], -sl
    1134:	e00b4c00 	and	r4, fp, r0, lsl #24
    1138:	06000005 	streq	r0, [r0], -r5
    113c:	00007ddb 	ldrdeq	r7, [r0], -fp
    1140:	d90b5000 	stmdble	fp, {ip, lr}
    1144:	06000009 	streq	r0, [r0], -r9
    1148:	00042fde 	ldrdeq	r2, [r4], -lr
    114c:	bd0b5400 	cfstrslt	mvf5, [fp, #-0]
    1150:	06000006 	streq	r0, [r0], -r6
    1154:	0000fae2 	andeq	pc, r0, r2, ror #21
    1158:	860b5800 	strhi	r5, [fp], -r0, lsl #16
    115c:	06000007 	streq	r0, [r0], -r7
    1160:	0000efe4 	andeq	lr, r0, r4, ror #31
    1164:	c30b5c00 	movwgt	r5, #48128	; 0xbc00
    1168:	06000006 	streq	r0, [r0], -r6
    116c:	00005de5 	andeq	r5, r0, r5, ror #27
    1170:	14006400 	strne	r6, [r0], #-1024	; 0xfffffc00
    1174:	0000005d 	andeq	r0, r0, sp, asr r0
    1178:	0000042f 	andeq	r0, r0, pc, lsr #8
    117c:	00042f15 	andeq	r2, r4, r5, lsl pc
    1180:	01051500 	tsteq	r5, r0, lsl #10
    1184:	12150000 	andsne	r0, r5, #0
    1188:	15000001 	strne	r0, [r0, #-1]
    118c:	0000005d 	andeq	r0, r0, sp, asr r0
    1190:	3a040d00 	bcc	104598 <__Main_Stack_Size+0x104198>
    1194:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    1198:	0000042f 	andeq	r0, r0, pc, lsr #8
    119c:	0007e416 	andeq	lr, r7, r6, lsl r4
    11a0:	06042800 	streq	r2, [r4], -r0, lsl #16
    11a4:	056c0239 	strbeq	r0, [ip, #-569]!	; 0xfffffdc7
    11a8:	98170000 	ldmdals	r7, {}	; <UNPREDICTABLE>
    11ac:	06000005 	streq	r0, [r0], -r5
    11b0:	005d023b 	subseq	r0, sp, fp, lsr r2
    11b4:	17000000 	strne	r0, [r0, -r0]
    11b8:	000005c4 	andeq	r0, r0, r4, asr #11
    11bc:	46024006 	strmi	r4, [r2], -r6
    11c0:	04000006 	streq	r0, [r0], #-6
    11c4:	00065d17 	andeq	r5, r6, r7, lsl sp
    11c8:	02400600 	subeq	r0, r0, #0, 12
    11cc:	00000646 	andeq	r0, r0, r6, asr #12
    11d0:	06281708 	strteq	r1, [r8], -r8, lsl #14
    11d4:	40060000 	andmi	r0, r6, r0
    11d8:	00064602 	andeq	r4, r6, r2, lsl #12
    11dc:	a7170c00 	ldrge	r0, [r7, -r0, lsl #24]
    11e0:	06000007 	streq	r0, [r0], -r7
    11e4:	005d0242 	subseq	r0, sp, r2, asr #4
    11e8:	17100000 	ldrne	r0, [r0, -r0]
    11ec:	000004f9 	strdeq	r0, [r0], -r9
    11f0:	28024306 	stmdacs	r2, {r1, r2, r8, r9, lr}
    11f4:	14000008 	strne	r0, [r0], #-8
    11f8:	0007c317 	andeq	ip, r7, r7, lsl r3
    11fc:	02460600 	subeq	r0, r6, #0, 12
    1200:	0000005d 	andeq	r0, r0, sp, asr r0
    1204:	07b11730 			; <UNDEFINED> instruction: 0x07b11730
    1208:	47060000 	strmi	r0, [r6, -r0]
    120c:	00083d02 	andeq	r3, r8, r2, lsl #26
    1210:	0b173400 	bleq	5ce218 <__Main_Stack_Size+0x5cde18>
    1214:	06000007 	streq	r0, [r0], -r7
    1218:	005d0249 	subseq	r0, sp, r9, asr #4
    121c:	17380000 	ldrne	r0, [r8, -r0]!
    1220:	000007b9 			; <UNDEFINED> instruction: 0x000007b9
    1224:	4e024b06 	vmlami.f64	d4, d2, d6
    1228:	3c000008 	stccc	0, cr0, [r0], {8}
    122c:	0006a817 	andeq	sl, r6, r7, lsl r8
    1230:	024e0600 	subeq	r0, lr, #0, 12
    1234:	00000182 	andeq	r0, r0, r2, lsl #3
    1238:	06471740 	strbeq	r1, [r7], -r0, asr #14
    123c:	4f060000 	svcmi	0x00060000
    1240:	00005d02 	andeq	r5, r0, r2, lsl #26
    1244:	00174400 	andseq	r4, r7, r0, lsl #8
    1248:	06000009 	streq	r0, [r0], -r9
    124c:	01820250 	orreq	r0, r2, r0, asr r2
    1250:	17480000 	strbne	r0, [r8, -r0]
    1254:	00000716 	andeq	r0, r0, r6, lsl r7
    1258:	54025106 	strpl	r5, [r2], #-262	; 0xfffffefa
    125c:	4c000008 	stcmi	0, cr0, [r0], {8}
    1260:	00066517 	andeq	r6, r6, r7, lsl r5
    1264:	02540600 	subseq	r0, r4, #0, 12
    1268:	0000005d 	andeq	r0, r0, sp, asr r0
    126c:	05d81750 	ldrbeq	r1, [r8, #1872]	; 0x750
    1270:	55060000 	strpl	r0, [r6, #-0]
    1274:	00011202 	andeq	r1, r1, r2, lsl #4
    1278:	3d175400 	cfldrscc	mvf5, [r7, #-0]
    127c:	06000007 	streq	r0, [r0], -r7
    1280:	08060278 	stmdaeq	r6, {r3, r4, r5, r6, r9}
    1284:	18580000 	ldmdane	r8, {}^	; <UNPREDICTABLE>
    1288:	00000703 	andeq	r0, r0, r3, lsl #14
    128c:	9f027c06 	svcls	0x00027c06
    1290:	48000002 	stmdami	r0, {r1}
    1294:	06861801 	streq	r1, [r6], r1, lsl #16
    1298:	7d060000 	stcvc	0, cr0, [r6, #-0]
    129c:	00026102 	andeq	r6, r2, r2, lsl #2
    12a0:	18014c00 	stmdane	r1, {sl, fp, lr}
    12a4:	000008b4 			; <UNDEFINED> instruction: 0x000008b4
    12a8:	65028106 	strvs	r8, [r2, #-262]	; 0xfffffefa
    12ac:	dc000008 	stcle	0, cr0, [r0], {8}
    12b0:	058f1802 	streq	r1, [pc, #2050]	; 1aba <__Main_Stack_Size+0x16ba>
    12b4:	86060000 	strhi	r0, [r6], -r0
    12b8:	00060b02 	andeq	r0, r6, r2, lsl #22
    12bc:	1802e000 	stmdane	r2, {sp, lr, pc}
    12c0:	00000574 	andeq	r0, r0, r4, ror r5
    12c4:	71028706 	tstvc	r2, r6, lsl #14
    12c8:	ec000008 	stc	0, cr0, [r0], {8}
    12cc:	040d0002 	streq	r0, [sp], #-2
    12d0:	00000411 	andeq	r0, r0, r1, lsl r4
    12d4:	00005d14 	andeq	r5, r0, r4, lsl sp
    12d8:	00059000 	andeq	r9, r5, r0
    12dc:	042f1500 	strteq	r1, [pc], #-1280	; 12e4 <__Main_Stack_Size+0xee4>
    12e0:	05150000 	ldreq	r0, [r5, #-0]
    12e4:	15000001 	strne	r0, [r0, #-1]
    12e8:	00000590 	muleq	r0, r0, r5
    12ec:	00005d15 	andeq	r5, r0, r5, lsl sp
    12f0:	040d0000 	streq	r0, [sp], #-0
    12f4:	0000011f 	andeq	r0, r0, pc, lsl r1
    12f8:	0005900e 	andeq	r9, r5, lr
    12fc:	72040d00 	andvc	r0, r4, #0, 26
    1300:	14000005 	strne	r0, [r0], #-5
    1304:	00000088 	andeq	r0, r0, r8, lsl #1
    1308:	000005bf 			; <UNDEFINED> instruction: 0x000005bf
    130c:	00042f15 	andeq	r2, r4, r5, lsl pc
    1310:	01051500 	tsteq	r5, r0, lsl #10
    1314:	88150000 	ldmdahi	r5, {}	; <UNPREDICTABLE>
    1318:	15000000 	strne	r0, [r0, #-0]
    131c:	0000005d 	andeq	r0, r0, sp, asr r0
    1320:	a1040d00 	tstge	r4, r0, lsl #26
    1324:	14000005 	strne	r0, [r0], #-5
    1328:	0000005d 	andeq	r0, r0, sp, asr r0
    132c:	000005d9 	ldrdeq	r0, [r0], -r9
    1330:	00042f15 	andeq	r2, r4, r5, lsl pc
    1334:	01051500 	tsteq	r5, r0, lsl #10
    1338:	0d000000 	stceq	0, cr0, [r0, #-0]
    133c:	0005c504 	andeq	ip, r5, r4, lsl #10
    1340:	002c0800 	eoreq	r0, ip, r0, lsl #16
    1344:	05ef0000 	strbeq	r0, [pc, #0]!	; 134c <__Main_Stack_Size+0xf4c>
    1348:	64090000 	strvs	r0, [r9], #-0
    134c:	02000000 	andeq	r0, r0, #0
    1350:	002c0800 	eoreq	r0, ip, r0, lsl #16
    1354:	05ff0000 	ldrbeq	r0, [pc, #0]!	; 135c <__Main_Stack_Size+0xf5c>
    1358:	64090000 	strvs	r0, [r9], #-0
    135c:	00000000 	andeq	r0, r0, r0
    1360:	07620500 	strbeq	r0, [r2, -r0, lsl #10]!
    1364:	1f060000 	svcne	0x00060000
    1368:	0002e701 	andeq	lr, r2, r1, lsl #14
    136c:	089b1900 	ldmeq	fp, {r8, fp, ip}
    1370:	060c0000 	streq	r0, [ip], -r0
    1374:	06400123 	strbeq	r0, [r0], -r3, lsr #2
    1378:	94170000 	ldrls	r0, [r7], #-0
    137c:	06000007 	streq	r0, [r0], -r7
    1380:	06400125 	strbeq	r0, [r0], -r5, lsr #2
    1384:	17000000 	strne	r0, [r0, -r0]
    1388:	00000673 	andeq	r0, r0, r3, ror r6
    138c:	5d012606 	stcpl	6, cr2, [r1, #-24]	; 0xffffffe8
    1390:	04000000 	streq	r0, [r0], #-0
    1394:	00075c17 	andeq	r5, r7, r7, lsl ip
    1398:	01270600 			; <UNDEFINED> instruction: 0x01270600
    139c:	00000646 	andeq	r0, r0, r6, asr #12
    13a0:	040d0008 	streq	r0, [sp], #-8
    13a4:	0000060b 	andeq	r0, r0, fp, lsl #12
    13a8:	05ff040d 	ldrbeq	r0, [pc, #1037]!	; 17bd <__Main_Stack_Size+0x13bd>
    13ac:	f1190000 			; <UNDEFINED> instruction: 0xf1190000
    13b0:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    13b4:	81013f06 	tsthi	r1, r6, lsl #30
    13b8:	17000006 	strne	r0, [r0, -r6]
    13bc:	000007eb 	andeq	r0, r0, fp, ror #15
    13c0:	81014006 	tsthi	r1, r6
    13c4:	00000006 	andeq	r0, r0, r6
    13c8:	00083617 	andeq	r3, r8, r7, lsl r6
    13cc:	01410600 	cmpeq	r1, r0, lsl #12
    13d0:	00000681 	andeq	r0, r0, r1, lsl #13
    13d4:	08521706 	ldmdaeq	r2, {r1, r2, r8, r9, sl, ip}^
    13d8:	42060000 	andmi	r0, r6, #0
    13dc:	00003a01 	andeq	r3, r0, r1, lsl #20
    13e0:	08000c00 	stmdaeq	r0, {sl, fp}
    13e4:	0000003a 	andeq	r0, r0, sl, lsr r0
    13e8:	00000691 	muleq	r0, r1, r6
    13ec:	00006409 	andeq	r6, r0, r9, lsl #8
    13f0:	1a000200 	bne	1bf8 <__Main_Stack_Size+0x17f8>
    13f4:	025906d0 	subseq	r0, r9, #208, 12	; 0xd000000
    13f8:	00000792 	muleq	r0, r2, r7
    13fc:	00087f17 	andeq	r7, r8, r7, lsl pc
    1400:	025b0600 	subseq	r0, fp, #0, 12
    1404:	00000064 	andeq	r0, r0, r4, rrx
    1408:	083c1700 	ldmdaeq	ip!, {r8, r9, sl, ip}
    140c:	5c060000 	stcpl	0, cr0, [r6], {-0}
    1410:	00011202 	andeq	r1, r1, r2, lsl #4
    1414:	9b170400 	blls	5c241c <__Main_Stack_Size+0x5c201c>
    1418:	06000006 	streq	r0, [r0], -r6
    141c:	0792025d 			; <UNDEFINED> instruction: 0x0792025d
    1420:	17080000 	strne	r0, [r8, -r0]
    1424:	000008d7 	ldrdeq	r0, [r0], -r7
    1428:	98025e06 	stmdals	r2, {r1, r2, r9, sl, fp, ip, lr}
    142c:	24000001 	strcs	r0, [r0], #-1
    1430:	00063817 	andeq	r3, r6, r7, lsl r8
    1434:	025f0600 	subseq	r0, pc, #0, 12
    1438:	0000005d 	andeq	r0, r0, sp, asr r0
    143c:	078f1748 	streq	r1, [pc, r8, asr #14]
    1440:	60060000 	andvs	r0, r6, r0
    1444:	00005602 	andeq	r5, r0, r2, lsl #12
    1448:	ed175000 	ldc	0, cr5, [r7, #-0]
    144c:	06000008 	streq	r0, [r0], -r8
    1450:	064c0261 	strbeq	r0, [ip], -r1, ror #4
    1454:	17580000 	ldrbne	r0, [r8, -r0]
    1458:	0000079a 	muleq	r0, sl, r7
    145c:	ef026206 	svc	0x00026206
    1460:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    1464:	0008f217 	andeq	pc, r8, r7, lsl r2	; <UNPREDICTABLE>
    1468:	02630600 	rsbeq	r0, r3, #0, 12
    146c:	000000ef 	andeq	r0, r0, pc, ror #1
    1470:	05471770 	strbeq	r1, [r7, #-1904]	; 0xfffff890
    1474:	64060000 	strvs	r0, [r6], #-0
    1478:	0000ef02 	andeq	lr, r0, r2, lsl #30
    147c:	aa177800 	bge	5df484 <__Main_Stack_Size+0x5df084>
    1480:	06000008 	streq	r0, [r0], -r8
    1484:	07a20265 	streq	r0, [r2, r5, ror #4]!
    1488:	17800000 	strne	r0, [r0, r0]
    148c:	0000068f 	andeq	r0, r0, pc, lsl #13
    1490:	b2026606 	andlt	r6, r2, #6291456	; 0x600000
    1494:	88000007 	stmdahi	r0, {r0, r1, r2}
    1498:	00085f17 	andeq	r5, r8, r7, lsl pc
    149c:	02670600 	rsbeq	r0, r7, #0, 12
    14a0:	0000005d 	andeq	r0, r0, sp, asr r0
    14a4:	05f917a0 	ldrbeq	r1, [r9, #1952]!	; 0x7a0
    14a8:	68060000 	stmdavs	r6, {}	; <UNPREDICTABLE>
    14ac:	0000ef02 	andeq	lr, r0, r2, lsl #30
    14b0:	3817a400 	ldmdacc	r7, {sl, sp, pc}
    14b4:	06000005 	streq	r0, [r0], -r5
    14b8:	00ef0269 	rsceq	r0, pc, r9, ror #4
    14bc:	17ac0000 	strne	r0, [ip, r0]!
    14c0:	000005e8 	andeq	r0, r0, r8, ror #11
    14c4:	ef026a06 	svc	0x00026a06
    14c8:	b4000000 	strlt	r0, [r0], #-0
    14cc:	00050417 	andeq	r0, r5, r7, lsl r4
    14d0:	026b0600 	rsbeq	r0, fp, #0, 12
    14d4:	000000ef 	andeq	r0, r0, pc, ror #1
    14d8:	051317bc 	ldreq	r1, [r3, #-1980]	; 0xfffff844
    14dc:	6c060000 	stcvs	0, cr0, [r6], {-0}
    14e0:	0000ef02 	andeq	lr, r0, r2, lsl #30
    14e4:	4217c400 	andsmi	ip, r7, #0, 8
    14e8:	06000007 	streq	r0, [r0], -r7
    14ec:	005d026d 	subseq	r0, sp, sp, ror #4
    14f0:	00cc0000 	sbceq	r0, ip, r0
    14f4:	00011808 	andeq	r1, r1, r8, lsl #16
    14f8:	0007a200 	andeq	sl, r7, r0, lsl #4
    14fc:	00640900 	rsbeq	r0, r4, r0, lsl #18
    1500:	00190000 	andseq	r0, r9, r0
    1504:	00011808 	andeq	r1, r1, r8, lsl #16
    1508:	0007b200 	andeq	fp, r7, r0, lsl #4
    150c:	00640900 	rsbeq	r0, r4, r0, lsl #18
    1510:	00070000 	andeq	r0, r7, r0
    1514:	00011808 	andeq	r1, r1, r8, lsl #16
    1518:	0007c200 	andeq	ip, r7, r0, lsl #4
    151c:	00640900 	rsbeq	r0, r4, r0, lsl #18
    1520:	00170000 	andseq	r0, r7, r0
    1524:	7206f01a 	andvc	pc, r6, #26
    1528:	0007e602 	andeq	lr, r7, r2, lsl #12
    152c:	06f31700 	ldrbteq	r1, [r3], r0, lsl #14
    1530:	75060000 	strvc	r0, [r6, #-0]
    1534:	0007e602 	andeq	lr, r7, r2, lsl #12
    1538:	a1170000 	tstge	r7, r0
    153c:	06000008 	streq	r0, [r0], -r8
    1540:	07f60276 			; <UNDEFINED> instruction: 0x07f60276
    1544:	00780000 	rsbseq	r0, r8, r0
    1548:	0002e108 	andeq	lr, r2, r8, lsl #2
    154c:	0007f600 	andeq	pc, r7, r0, lsl #12
    1550:	00640900 	rsbeq	r0, r4, r0, lsl #18
    1554:	001d0000 	andseq	r0, sp, r0
    1558:	00006408 	andeq	r6, r0, r8, lsl #8
    155c:	00080600 	andeq	r0, r8, r0, lsl #12
    1560:	00640900 	rsbeq	r0, r4, r0, lsl #18
    1564:	001d0000 	andseq	r0, sp, r0
    1568:	5706f01b 	smuadpl	r6, fp, r0
    156c:	00082802 	andeq	r2, r8, r2, lsl #16
    1570:	07e41c00 	strbeq	r1, [r4, r0, lsl #24]!
    1574:	6e060000 	cdpvs	0, 0, cr0, cr6, cr0, {0}
    1578:	00069102 	andeq	r9, r6, r2, lsl #2
    157c:	08c41c00 	stmiaeq	r4, {sl, fp, ip}^
    1580:	77060000 	strvc	r0, [r6, -r0]
    1584:	0007c202 	andeq	ip, r7, r2, lsl #4
    1588:	18080000 	stmdane	r8, {}	; <UNPREDICTABLE>
    158c:	38000001 	stmdacc	r0, {r0}
    1590:	09000008 	stmdbeq	r0, {r3}
    1594:	00000064 	andeq	r0, r0, r4, rrx
    1598:	2d1d0018 	ldccs	0, cr0, [sp, #-96]	; 0xffffffa0
    159c:	0d000005 	stceq	0, cr0, [r0, #-20]	; 0xffffffec
    15a0:	00083804 	andeq	r3, r8, r4, lsl #16
    15a4:	084e1e00 	stmdaeq	lr, {r9, sl, fp, ip}^
    15a8:	2f150000 	svccs	0x00150000
    15ac:	00000004 	andeq	r0, r0, r4
    15b0:	0843040d 	stmdaeq	r3, {r0, r2, r3, sl}^
    15b4:	040d0000 	streq	r0, [sp], #-0
    15b8:	00000182 	andeq	r0, r0, r2, lsl #3
    15bc:	0008651e 	andeq	r6, r8, lr, lsl r5
    15c0:	005d1500 	subseq	r1, sp, r0, lsl #10
    15c4:	0d000000 	stceq	0, cr0, [r0, #-0]
    15c8:	00086b04 	andeq	r6, r8, r4, lsl #22
    15cc:	5a040d00 	bpl	1049d4 <__Main_Stack_Size+0x1045d4>
    15d0:	08000008 	stmdaeq	r0, {r3}
    15d4:	000005ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    15d8:	00000881 	andeq	r0, r0, r1, lsl #17
    15dc:	00006409 	andeq	r6, r0, r9, lsl #8
    15e0:	1f000200 	svcne	0x00000200
    15e4:	00000873 	andeq	r0, r0, r3, ror r8
    15e8:	2f02fe06 	svccs	0x0002fe06
    15ec:	1f000004 	svcne	0x00000004
    15f0:	0000086c 	andeq	r0, r0, ip, ror #16
    15f4:	3502ff06 	strcc	pc, [r2, #-3846]	; 0xfffff0fa
    15f8:	08000004 	stmdaeq	r0, {r2}
    15fc:	00000596 	muleq	r0, r6, r5
    1600:	000008a4 	andeq	r0, r0, r4, lsr #17
    1604:	990e0020 	stmdbls	lr, {r5}
    1608:	21000008 	tstcs	r0, r8
    160c:	000005cb 	andeq	r0, r0, fp, asr #11
    1610:	08a41407 	stmiaeq	r4!, {r0, r1, r2, sl, ip}
    1614:	7c210000 	stcvc	0, cr0, [r1], #-0
    1618:	07000007 	streq	r0, [r0, -r7]
    161c:	00005d15 	andeq	r5, r0, r5, lsl sp
    1620:	090f2200 	stmdbeq	pc, {r9, sp}	; <UNPREDICTABLE>
    1624:	14010000 	strne	r0, [r1], #-0
    1628:	00000107 	andeq	r0, r0, r7, lsl #2
    162c:	080009cc 	stmdaeq	r0, {r2, r3, r6, r7, r8, fp}
    1630:	00000040 	andeq	r0, r0, r0, asr #32
    1634:	09279c01 	stmdbeq	r7!, {r0, sl, fp, ip, pc}
    1638:	14230000 	strtne	r0, [r3], #-0
    163c:	01000006 	tsteq	r0, r6
    1640:	00005d14 	andeq	r5, r0, r4, lsl sp
    1644:	0000dd00 	andeq	sp, r0, r0, lsl #26
    1648:	07202100 	streq	r2, [r0, -r0, lsl #2]!
    164c:	16010000 	strne	r0, [r1], -r0
    1650:	00000118 	andeq	r0, r0, r8, lsl r1
    1654:	00067a21 	andeq	r7, r6, r1, lsr #20
    1658:	18170100 	ldmdane	r7, {r8}
    165c:	24000001 	strcs	r0, [r0], #-1
    1660:	0000072c 	andeq	r0, r0, ip, lsr #14
    1664:	01121901 	tsteq	r2, r1, lsl #18
    1668:	03050000 	movweq	r0, #20480	; 0x5000
    166c:	200001f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
    1670:	00059f25 	andeq	r9, r5, r5, lsr #30
    1674:	121a0100 	andsne	r0, sl, #0, 2
    1678:	3c000001 	stccc	0, cr0, [r0], {1}
    167c:	26000001 	strcs	r0, [r0], -r1
    1680:	080009f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, fp}
    1684:	00000927 	andeq	r0, r0, r7, lsr #18
    1688:	05972700 	ldreq	r2, [r7, #1792]	; 0x700
    168c:	05970000 	ldreq	r0, [r7]
    1690:	0f070000 	svceq	0x00070000
    1694:	0002b300 	andeq	fp, r2, r0, lsl #6
    1698:	76000400 	strvc	r0, [r0], -r0, lsl #8
    169c:	04000007 	streq	r0, [r0], #-7
    16a0:	00016701 	andeq	r6, r1, r1, lsl #14
    16a4:	096c0c00 	stmdbeq	ip!, {sl, fp}^
    16a8:	00480000 	subeq	r0, r8, r0
    16ac:	01080000 	mrseq	r0, (UNDEF: 8)
    16b0:	00000000 	andeq	r0, r0, r0
    16b4:	05220000 	streq	r0, [r2, #-0]!
    16b8:	85020000 	strhi	r0, [r2, #-0]
    16bc:	01000009 	tsteq	r0, r9
    16c0:	00003021 	andeq	r3, r0, r1, lsr #32
    16c4:	07040300 	streq	r0, [r4, -r0, lsl #6]
    16c8:	000000e9 	andeq	r0, r0, r9, ror #1
    16cc:	00093902 	andeq	r3, r9, r2, lsl #18
    16d0:	30230100 	eorcc	r0, r3, r0, lsl #2
    16d4:	02000000 	andeq	r0, r0, #0
    16d8:	000009c6 	andeq	r0, r0, r6, asr #19
    16dc:	00302501 	eorseq	r2, r0, r1, lsl #10
    16e0:	40020000 	andmi	r0, r2, r0
    16e4:	01000009 	tsteq	r0, r9
    16e8:	00003028 	andeq	r3, r0, r8, lsr #32
    16ec:	095b0200 	ldmdbeq	fp, {r9}^
    16f0:	2a010000 	bcs	416f8 <__Main_Stack_Size+0x412f8>
    16f4:	00000030 	andeq	r0, r0, r0, lsr r0
    16f8:	00006e04 	andeq	r6, r0, r4, lsl #28
    16fc:	00006e00 	andeq	r6, r0, r0, lsl #28
    1700:	06000500 	streq	r0, [r0], -r0, lsl #10
    1704:	00007404 	andeq	r7, r0, r4, lsl #8
    1708:	9d020700 	stcls	7, cr0, [r2, #-0]
    170c:	01000009 	tsteq	r0, r9
    1710:	0000635f 	andeq	r6, r0, pc, asr r3
    1714:	09f00200 	ldmibeq	r0!, {r9}^
    1718:	61010000 	mrsvs	r0, (UNDEF: 1)
    171c:	00000063 	andeq	r0, r0, r3, rrx
    1720:	00091502 	andeq	r1, r9, r2, lsl #10
    1724:	63630100 	cmnvs	r3, #0, 2
    1728:	02000000 	andeq	r0, r0, #0
    172c:	00000a04 	andeq	r0, r0, r4, lsl #20
    1730:	00636501 	rsbeq	r6, r3, r1, lsl #10
    1734:	b3020000 	movwlt	r0, #8192	; 0x2000
    1738:	01000009 	tsteq	r0, r9
    173c:	00006367 	andeq	r6, r0, r7, ror #6
    1740:	09df0200 	ldmibeq	pc, {r9}^	; <UNPREDICTABLE>
    1744:	69010000 	stmdbvs	r1, {}	; <UNPREDICTABLE>
    1748:	00000063 	andeq	r0, r0, r3, rrx
    174c:	0004a708 	andeq	sl, r4, r8, lsl #14
    1750:	846d0100 	strbthi	r0, [sp], #-256	; 0xffffff00
    1754:	74080001 	strvc	r0, [r8], #-1
    1758:	01000000 	mrseq	r0, (UNDEF: 0)
    175c:	0001999c 	muleq	r1, ip, r9
    1760:	0b5a0900 	bleq	1683b68 <__Main_Stack_Size+0x1683768>
    1764:	89010000 	stmdbhi	r1, {}	; <UNPREDICTABLE>
    1768:	00000199 	muleq	r0, r9, r1
    176c:	09709102 	ldmdbeq	r0!, {r1, r8, ip, pc}^
    1770:	00000b80 	andeq	r0, r0, r0, lsl #23
    1774:	01a08a01 	lsleq	r8, r1, #20
    1778:	91020000 	mrsls	r0, (UNDEF: 2)
    177c:	040f0a74 	streq	r0, [pc], #-2676	; 1784 <__Main_Stack_Size+0x1384>
    1780:	8e010000 	cdphi	0, 0, cr0, cr1, cr0, {0}
    1784:	00000199 	muleq	r0, r9, r1
    1788:	00000162 	andeq	r0, r0, r2, ror #2
    178c:	0001e50b 	andeq	lr, r1, fp, lsl #10
    1790:	00018c00 	andeq	r8, r1, r0, lsl #24
    1794:	00002208 	andeq	r2, r0, r8, lsl #4
    1798:	2d7f0100 	ldfcse	f0, [pc, #-0]	; 17a0 <__Main_Stack_Size+0x13a0>
    179c:	0c000001 	stceq	0, cr0, [r0], {1}
    17a0:	00000207 	andeq	r0, r0, r7, lsl #4
    17a4:	0001fc0c 	andeq	pc, r1, ip, lsl #24
    17a8:	01f10d00 	mvnseq	r0, r0, lsl #26
    17ac:	01750000 	cmneq	r5, r0
    17b0:	8c0e0000 	stchi	0, cr0, [lr], {-0}
    17b4:	22080001 	andcs	r0, r8, #1
    17b8:	0f000000 	svceq	0x00000000
    17bc:	0000024a 	andeq	r0, r0, sl, asr #4
    17c0:	b30b0000 	movwlt	r0, #45056	; 0xb000
    17c4:	ae000001 	cdpge	0, 0, cr0, cr0, cr1, {0}
    17c8:	1e080001 	cdpne	0, 0, cr0, cr8, cr1, {0}
    17cc:	01000000 	mrseq	r0, (UNDEF: 0)
    17d0:	00015a82 	andeq	r5, r1, r2, lsl #21
    17d4:	01ca0c00 	biceq	r0, sl, r0, lsl #24
    17d8:	bf0c0000 	svclt	0x000c0000
    17dc:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
    17e0:	080001ae 	stmdaeq	r0, {r1, r2, r3, r5, r7, r8}
    17e4:	0000001e 	andeq	r0, r0, lr, lsl r0
    17e8:	0002770f 	andeq	r7, r2, pc, lsl #14
    17ec:	10000000 	andne	r0, r0, r0
    17f0:	0800018c 	stmdaeq	r0, {r2, r3, r7, r8}
    17f4:	0000027f 	andeq	r0, r0, pc, ror r2
    17f8:	0001d010 	andeq	sp, r1, r0, lsl r0
    17fc:	00028a08 	andeq	r8, r2, r8, lsl #20
    1800:	01d81100 	bicseq	r1, r8, r0, lsl #2
    1804:	02950800 	addseq	r0, r5, #0, 16
    1808:	01860000 	orreq	r0, r6, r0
    180c:	01120000 	tsteq	r2, r0
    1810:	007d0250 	rsbseq	r0, sp, r0, asr r2
    1814:	02510112 	subseq	r0, r1, #-2147483644	; 0x80000004
    1818:	10007491 	mulne	r0, r1, r4
    181c:	080001e0 	stmdaeq	r0, {r5, r6, r7, r8}
    1820:	000002a0 	andeq	r0, r0, r0, lsr #5
    1824:	0001e410 	andeq	lr, r1, r0, lsl r4
    1828:	0002ab08 	andeq	sl, r2, r8, lsl #22
    182c:	04130000 	ldreq	r0, [r3], #-0
    1830:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    1834:	a6040600 	strge	r0, [r4], -r0, lsl #12
    1838:	06000001 	streq	r0, [r0], -r1
    183c:	0001ac04 	andeq	sl, r1, r4, lsl #24
    1840:	06010300 	streq	r0, [r1], -r0, lsl #6
    1844:	00000095 	muleq	r0, r5, r0
    1848:	00092814 	andeq	r2, r9, r4, lsl r8
    184c:	03540100 	cmpeq	r4, #0, 2
    1850:	000001df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    1854:	00094e15 	andeq	r4, r9, r5, lsl lr
    1858:	df540100 	svcle	0x00540100
    185c:	15000001 	strne	r0, [r0, #-1]
    1860:	0000098d 	andeq	r0, r0, sp, lsl #19
    1864:	01df5401 	bicseq	r5, pc, r1, lsl #8
    1868:	70160000 	andsvc	r0, r6, r0
    186c:	df580100 	svcle	0x00580100
    1870:	00000001 	andeq	r0, r0, r1
    1874:	00300406 	eorseq	r0, r0, r6, lsl #8
    1878:	cd140000 	ldcgt	0, cr0, [r4, #-0]
    187c:	01000009 	tsteq	r0, r9
    1880:	021c0348 	andseq	r0, ip, #72, 6	; 0x20000001
    1884:	67150000 	ldrvs	r0, [r5, -r0]
    1888:	01000009 	tsteq	r0, r9
    188c:	0001df48 	andeq	sp, r1, r8, asr #30
    1890:	094e1500 	stmdbeq	lr, {r8, sl, ip}^
    1894:	48010000 	stmdami	r1, {}	; <UNPREDICTABLE>
    1898:	000001df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    189c:	00098d15 	andeq	r8, r9, r5, lsl sp
    18a0:	df490100 	svcle	0x00490100
    18a4:	16000001 	strne	r0, [r0], -r1
    18a8:	4d010070 	stcmi	0, cr0, [r1, #-448]	; 0xfffffe40
    18ac:	000001df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    18b0:	01e51700 	mvneq	r1, r0, lsl #14
    18b4:	00000000 	andeq	r0, r0, r0
    18b8:	00200000 	eoreq	r0, r0, r0
    18bc:	9c010000 	stcls	0, cr0, [r1], {-0}
    18c0:	00000254 	andeq	r0, r0, r4, asr r2
    18c4:	0001f10d 	andeq	pc, r1, sp, lsl #2
    18c8:	0001a000 	andeq	sl, r1, r0
    18cc:	01fc0d00 	mvnseq	r0, r0, lsl #26
    18d0:	01cb0000 	biceq	r0, fp, r0
    18d4:	070d0000 	streq	r0, [sp, -r0]
    18d8:	ec000002 	stc	0, cr0, [r0], {2}
    18dc:	18000001 	stmdane	r0, {r0}
    18e0:	00000212 	andeq	r0, r0, r2, lsl r2
    18e4:	0000020d 	andeq	r0, r0, sp, lsl #4
    18e8:	01b31700 			; <UNDEFINED> instruction: 0x01b31700
    18ec:	00000000 	andeq	r0, r0, r0
    18f0:	00100000 	andseq	r0, r0, r0
    18f4:	9c010000 	stcls	0, cr0, [r1], {-0}
    18f8:	0000027f 	andeq	r0, r0, pc, ror r2
    18fc:	0001bf0d 	andeq	fp, r1, sp, lsl #30
    1900:	00022e00 	andeq	r2, r2, r0, lsl #28
    1904:	01ca1900 	biceq	r1, sl, r0, lsl #18
    1908:	51010000 	mrspl	r0, (UNDEF: 1)
    190c:	0001d51a 	andeq	sp, r1, sl, lsl r5
    1910:	00500100 	subseq	r0, r0, r0, lsl #2
    1914:	00045d1b 	andeq	r5, r4, fp, lsl sp
    1918:	00045d00 	andeq	r5, r4, r0, lsl #26
    191c:	1b410100 	blne	1041d24 <__Main_Stack_Size+0x1041924>
    1920:	00000447 	andeq	r0, r0, r7, asr #8
    1924:	00000447 	andeq	r0, r0, r7, asr #8
    1928:	151b4201 	ldrne	r4, [fp, #-513]	; 0xfffffdff
    192c:	1500000a 	strne	r0, [r0, #-10]
    1930:	0100000a 	tsteq	r0, sl
    1934:	09981b2d 	ldmibeq	r8, {r0, r2, r3, r5, r8, r9, fp, ip}
    1938:	09980000 	ldmibeq	r8, {}	; <UNPREDICTABLE>
    193c:	33010000 	movwcc	r0, #4096	; 0x1000
    1940:	0004251b 	andeq	r2, r4, fp, lsl r5
    1944:	00042500 	andeq	r2, r4, r0, lsl #10
    1948:	00370100 	eorseq	r0, r7, r0, lsl #2
    194c:	00001126 	andeq	r1, r0, r6, lsr #2
    1950:	08ca0004 	stmiaeq	sl, {r2}^
    1954:	01040000 	mrseq	r0, (UNDEF: 4)
    1958:	00000167 	andeq	r0, r0, r7, ror #2
    195c:	000c370c 	andeq	r3, ip, ip, lsl #14
    1960:	00004800 	andeq	r4, r0, r0, lsl #16
    1964:	00012800 	andeq	r2, r1, r0, lsl #16
    1968:	00000000 	andeq	r0, r0, r0
    196c:	0005a800 	andeq	sl, r5, r0, lsl #16
    1970:	05990200 	ldreq	r0, [r9, #512]	; 0x200
    1974:	03010000 	movweq	r0, #4096	; 0x1000
    1978:	00000036 	andeq	r0, r0, r6, lsr r0
    197c:	14bc0305 	ldrtne	r0, [ip], #773	; 0x305
    1980:	04032000 	streq	r2, [r3], #-0
    1984:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    1988:	0b900400 	bleq	fe402990 <_estack+0xde3fd990>
    198c:	d8020000 	stmdale	r2, {}	; <UNPREDICTABLE>
    1990:	00000048 	andeq	r0, r0, r8, asr #32
    1994:	e9070405 	stmdb	r7, {r0, r2, sl}
    1998:	05000000 	streq	r0, [r0, #-0]
    199c:	012a0508 			; <UNDEFINED> instruction: 0x012a0508
    19a0:	08050000 	stmdaeq	r5, {}	; <UNPREDICTABLE>
    19a4:	0006e704 	andeq	lr, r6, r4, lsl #14
    19a8:	06010500 	streq	r0, [r1], -r0, lsl #10
    19ac:	0000008e 	andeq	r0, r0, lr, lsl #1
    19b0:	8c080105 	stfhis	f0, [r8], {5}
    19b4:	05000000 	streq	r0, [r0, #-0]
    19b8:	02130502 	andseq	r0, r3, #8388608	; 0x800000
    19bc:	02050000 	andeq	r0, r5, #0
    19c0:	0000a807 	andeq	sl, r0, r7, lsl #16
    19c4:	05040500 	streq	r0, [r4, #-1280]	; 0xfffffb00
    19c8:	0000012f 	andeq	r0, r0, pc, lsr #2
    19cc:	000ae104 	andeq	lr, sl, r4, lsl #2
    19d0:	8b4f0300 	blhi	13c25d8 <__Main_Stack_Size+0x13c21d8>
    19d4:	05000000 	streq	r0, [r0, #-0]
    19d8:	00e40704 	rsceq	r0, r4, r4, lsl #14
    19dc:	08050000 	stmdaeq	r5, {}	; <UNPREDICTABLE>
    19e0:	0000df07 	andeq	sp, r0, r7, lsl #30
    19e4:	06d50400 	ldrbeq	r0, [r5], r0, lsl #8
    19e8:	0c040000 	stceq	0, cr0, [r4], {-0}
    19ec:	00000036 	andeq	r0, r0, r6, lsr r0
    19f0:	000aa904 	andeq	sl, sl, r4, lsl #18
    19f4:	791c0500 	ldmdbvc	ip, {r8, sl}
    19f8:	04000000 	streq	r0, [r0], #-0
    19fc:	00000b8b 	andeq	r0, r0, fp, lsl #23
    1a00:	00792005 	rsbseq	r2, r9, r5
    1a04:	28040000 	stmdacs	r4, {}	; <UNPREDICTABLE>
    1a08:	0500000a 	streq	r0, [r0, #-10]
    1a0c:	0000792c 	andeq	r7, r0, ip, lsr #18
    1a10:	0bd80400 	bleq	ff602a18 <_estack+0xdf5fda18>
    1a14:	32050000 	andcc	r0, r5, #0
    1a18:	00000036 	andeq	r0, r0, r6, lsr r0
    1a1c:	000af404 	andeq	pc, sl, r4, lsl #8
    1a20:	6b360500 	blvs	d82e28 <__Main_Stack_Size+0xd82a28>
    1a24:	04000000 	streq	r0, [r0], #-0
    1a28:	00000c1c 	andeq	r0, r0, ip, lsl ip
    1a2c:	00723a05 	rsbseq	r3, r2, r5, lsl #20
    1a30:	2f040000 	svccs	0x00040000
    1a34:	0500000a 	streq	r0, [r0, #-10]
    1a38:	0000723d 	andeq	r7, r0, sp, lsr r2
    1a3c:	0bf40400 	bleq	ffd02a44 <_estack+0xdfcfda44>
    1a40:	49050000 	stmdbmi	r5, {}	; <UNPREDICTABLE>
    1a44:	00000072 	andeq	r0, r0, r2, ror r0
    1a48:	000a9a04 	andeq	r9, sl, r4, lsl #20
    1a4c:	80580500 	subshi	r0, r8, r0, lsl #10
    1a50:	04000000 	streq	r0, [r0], #-0
    1a54:	00000a27 	andeq	r0, r0, r7, lsr #20
    1a58:	00ba6405 	adcseq	r6, sl, r5, lsl #8
    1a5c:	0f040000 	svceq	0x00040000
    1a60:	05000008 	streq	r0, [r0, #-8]
    1a64:	00007972 	andeq	r7, r0, r2, ror r9
    1a68:	06b60600 	ldrteq	r0, [r6], r0, lsl #12
    1a6c:	65020000 	strvs	r0, [r2, #-0]
    1a70:	00004801 	andeq	r4, r0, r1, lsl #16
    1a74:	05040700 	streq	r0, [r4, #-1792]	; 0xfffff900
    1a78:	000148a6 	andeq	r4, r1, r6, lsr #17
    1a7c:	06b00800 	ldrteq	r0, [r0], r0, lsl #16
    1a80:	a8050000 	stmdage	r5, {}	; <UNPREDICTABLE>
    1a84:	0000011d 	andeq	r0, r0, sp, lsl r1
    1a88:	00065608 	andeq	r5, r6, r8, lsl #12
    1a8c:	48a90500 	stmiami	r9!, {r8, sl}
    1a90:	00000001 	andeq	r0, r0, r1
    1a94:	00006409 	andeq	r6, r0, r9, lsl #8
    1a98:	00015800 	andeq	r5, r1, r0, lsl #16
    1a9c:	00480a00 	subeq	r0, r8, r0, lsl #20
    1aa0:	00030000 	andeq	r0, r3, r0
    1aa4:	a305080b 	movwge	r0, #22539	; 0x580b
    1aa8:	00000179 	andeq	r0, r0, r9, ror r1
    1aac:	0007f10c 	andeq	pc, r7, ip, lsl #2
    1ab0:	36a50500 	strtcc	r0, [r5], r0, lsl #10
    1ab4:	00000000 	andeq	r0, r0, r0
    1ab8:	0007f90c 	andeq	pc, r7, ip, lsl #18
    1abc:	29aa0500 	stmibcs	sl!, {r8, sl}
    1ac0:	04000001 	streq	r0, [r0], #-1
    1ac4:	07690400 	strbeq	r0, [r9, -r0, lsl #8]!
    1ac8:	ab050000 	blge	141ad0 <__Main_Stack_Size+0x1416d0>
    1acc:	00000158 	andeq	r0, r0, r8, asr r1
    1ad0:	00061f04 	andeq	r1, r6, r4, lsl #30
    1ad4:	99af0500 	stmibls	pc!, {r8, sl}	; <UNPREDICTABLE>
    1ad8:	0d000000 	stceq	0, cr0, [r0, #-0]
    1adc:	0c8c0404 	cfstrseq	mvf0, [ip], {4}
    1ae0:	cb050000 	blgt	141ae8 <__Main_Stack_Size+0x1416e8>
    1ae4:	00000072 	andeq	r0, r0, r2, ror r0
    1ae8:	000b1004 	andeq	r1, fp, r4
    1aec:	79cc0500 	stmibvc	ip, {r8, sl}^
    1af0:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    1af4:	0001ad04 	andeq	sl, r1, r4, lsl #26
    1af8:	06010500 	streq	r0, [r1], -r0, lsl #10
    1afc:	00000095 	muleq	r0, r5, r0
    1b00:	0001ad0f 	andeq	sl, r1, pc, lsl #26
    1b04:	08570400 	ldmdaeq	r7, {sl}^
    1b08:	16060000 	strne	r0, [r6], -r0
    1b0c:	0000008b 	andeq	r0, r0, fp, lsl #1
    1b10:	00063010 	andeq	r3, r6, r0, lsl r0
    1b14:	2f061800 	svccs	0x00061800
    1b18:	00000217 	andeq	r0, r0, r7, lsl r2
    1b1c:	0007940c 	andeq	r9, r7, ip, lsl #8
    1b20:	17310600 	ldrne	r0, [r1, -r0, lsl #12]!
    1b24:	00000002 	andeq	r0, r0, r2
    1b28:	006b5f11 	rsbeq	r5, fp, r1, lsl pc
    1b2c:	00363206 	eorseq	r3, r6, r6, lsl #4
    1b30:	0c040000 	stceq	0, cr0, [r4], {-0}
    1b34:	000007dc 	ldrdeq	r0, [r0], -ip
    1b38:	00363206 	eorseq	r3, r6, r6, lsl #4
    1b3c:	0c080000 	stceq	0, cr0, [r8], {-0}
    1b40:	00000619 	andeq	r0, r0, r9, lsl r6
    1b44:	00363206 	eorseq	r3, r6, r6, lsl #4
    1b48:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    1b4c:	0000088c 	andeq	r0, r0, ip, lsl #17
    1b50:	00363206 	eorseq	r3, r6, r6, lsl #4
    1b54:	11100000 	tstne	r0, r0
    1b58:	0600785f 			; <UNDEFINED> instruction: 0x0600785f
    1b5c:	00021d33 	andeq	r1, r2, r3, lsr sp
    1b60:	0e001400 	cfcpyseq	mvf1, mvf0
    1b64:	0001c404 	andeq	ip, r1, r4, lsl #8
    1b68:	01b90900 			; <UNDEFINED> instruction: 0x01b90900
    1b6c:	022d0000 	eoreq	r0, sp, #0
    1b70:	480a0000 	stmdami	sl, {}	; <UNPREDICTABLE>
    1b74:	00000000 	andeq	r0, r0, r0
    1b78:	06511000 	ldrbeq	r1, [r1], -r0
    1b7c:	06240000 	strteq	r0, [r4], -r0
    1b80:	0002a637 	andeq	sl, r2, r7, lsr r6
    1b84:	05550c00 	ldrbeq	r0, [r5, #-3072]	; 0xfffff400
    1b88:	39060000 	stmdbcc	r6, {}	; <UNPREDICTABLE>
    1b8c:	00000036 	andeq	r0, r0, r6, lsr r0
    1b90:	08170c00 	ldmdaeq	r7, {sl, fp}
    1b94:	3a060000 	bcc	181b9c <__Main_Stack_Size+0x18179c>
    1b98:	00000036 	andeq	r0, r0, r6, lsr r0
    1b9c:	056a0c04 	strbeq	r0, [sl, #-3076]!	; 0xfffff3fc
    1ba0:	3b060000 	blcc	181ba8 <__Main_Stack_Size+0x1817a8>
    1ba4:	00000036 	andeq	r0, r0, r6, lsr r0
    1ba8:	09050c08 	stmdbeq	r5, {r3, sl, fp}
    1bac:	3c060000 	stccc	0, cr0, [r6], {-0}
    1bb0:	00000036 	andeq	r0, r0, r6, lsr r0
    1bb4:	06fa0c0c 	ldrbteq	r0, [sl], ip, lsl #24
    1bb8:	3d060000 	stccc	0, cr0, [r6, #-0]
    1bbc:	00000036 	andeq	r0, r0, r6, lsr r0
    1bc0:	06cb0c10 			; <UNDEFINED> instruction: 0x06cb0c10
    1bc4:	3e060000 	cdpcc	0, 0, cr0, cr6, cr0, {0}
    1bc8:	00000036 	andeq	r0, r0, r6, lsr r0
    1bcc:	08910c14 	ldmeq	r1, {r2, r4, sl, fp}
    1bd0:	3f060000 	svccc	0x00060000
    1bd4:	00000036 	andeq	r0, r0, r6, lsr r0
    1bd8:	074b0c18 	smlaldeq	r0, fp, r8, ip
    1bdc:	40060000 	andmi	r0, r6, r0
    1be0:	00000036 	andeq	r0, r0, r6, lsr r0
    1be4:	08cc0c1c 	stmiaeq	ip, {r2, r3, r4, sl, fp}^
    1be8:	41060000 	mrsmi	r0, (UNDEF: 6)
    1bec:	00000036 	andeq	r0, r0, r6, lsr r0
    1bf0:	79120020 	ldmdbvc	r2, {r5}
    1bf4:	08000005 	stmdaeq	r0, {r0, r2}
    1bf8:	e64a0601 	strb	r0, [sl], -r1, lsl #12
    1bfc:	0c000002 	stceq	0, cr0, [r0], {2}
    1c00:	00000607 	andeq	r0, r0, r7, lsl #12
    1c04:	02e64b06 	rsceq	r4, r6, #6144	; 0x1800
    1c08:	0c000000 	stceq	0, cr0, [r0], {-0}
    1c0c:	000004e5 	andeq	r0, r0, r5, ror #9
    1c10:	02e64c06 	rsceq	r4, r6, #1536	; 0x600
    1c14:	13800000 	orrne	r0, r0, #0
    1c18:	00000849 	andeq	r0, r0, r9, asr #16
    1c1c:	01b94e06 			; <UNDEFINED> instruction: 0x01b94e06
    1c20:	01000000 	mrseq	r0, (UNDEF: 0)
    1c24:	0005bc13 	andeq	fp, r5, r3, lsl ip
    1c28:	b9510600 	ldmdblt	r1, {r9, sl}^
    1c2c:	04000001 	streq	r0, [r0], #-1
    1c30:	8f090001 	svchi	0x00090001
    1c34:	f6000001 			; <UNDEFINED> instruction: 0xf6000001
    1c38:	0a000002 	beq	1c48 <__Main_Stack_Size+0x1848>
    1c3c:	00000048 	andeq	r0, r0, r8, asr #32
    1c40:	0312001f 	tsteq	r2, #31
    1c44:	90000007 	andls	r0, r0, r7
    1c48:	345d0601 	ldrbcc	r0, [sp], #-1537	; 0xfffff9ff
    1c4c:	0c000003 	stceq	0, cr0, [r0], {3}
    1c50:	00000794 	muleq	r0, r4, r7
    1c54:	03345e06 	teqeq	r4, #6, 28	; 0x60
    1c58:	0c000000 	stceq	0, cr0, [r0], {-0}
    1c5c:	000007ac 	andeq	r0, r0, ip, lsr #15
    1c60:	00365f06 	eorseq	r5, r6, r6, lsl #30
    1c64:	0c040000 	stceq	0, cr0, [r4], {-0}
    1c68:	0000060f 	andeq	r0, r0, pc, lsl #12
    1c6c:	033a6106 	teqeq	sl, #-2147483647	; 0x80000001
    1c70:	0c080000 	stceq	0, cr0, [r8], {-0}
    1c74:	00000579 	andeq	r0, r0, r9, ror r5
    1c78:	02a66206 	adceq	r6, r6, #1610612736	; 0x60000000
    1c7c:	00880000 	addeq	r0, r8, r0
    1c80:	02f6040e 	rscseq	r0, r6, #234881024	; 0xe000000
    1c84:	4a090000 	bmi	241c8c <__Main_Stack_Size+0x24188c>
    1c88:	4a000003 	bmi	1c9c <__Main_Stack_Size+0x189c>
    1c8c:	0a000003 	beq	1ca0 <__Main_Stack_Size+0x18a0>
    1c90:	00000048 	andeq	r0, r0, r8, asr #32
    1c94:	040e001f 	streq	r0, [lr], #-31	; 0xffffffe1
    1c98:	00000350 	andeq	r0, r0, r0, asr r3
    1c9c:	07551014 	smmlaeq	r5, r4, r0, r1
    1ca0:	06080000 	streq	r0, [r8], -r0
    1ca4:	00037675 	andeq	r7, r3, r5, ror r6
    1ca8:	05640c00 	strbeq	r0, [r4, #-3072]!	; 0xfffff400
    1cac:	76060000 	strvc	r0, [r6], -r0
    1cb0:	00000376 	andeq	r0, r0, r6, ror r3
    1cb4:	0b480c00 	bleq	1204cbc <__Main_Stack_Size+0x12048bc>
    1cb8:	77060000 	strvc	r0, [r6, -r0]
    1cbc:	00000036 	andeq	r0, r0, r6, lsr r0
    1cc0:	040e0004 	streq	r0, [lr], #-4
    1cc4:	00000064 	andeq	r0, r0, r4, rrx
    1cc8:	00077410 	andeq	r7, r7, r0, lsl r4
    1ccc:	b5066800 	strlt	r6, [r6, #-2048]	; 0xfffff800
    1cd0:	000004a6 	andeq	r0, r0, r6, lsr #9
    1cd4:	00705f11 	rsbseq	r5, r0, r1, lsl pc
    1cd8:	0376b606 	cmneq	r6, #6291456	; 0x600000
    1cdc:	11000000 	mrsne	r0, (UNDEF: 0)
    1ce0:	0600725f 			; <UNDEFINED> instruction: 0x0600725f
    1ce4:	000036b7 			; <UNDEFINED> instruction: 0x000036b7
    1ce8:	5f110400 	svcpl	0x00110400
    1cec:	b8060077 	stmdalt	r6, {r0, r1, r2, r4, r5, r6}
    1cf0:	00000036 	andeq	r0, r0, r6, lsr r0
    1cf4:	05b50c08 	ldreq	r0, [r5, #3080]!	; 0xc08
    1cf8:	b9060000 	stmdblt	r6, {}	; <UNPREDICTABLE>
    1cfc:	0000006b 	andeq	r0, r0, fp, rrx
    1d00:	066d0c0c 	strbteq	r0, [sp], -ip, lsl #24
    1d04:	ba060000 	blt	181d0c <__Main_Stack_Size+0x18190c>
    1d08:	0000006b 	andeq	r0, r0, fp, rrx
    1d0c:	625f110e 	subsvs	r1, pc, #-2147483645	; 0x80000003
    1d10:	bb060066 	bllt	181eb0 <__Main_Stack_Size+0x181ab0>
    1d14:	00000351 	andeq	r0, r0, r1, asr r3
    1d18:	05240c10 	streq	r0, [r4, #-3088]!	; 0xfffff3f0
    1d1c:	bc060000 	stclt	0, cr0, [r6], {-0}
    1d20:	00000036 	andeq	r0, r0, r6, lsr r0
    1d24:	05870c18 	streq	r0, [r7, #3096]	; 0xc18
    1d28:	c3060000 	movwgt	r0, #24576	; 0x6000
    1d2c:	0000018f 	andeq	r0, r0, pc, lsl #3
    1d30:	0e730c1c 	mrceq	12, 3, r0, cr3, cr12, {0}
    1d34:	c5060000 	strgt	r0, [r6, #-0]
    1d38:	00000601 	andeq	r0, r0, r1, lsl #12
    1d3c:	14070c20 	strne	r0, [r7], #-3104	; 0xfffff3e0
    1d40:	c7060000 	strgt	r0, [r6, -r0]
    1d44:	00000630 	andeq	r0, r0, r0, lsr r6
    1d48:	08010c24 	stmdaeq	r1, {r2, r5, sl, fp}
    1d4c:	ca060000 	bgt	181d54 <__Main_Stack_Size+0x181954>
    1d50:	00000654 	andeq	r0, r0, r4, asr r6
    1d54:	08e60c28 	stmiaeq	r6!, {r3, r5, sl, fp}^
    1d58:	cb060000 	blgt	181d60 <__Main_Stack_Size+0x181960>
    1d5c:	0000066e 	andeq	r0, r0, lr, ror #12
    1d60:	755f112c 	ldrbvc	r1, [pc, #-300]	; 1c3c <__Main_Stack_Size+0x183c>
    1d64:	ce060062 	cdpgt	0, 0, cr0, cr6, cr2, {3}
    1d68:	00000351 	andeq	r0, r0, r1, asr r3
    1d6c:	755f1130 	ldrbvc	r1, [pc, #-304]	; 1c44 <__Main_Stack_Size+0x1844>
    1d70:	cf060070 	svcgt	0x00060070
    1d74:	00000376 	andeq	r0, r0, r6, ror r3
    1d78:	755f1138 	ldrbvc	r1, [pc, #-312]	; 1c48 <__Main_Stack_Size+0x1848>
    1d7c:	d0060072 	andle	r0, r6, r2, ror r0
    1d80:	00000036 	andeq	r0, r0, r6, lsr r0
    1d84:	055e0c3c 	ldrbeq	r0, [lr, #-3132]	; 0xfffff3c4
    1d88:	d3060000 	movwle	r0, #24576	; 0x6000
    1d8c:	00000674 	andeq	r0, r0, r4, ror r6
    1d90:	08be0c40 	ldmeq	lr!, {r6, sl, fp}
    1d94:	d4060000 	strle	r0, [r6], #-0
    1d98:	00000684 	andeq	r0, r0, r4, lsl #13
    1d9c:	6c5f1143 	ldfvse	f1, [pc], {67}	; 0x43
    1da0:	d7060062 	strle	r0, [r6, -r2, rrx]
    1da4:	00000351 	andeq	r0, r0, r1, asr r3
    1da8:	0be20c44 	bleq	ff884ec0 <_estack+0xdf87fec0>
    1dac:	da060000 	ble	181db4 <__Main_Stack_Size+0x1819b4>
    1db0:	00000036 	andeq	r0, r0, r6, lsr r0
    1db4:	05e00c4c 	strbeq	r0, [r0, #3148]!	; 0xc4c
    1db8:	db060000 	blle	181dc0 <__Main_Stack_Size+0x1819c0>
    1dbc:	000000ba 	strheq	r0, [r0], -sl
    1dc0:	09d90c50 	ldmibeq	r9, {r4, r6, sl, fp}^
    1dc4:	de060000 	cdple	0, 0, cr0, cr6, cr0, {0}
    1dc8:	000004c4 	andeq	r0, r0, r4, asr #9
    1dcc:	06bd0c54 	ssateq	r0, #30, r4, asr #24
    1dd0:	e2060000 	and	r0, r6, #0
    1dd4:	00000184 	andeq	r0, r0, r4, lsl #3
    1dd8:	07860c58 			; <UNDEFINED> instruction: 0x07860c58
    1ddc:	e4060000 	str	r0, [r6], #-0
    1de0:	00000179 	andeq	r0, r0, r9, ror r1
    1de4:	06c30c5c 			; <UNDEFINED> instruction: 0x06c30c5c
    1de8:	e5060000 	str	r0, [r6, #-0]
    1dec:	00000036 	andeq	r0, r0, r6, lsr r0
    1df0:	36150064 	ldrcc	r0, [r5], -r4, rrx
    1df4:	c4000000 	strgt	r0, [r0], #-0
    1df8:	16000004 	strne	r0, [r0], -r4
    1dfc:	000004c4 	andeq	r0, r0, r4, asr #9
    1e00:	00018f16 	andeq	r8, r1, r6, lsl pc
    1e04:	01a71600 			; <UNDEFINED> instruction: 0x01a71600
    1e08:	36160000 	ldrcc	r0, [r6], -r0
    1e0c:	00000000 	andeq	r0, r0, r0
    1e10:	04cf040e 	strbeq	r0, [pc], #1038	; 1e18 <__Main_Stack_Size+0x1a18>
    1e14:	c40f0000 	strgt	r0, [pc], #-0	; 1e1c <__Main_Stack_Size+0x1a1c>
    1e18:	17000004 	strne	r0, [r0, -r4]
    1e1c:	000007e4 	andeq	r0, r0, r4, ror #15
    1e20:	39060428 	stmdbcc	r6, {r3, r5, sl}
    1e24:	00060102 	andeq	r0, r6, r2, lsl #2
    1e28:	05981800 	ldreq	r1, [r8, #2048]	; 0x800
    1e2c:	3b060000 	blcc	181e34 <__Main_Stack_Size+0x181a34>
    1e30:	00003602 	andeq	r3, r0, r2, lsl #12
    1e34:	c4180000 	ldrgt	r0, [r8], #-0
    1e38:	06000005 	streq	r0, [r0], -r5
    1e3c:	06db0240 	ldrbeq	r0, [fp], r0, asr #4
    1e40:	18040000 	stmdane	r4, {}	; <UNPREDICTABLE>
    1e44:	0000065d 	andeq	r0, r0, sp, asr r6
    1e48:	db024006 	blle	91e68 <__Main_Stack_Size+0x91a68>
    1e4c:	08000006 	stmdaeq	r0, {r1, r2}
    1e50:	00062818 	andeq	r2, r6, r8, lsl r8
    1e54:	02400600 	subeq	r0, r0, #0, 12
    1e58:	000006db 	ldrdeq	r0, [r0], -fp
    1e5c:	07a7180c 	streq	r1, [r7, ip, lsl #16]!
    1e60:	42060000 	andmi	r0, r6, #0
    1e64:	00003602 	andeq	r3, r0, r2, lsl #12
    1e68:	f9181000 			; <UNDEFINED> instruction: 0xf9181000
    1e6c:	06000004 	streq	r0, [r0], -r4
    1e70:	08bd0243 	popeq	{r0, r1, r6, r9}
    1e74:	18140000 	ldmdane	r4, {}	; <UNPREDICTABLE>
    1e78:	000007c3 	andeq	r0, r0, r3, asr #15
    1e7c:	36024606 	strcc	r4, [r2], -r6, lsl #12
    1e80:	30000000 	andcc	r0, r0, r0
    1e84:	0007b118 	andeq	fp, r7, r8, lsl r1
    1e88:	02470600 	subeq	r0, r7, #0, 12
    1e8c:	000008d2 	ldrdeq	r0, [r0], -r2
    1e90:	070b1834 	smladxeq	fp, r4, r8, r1
    1e94:	49060000 	stmdbmi	r6, {}	; <UNPREDICTABLE>
    1e98:	00003602 	andeq	r3, r0, r2, lsl #12
    1e9c:	b9183800 	ldmdblt	r8, {fp, ip, sp}
    1ea0:	06000007 	streq	r0, [r0], -r7
    1ea4:	08e3024b 	stmiaeq	r3!, {r0, r1, r3, r6, r9}^
    1ea8:	183c0000 	ldmdane	ip!, {}	; <UNPREDICTABLE>
    1eac:	000006a8 	andeq	r0, r0, r8, lsr #13
    1eb0:	17024e06 	strne	r4, [r2, -r6, lsl #28]
    1eb4:	40000002 	andmi	r0, r0, r2
    1eb8:	00064718 	andeq	r4, r6, r8, lsl r7
    1ebc:	024f0600 	subeq	r0, pc, #0, 12
    1ec0:	00000036 	andeq	r0, r0, r6, lsr r0
    1ec4:	09001844 	stmdbeq	r0, {r2, r6, fp, ip}
    1ec8:	50060000 	andpl	r0, r6, r0
    1ecc:	00021702 	andeq	r1, r2, r2, lsl #14
    1ed0:	16184800 	ldrne	r4, [r8], -r0, lsl #16
    1ed4:	06000007 	streq	r0, [r0], -r7
    1ed8:	08e90251 	stmiaeq	r9!, {r0, r4, r6, r9}^
    1edc:	184c0000 	stmdane	ip, {}^	; <UNPREDICTABLE>
    1ee0:	00000665 	andeq	r0, r0, r5, ror #12
    1ee4:	36025406 	strcc	r5, [r2], -r6, lsl #8
    1ee8:	50000000 	andpl	r0, r0, r0
    1eec:	0005d818 	andeq	sp, r5, r8, lsl r8
    1ef0:	02550600 	subseq	r0, r5, #0, 12
    1ef4:	000001a7 	andeq	r0, r0, r7, lsr #3
    1ef8:	073d1854 			; <UNDEFINED> instruction: 0x073d1854
    1efc:	78060000 	stmdavc	r6, {}	; <UNPREDICTABLE>
    1f00:	00089b02 	andeq	r9, r8, r2, lsl #22
    1f04:	03195800 	tsteq	r9, #0, 16
    1f08:	06000007 	streq	r0, [r0], -r7
    1f0c:	0334027c 	teqeq	r4, #124, 4	; 0xc0000007
    1f10:	01480000 	mrseq	r0, (UNDEF: 72)
    1f14:	00068619 	andeq	r8, r6, r9, lsl r6
    1f18:	027d0600 	rsbseq	r0, sp, #0, 12
    1f1c:	000002f6 	strdeq	r0, [r0], -r6
    1f20:	b419014c 	ldrlt	r0, [r9], #-332	; 0xfffffeb4
    1f24:	06000008 	streq	r0, [r0], -r8
    1f28:	08fa0281 	ldmeq	sl!, {r0, r7, r9}^
    1f2c:	02dc0000 	sbcseq	r0, ip, #0
    1f30:	00058f19 	andeq	r8, r5, r9, lsl pc
    1f34:	02860600 	addeq	r0, r6, #0, 12
    1f38:	000006a0 	andeq	r0, r0, r0, lsr #13
    1f3c:	741902e0 	ldrvc	r0, [r9], #-736	; 0xfffffd20
    1f40:	06000005 	streq	r0, [r0], -r5
    1f44:	09060287 	stmdbeq	r6, {r0, r1, r2, r7, r9}
    1f48:	02ec0000 	rsceq	r0, ip, #0
    1f4c:	a6040e00 	strge	r0, [r4], -r0, lsl #28
    1f50:	15000004 	strne	r0, [r0, #-4]
    1f54:	00000036 	andeq	r0, r0, r6, lsr r0
    1f58:	00000625 	andeq	r0, r0, r5, lsr #12
    1f5c:	0004c416 	andeq	ip, r4, r6, lsl r4
    1f60:	018f1600 	orreq	r1, pc, r0, lsl #12
    1f64:	25160000 	ldrcs	r0, [r6, #-0]
    1f68:	16000006 	strne	r0, [r0], -r6
    1f6c:	00000036 	andeq	r0, r0, r6, lsr r0
    1f70:	b4040e00 	strlt	r0, [r4], #-3584	; 0xfffff200
    1f74:	0f000001 	svceq	0x00000001
    1f78:	00000625 	andeq	r0, r0, r5, lsr #12
    1f7c:	0607040e 	streq	r0, [r7], -lr, lsl #8
    1f80:	12150000 	andsne	r0, r5, #0
    1f84:	54000001 	strpl	r0, [r0], #-1
    1f88:	16000006 	strne	r0, [r0], -r6
    1f8c:	000004c4 	andeq	r0, r0, r4, asr #9
    1f90:	00018f16 	andeq	r8, r1, r6, lsl pc
    1f94:	01121600 	tsteq	r2, r0, lsl #12
    1f98:	36160000 	ldrcc	r0, [r6], -r0
    1f9c:	00000000 	andeq	r0, r0, r0
    1fa0:	0636040e 	ldrteq	r0, [r6], -lr, lsl #8
    1fa4:	36150000 	ldrcc	r0, [r5], -r0
    1fa8:	6e000000 	cdpvs	0, 0, cr0, cr0, cr0, {0}
    1fac:	16000006 	strne	r0, [r0], -r6
    1fb0:	000004c4 	andeq	r0, r0, r4, asr #9
    1fb4:	00018f16 	andeq	r8, r1, r6, lsl pc
    1fb8:	040e0000 	streq	r0, [lr], #-0
    1fbc:	0000065a 	andeq	r0, r0, sl, asr r6
    1fc0:	00006409 	andeq	r6, r0, r9, lsl #8
    1fc4:	00068400 	andeq	r8, r6, r0, lsl #8
    1fc8:	00480a00 	subeq	r0, r8, r0, lsl #20
    1fcc:	00020000 	andeq	r0, r2, r0
    1fd0:	00006409 	andeq	r6, r0, r9, lsl #8
    1fd4:	00069400 	andeq	r9, r6, r0, lsl #8
    1fd8:	00480a00 	subeq	r0, r8, r0, lsl #20
    1fdc:	00000000 	andeq	r0, r0, r0
    1fe0:	00076206 	andeq	r6, r7, r6, lsl #4
    1fe4:	011f0600 	tsteq	pc, r0, lsl #12
    1fe8:	0000037c 	andeq	r0, r0, ip, ror r3
    1fec:	00089b1a 	andeq	r9, r8, sl, lsl fp
    1ff0:	23060c00 	movwcs	r0, #27648	; 0x6c00
    1ff4:	0006d501 	andeq	sp, r6, r1, lsl #10
    1ff8:	07941800 	ldreq	r1, [r4, r0, lsl #16]
    1ffc:	25060000 	strcs	r0, [r6, #-0]
    2000:	0006d501 	andeq	sp, r6, r1, lsl #10
    2004:	73180000 	tstvc	r8, #0
    2008:	06000006 	streq	r0, [r0], -r6
    200c:	00360126 	eorseq	r0, r6, r6, lsr #2
    2010:	18040000 	stmdane	r4, {}	; <UNPREDICTABLE>
    2014:	0000075c 	andeq	r0, r0, ip, asr r7
    2018:	db012706 	blle	4bc38 <__Main_Stack_Size+0x4b838>
    201c:	08000006 	stmdaeq	r0, {r1, r2}
    2020:	a0040e00 	andge	r0, r4, r0, lsl #28
    2024:	0e000006 	cdpeq	0, 0, cr0, cr0, cr6, {0}
    2028:	00069404 	andeq	r9, r6, r4, lsl #8
    202c:	04f11a00 	ldrbteq	r1, [r1], #2560	; 0xa00
    2030:	060e0000 	streq	r0, [lr], -r0
    2034:	0716013f 			; <UNDEFINED> instruction: 0x0716013f
    2038:	eb180000 	bl	602040 <__Main_Stack_Size+0x601c40>
    203c:	06000007 	streq	r0, [r0], -r7
    2040:	07160140 	ldreq	r0, [r6, -r0, asr #2]
    2044:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    2048:	00000836 	andeq	r0, r0, r6, lsr r8
    204c:	16014106 	strne	r4, [r1], -r6, lsl #2
    2050:	06000007 	streq	r0, [r0], -r7
    2054:	00085218 	andeq	r5, r8, r8, lsl r2
    2058:	01420600 	cmpeq	r2, r0, lsl #12
    205c:	00000072 	andeq	r0, r0, r2, ror r0
    2060:	7209000c 	andvc	r0, r9, #12
    2064:	26000000 	strcs	r0, [r0], -r0
    2068:	0a000007 	beq	208c <__Main_Stack_Size+0x1c8c>
    206c:	00000048 	andeq	r0, r0, r8, asr #32
    2070:	d01b0002 	andsle	r0, fp, r2
    2074:	27025906 	strcs	r5, [r2, -r6, lsl #18]
    2078:	18000008 	stmdane	r0, {r3}
    207c:	0000087f 	andeq	r0, r0, pc, ror r8
    2080:	48025b06 	stmdami	r2, {r1, r2, r8, r9, fp, ip, lr}
    2084:	00000000 	andeq	r0, r0, r0
    2088:	00083c18 	andeq	r3, r8, r8, lsl ip
    208c:	025c0600 	subseq	r0, ip, #0, 12
    2090:	000001a7 	andeq	r0, r0, r7, lsr #3
    2094:	069b1804 	ldreq	r1, [fp], r4, lsl #16
    2098:	5d060000 	stcpl	0, cr0, [r6, #-0]
    209c:	00082702 	andeq	r2, r8, r2, lsl #14
    20a0:	d7180800 	ldrle	r0, [r8, -r0, lsl #16]
    20a4:	06000008 	streq	r0, [r0], -r8
    20a8:	022d025e 	eoreq	r0, sp, #-536870907	; 0xe0000005
    20ac:	18240000 	stmdane	r4!, {}	; <UNPREDICTABLE>
    20b0:	00000638 	andeq	r0, r0, r8, lsr r6
    20b4:	36025f06 	strcc	r5, [r2], -r6, lsl #30
    20b8:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
    20bc:	00078f18 	andeq	r8, r7, r8, lsl pc
    20c0:	02600600 	rsbeq	r0, r0, #0, 12
    20c4:	00000092 	muleq	r0, r2, r0
    20c8:	08ed1850 	stmiaeq	sp!, {r4, r6, fp, ip}^
    20cc:	61060000 	mrsvs	r0, (UNDEF: 6)
    20d0:	0006e102 	andeq	lr, r6, r2, lsl #2
    20d4:	9a185800 	bls	6180dc <__Main_Stack_Size+0x617cdc>
    20d8:	06000007 	streq	r0, [r0], -r7
    20dc:	01790262 	cmneq	r9, r2, ror #4
    20e0:	18680000 	stmdane	r8!, {}^	; <UNPREDICTABLE>
    20e4:	000008f2 	strdeq	r0, [r0], -r2
    20e8:	79026306 	stmdbvc	r2, {r1, r2, r8, r9, sp, lr}
    20ec:	70000001 	andvc	r0, r0, r1
    20f0:	00054718 	andeq	r4, r5, r8, lsl r7
    20f4:	02640600 	rsbeq	r0, r4, #0, 12
    20f8:	00000179 	andeq	r0, r0, r9, ror r1
    20fc:	08aa1878 	stmiaeq	sl!, {r3, r4, r5, r6, fp, ip}
    2100:	65060000 	strvs	r0, [r6, #-0]
    2104:	00083702 	andeq	r3, r8, r2, lsl #14
    2108:	8f188000 	svchi	0x00188000
    210c:	06000006 	streq	r0, [r0], -r6
    2110:	08470266 	stmdaeq	r7, {r1, r2, r5, r6, r9}^
    2114:	18880000 	stmne	r8, {}	; <UNPREDICTABLE>
    2118:	0000085f 	andeq	r0, r0, pc, asr r8
    211c:	36026706 	strcc	r6, [r2], -r6, lsl #14
    2120:	a0000000 	andge	r0, r0, r0
    2124:	0005f918 	andeq	pc, r5, r8, lsl r9	; <UNPREDICTABLE>
    2128:	02680600 	rsbeq	r0, r8, #0, 12
    212c:	00000179 	andeq	r0, r0, r9, ror r1
    2130:	053818a4 	ldreq	r1, [r8, #-2212]!	; 0xfffff75c
    2134:	69060000 	stmdbvs	r6, {}	; <UNPREDICTABLE>
    2138:	00017902 	andeq	r7, r1, r2, lsl #18
    213c:	e818ac00 	ldmda	r8, {sl, fp, sp, pc}
    2140:	06000005 	streq	r0, [r0], -r5
    2144:	0179026a 	cmneq	r9, sl, ror #4
    2148:	18b40000 	ldmne	r4!, {}	; <UNPREDICTABLE>
    214c:	00000504 	andeq	r0, r0, r4, lsl #10
    2150:	79026b06 	stmdbvc	r2, {r1, r2, r8, r9, fp, sp, lr}
    2154:	bc000001 	stclt	0, cr0, [r0], {1}
    2158:	00051318 	andeq	r1, r5, r8, lsl r3
    215c:	026c0600 	rsbeq	r0, ip, #0, 12
    2160:	00000179 	andeq	r0, r0, r9, ror r1
    2164:	074218c4 	strbeq	r1, [r2, -r4, asr #17]
    2168:	6d060000 	stcvs	0, cr0, [r6, #-0]
    216c:	00003602 	andeq	r3, r0, r2, lsl #12
    2170:	0900cc00 	stmdbeq	r0, {sl, fp, lr, pc}
    2174:	000001ad 	andeq	r0, r0, sp, lsr #3
    2178:	00000837 	andeq	r0, r0, r7, lsr r8
    217c:	0000480a 	andeq	r4, r0, sl, lsl #16
    2180:	09001900 	stmdbeq	r0, {r8, fp, ip}
    2184:	000001ad 	andeq	r0, r0, sp, lsr #3
    2188:	00000847 	andeq	r0, r0, r7, asr #16
    218c:	0000480a 	andeq	r4, r0, sl, lsl #16
    2190:	09000700 	stmdbeq	r0, {r8, r9, sl}
    2194:	000001ad 	andeq	r0, r0, sp, lsr #3
    2198:	00000857 	andeq	r0, r0, r7, asr r8
    219c:	0000480a 	andeq	r4, r0, sl, lsl #16
    21a0:	1b001700 	blne	7da8 <__Main_Stack_Size+0x79a8>
    21a4:	027206f0 	rsbseq	r0, r2, #240, 12	; 0xf000000
    21a8:	0000087b 	andeq	r0, r0, fp, ror r8
    21ac:	0006f318 	andeq	pc, r6, r8, lsl r3	; <UNPREDICTABLE>
    21b0:	02750600 	rsbseq	r0, r5, #0, 12
    21b4:	0000087b 	andeq	r0, r0, fp, ror r8
    21b8:	08a11800 	stmiaeq	r1!, {fp, ip}
    21bc:	76060000 	strvc	r0, [r6], -r0
    21c0:	00088b02 	andeq	r8, r8, r2, lsl #22
    21c4:	09007800 	stmdbeq	r0, {fp, ip, sp, lr}
    21c8:	00000376 	andeq	r0, r0, r6, ror r3
    21cc:	0000088b 	andeq	r0, r0, fp, lsl #17
    21d0:	0000480a 	andeq	r4, r0, sl, lsl #16
    21d4:	09001d00 	stmdbeq	r0, {r8, sl, fp, ip}
    21d8:	00000048 	andeq	r0, r0, r8, asr #32
    21dc:	0000089b 	muleq	r0, fp, r8
    21e0:	0000480a 	andeq	r4, r0, sl, lsl #16
    21e4:	1c001d00 	stcne	13, cr1, [r0], {-0}
    21e8:	025706f0 	subseq	r0, r7, #240, 12	; 0xf000000
    21ec:	000008bd 			; <UNDEFINED> instruction: 0x000008bd
    21f0:	0007e41d 	andeq	lr, r7, sp, lsl r4
    21f4:	026e0600 	rsbeq	r0, lr, #0, 12
    21f8:	00000726 	andeq	r0, r0, r6, lsr #14
    21fc:	0008c41d 	andeq	ip, r8, sp, lsl r4
    2200:	02770600 	rsbseq	r0, r7, #0, 12
    2204:	00000857 	andeq	r0, r0, r7, asr r8
    2208:	01ad0900 			; <UNDEFINED> instruction: 0x01ad0900
    220c:	08cd0000 	stmiaeq	sp, {}^	; <UNPREDICTABLE>
    2210:	480a0000 	stmdami	sl, {}	; <UNPREDICTABLE>
    2214:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    2218:	052d1e00 	streq	r1, [sp, #-3584]!	; 0xfffff200
    221c:	040e0000 	streq	r0, [lr], #-0
    2220:	000008cd 	andeq	r0, r0, sp, asr #17
    2224:	0008e31f 	andeq	lr, r8, pc, lsl r3
    2228:	04c41600 	strbeq	r1, [r4], #1536	; 0x600
    222c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    2230:	0008d804 	andeq	sp, r8, r4, lsl #16
    2234:	17040e00 	strne	r0, [r4, -r0, lsl #28]
    2238:	1f000002 	svcne	0x00000002
    223c:	000008fa 	strdeq	r0, [r0], -sl
    2240:	00003616 	andeq	r3, r0, r6, lsl r6
    2244:	040e0000 	streq	r0, [lr], #-0
    2248:	00000900 	andeq	r0, r0, r0, lsl #18
    224c:	08ef040e 	stmiaeq	pc!, {r1, r2, r3, sl}^	; <UNPREDICTABLE>
    2250:	94090000 	strls	r0, [r9], #-0
    2254:	16000006 	strne	r0, [r0], -r6
    2258:	0a000009 	beq	2284 <__Main_Stack_Size+0x1e84>
    225c:	00000048 	andeq	r0, r0, r8, asr #32
    2260:	73200002 			; <UNDEFINED> instruction: 0x73200002
    2264:	06000008 	streq	r0, [r0], -r8
    2268:	04c402fe 	strbeq	r0, [r4], #766	; 0x2fe
    226c:	6c200000 	stcvs	0, cr0, [r0], #-0
    2270:	06000008 	streq	r0, [r0], -r8
    2274:	04ca02ff 	strbeq	r0, [sl], #767	; 0x2ff
    2278:	2b090000 	blcs	242280 <__Main_Stack_Size+0x241e80>
    227c:	39000006 	stmdbcc	r0, {r1, r2}
    2280:	21000009 	tstcs	r0, r9
    2284:	092e0f00 	stmdbeq	lr!, {r8, r9, sl, fp}
    2288:	cb220000 	blgt	882290 <__Main_Stack_Size+0x881e90>
    228c:	07000005 	streq	r0, [r0, -r5]
    2290:	00093914 	andeq	r3, r9, r4, lsl r9
    2294:	077c2200 	ldrbeq	r2, [ip, -r0, lsl #4]!
    2298:	15070000 	strne	r0, [r7, #-0]
    229c:	00000036 	andeq	r0, r0, r6, lsr r0
    22a0:	000b1204 	andeq	r1, fp, r4, lsl #4
    22a4:	9c230800 	stcls	8, cr0, [r3], #-0
    22a8:	04000001 	streq	r0, [r0], #-1
    22ac:	00000b97 	muleq	r0, r7, fp
    22b0:	00792808 	rsbseq	r2, r9, r8, lsl #16
    22b4:	60100000 	andsvs	r0, r0, r0
    22b8:	0800000b 	stmdaeq	r0, {r0, r1, r3}
    22bc:	098f3408 	stmibeq	pc, {r3, sl, ip, sp}	; <UNPREDICTABLE>
    22c0:	6e0c0000 	cdpvs	0, 0, cr0, cr12, cr0, {0}
    22c4:	0800000b 	stmdaeq	r0, {r0, r1, r3}
    22c8:	00095f35 	andeq	r5, r9, r5, lsr pc
    22cc:	510c0000 	mrspl	r0, (UNDEF: 12)
    22d0:	0800000c 	stmdaeq	r0, {r2, r3}
    22d4:	00095436 	andeq	r5, r9, r6, lsr r4
    22d8:	04000400 	streq	r0, [r0], #-1024	; 0xfffffc00
    22dc:	00000aab 	andeq	r0, r0, fp, lsr #21
    22e0:	00a47109 	adceq	r7, r4, r9, lsl #2
    22e4:	8d040000 	stchi	0, cr0, [r4, #-0]
    22e8:	0900000b 	stmdbeq	r0, {r0, r1, r3}
    22ec:	0000af76 	andeq	sl, r0, r6, ror pc
    22f0:	0aec0400 	beq	ffb032f8 <_estack+0xdfafe2f8>
    22f4:	7b090000 	blvc	2422fc <__Main_Stack_Size+0x241efc>
    22f8:	0000008b 	andeq	r0, r0, fp, lsl #1
    22fc:	000bf604 	andeq	pc, fp, r4, lsl #12
    2300:	f19b0900 			; <UNDEFINED> instruction: 0xf19b0900
    2304:	04000000 	streq	r0, [r0], #-0
    2308:	00000a29 	andeq	r0, r0, r9, lsr #20
    230c:	0107ad09 	tsteq	r7, r9, lsl #26
    2310:	f6040000 			; <UNDEFINED> instruction: 0xf6040000
    2314:	0900000a 	stmdbeq	r0, {r1, r3}
    2318:	0000d0b1 	strheq	sp, [r0], -r1
    231c:	0c1e0400 	cfldrseq	mvf0, [lr], {-0}
    2320:	b5090000 	strlt	r0, [r9, #-0]
    2324:	000000db 	ldrdeq	r0, [r0], -fp
    2328:	000a3104 	andeq	r3, sl, r4, lsl #2
    232c:	e6b90900 	ldrt	r0, [r9], r0, lsl #18
    2330:	04000000 	streq	r0, [r0], #-0
    2334:	00000bda 	ldrdeq	r0, [r0], -sl
    2338:	00c5be09 	sbceq	fp, r5, r9, lsl #28
    233c:	9c040000 	stcls	0, cr0, [r4], {-0}
    2340:	0900000a 	stmdbeq	r0, {r1, r3}
    2344:	0000fccd 	andeq	pc, r0, sp, asr #25
    2348:	0c8e0400 	cfstrseq	mvf0, [lr], {0}
    234c:	d2090000 	andle	r0, r9, #0
    2350:	00000191 	muleq	r0, r1, r1
    2354:	000bb622 	andeq	fp, fp, r2, lsr #12
    2358:	799a0a00 	ldmibvc	sl, {r9, fp}
    235c:	22000000 	andcs	r0, r0, #0
    2360:	00000a3d 	andeq	r0, r0, sp, lsr sl
    2364:	00369b0a 	eorseq	r9, r6, sl, lsl #22
    2368:	a7090000 	strge	r0, [r9, -r0]
    236c:	2e000001 	cdpcs	0, 0, cr0, cr0, cr1, {0}
    2370:	0a00000a 	beq	23a0 <__Main_Stack_Size+0x1fa0>
    2374:	00000048 	andeq	r0, r0, r8, asr #32
    2378:	88220001 	stmdahi	r2!, {r0}
    237c:	0a00000a 	beq	23ac <__Main_Stack_Size+0x1fac>
    2380:	000a1e9e 	muleq	sl, lr, lr
    2384:	0b691000 	bleq	1a4638c <__Main_Stack_Size+0x1a45f8c>
    2388:	0b3c0000 	bleq	f02390 <__Main_Stack_Size+0xf01f90>
    238c:	000b121b 	andeq	r1, fp, fp, lsl r2
    2390:	0a470c00 	beq	11c5398 <__Main_Stack_Size+0x11c4f98>
    2394:	1d0b0000 	stcne	0, cr0, [fp, #-0]
    2398:	000009c6 	andeq	r0, r0, r6, asr #19
    239c:	0bd10c00 	bleq	ff4453a4 <_estack+0xdf4403a4>
    23a0:	1e0b0000 	cdpne	0, 0, cr0, cr11, cr0, {0}
    23a4:	000009b0 			; <UNDEFINED> instruction: 0x000009b0
    23a8:	0c240c02 	stceq	12, cr0, [r4], #-8
    23ac:	1f0b0000 	svcne	0x000b0000
    23b0:	000009f2 	strdeq	r0, [r0], -r2
    23b4:	0bc00c04 	bleq	ff0053cc <_estack+0xdf0003cc>
    23b8:	200b0000 	andcs	r0, fp, r0
    23bc:	000009fd 	strdeq	r0, [r0], -sp
    23c0:	0b1e0c08 	bleq	7853e8 <__Main_Stack_Size+0x784fe8>
    23c4:	210b0000 	mrscs	r0, (UNDEF: 11)
    23c8:	000009d1 	ldrdeq	r0, [r0], -r1
    23cc:	0a4e0c0a 	beq	13853fc <__Main_Stack_Size+0x1384ffc>
    23d0:	220b0000 	andcs	r0, fp, #0
    23d4:	000009dc 	ldrdeq	r0, [r0], -ip
    23d8:	0c6f0c0c 	stcleq	12, cr0, [pc], #-48	; 23b0 <__Main_Stack_Size+0x1fb0>
    23dc:	230b0000 	movwcs	r0, #45056	; 0xb000
    23e0:	000009c6 	andeq	r0, r0, r6, asr #19
    23e4:	0b460c0e 	bleq	1185424 <__Main_Stack_Size+0x1185024>
    23e8:	240b0000 	strcs	r0, [fp], #-0
    23ec:	000009bb 			; <UNDEFINED> instruction: 0x000009bb
    23f0:	0bfc0c10 	bleq	fff05438 <_estack+0xdff00438>
    23f4:	320b0000 	andcc	r0, fp, #0
    23f8:	0000095f 	andeq	r0, r0, pc, asr r9
    23fc:	0afc0c14 	beq	fff05454 <_estack+0xdff00454>
    2400:	330b0000 	movwcc	r0, #45056	; 0xb000
    2404:	00000079 	andeq	r0, r0, r9, ror r0
    2408:	0c960c18 	ldceq	12, cr0, [r6], {24}
    240c:	340b0000 	strcc	r0, [fp], #-0
    2410:	0000095f 	andeq	r0, r0, pc, asr r9
    2414:	0b060c1c 	bleq	18548c <__Main_Stack_Size+0x18508c>
    2418:	350b0000 	strcc	r0, [fp, #-0]
    241c:	00000079 	andeq	r0, r0, r9, ror r0
    2420:	0beb0c20 	bleq	ffac54a8 <_estack+0xdfac04a8>
    2424:	360b0000 	strcc	r0, [fp], -r0
    2428:	0000095f 	andeq	r0, r0, pc, asr r9
    242c:	0aba0c24 	beq	fee854c4 <_estack+0xdee804c4>
    2430:	370b0000 	strcc	r0, [fp, -r0]
    2434:	00000079 	andeq	r0, r0, r9, ror r0
    2438:	0be00c28 	bleq	ff8054e0 <_estack+0xdf8004e0>
    243c:	380b0000 	stmdacc	fp, {}	; <UNPREDICTABLE>
    2440:	0000099a 	muleq	r0, sl, r9
    2444:	0a660c2c 	beq	19854fc <__Main_Stack_Size+0x19850fc>
    2448:	390b0000 	stmdbcc	fp, {}	; <UNPREDICTABLE>
    244c:	0000098f 	andeq	r0, r0, pc, lsl #19
    2450:	0c050c30 	stceq	12, cr0, [r5], {48}	; 0x30
    2454:	3a0b0000 	bcc	2c245c <__Main_Stack_Size+0x2c205c>
    2458:	00000b12 	andeq	r0, r0, r2, lsl fp
    245c:	79090034 	stmdbvc	r9, {r2, r4, r5}
    2460:	22000000 	andcs	r0, r0, #0
    2464:	0a00000b 	beq	2498 <__Main_Stack_Size+0x2098>
    2468:	00000048 	andeq	r0, r0, r8, asr #32
    246c:	74230001 	strtvc	r0, [r3], #-1
    2470:	1000736d 	andne	r7, r0, sp, ror #6
    2474:	0b5f110c 	bleq	17c68ac <__Main_Stack_Size+0x17c64ac>
    2478:	9e0c0000 	cdpls	0, 0, cr0, cr12, cr0, {0}
    247c:	0c00000b 	stceq	0, cr0, [r0], {11}
    2480:	0009a512 	andeq	sl, r9, r2, lsl r5
    2484:	2c0c0000 	stccs	0, cr0, [ip], {-0}
    2488:	0c00000b 	stceq	0, cr0, [r0], {11}
    248c:	0009a513 	andeq	sl, r9, r3, lsl r5
    2490:	700c0400 	andvc	r0, ip, r0, lsl #8
    2494:	0c00000a 	stceq	0, cr0, [r0], {10}
    2498:	0009a514 	andeq	sl, r9, r4, lsl r5
    249c:	2c0c0800 	stccs	8, cr0, [ip], {-0}
    24a0:	0c00000c 	stceq	0, cr0, [r0], {12}
    24a4:	0009a515 	andeq	sl, r9, r5, lsl r5
    24a8:	09000c00 	stmdbeq	r0, {sl, fp}
    24ac:	000001a7 	andeq	r0, r0, r7, lsr #3
    24b0:	00000b6f 	andeq	r0, r0, pc, ror #22
    24b4:	0000480a 	andeq	r4, r0, sl, lsl #16
    24b8:	02000000 	andeq	r0, r0, #0
    24bc:	00000a37 	andeq	r0, r0, r7, lsr sl
    24c0:	0b5f4801 	bleq	17d44cc <__Main_Stack_Size+0x17d40cc>
    24c4:	03050000 	movweq	r0, #20480	; 0x5000
    24c8:	00000000 	andeq	r0, r0, r0
    24cc:	000b3602 	andeq	r3, fp, r2, lsl #12
    24d0:	91490100 	mrsls	r0, (UNDEF: 89)
    24d4:	0500000b 	streq	r0, [r0, #-11]
    24d8:	00000003 	andeq	r0, r0, r3
    24dc:	a7040e00 	strge	r0, [r4, -r0, lsl #28]
    24e0:	24000001 	strcs	r0, [r0], #-1
    24e4:	00001407 	andeq	r1, r0, r7, lsl #8
    24e8:	0036f401 	eorseq	pc, r6, r1, lsl #8
    24ec:	0bc80000 	bleq	ff2024f4 <_estack+0xdf1fd4f4>
    24f0:	6e250000 	cdpvs	0, 2, cr0, cr5, cr0, {0}
    24f4:	01000006 	tsteq	r0, r6
    24f8:	000036f4 	strdeq	r3, [r0], -r4
    24fc:	74702600 	ldrbtvc	r2, [r0], #-1536	; 0xfffffa00
    2500:	f4010072 	vst4.16	{d0-d3}, [r1 :256], r2
    2504:	000001a7 	andeq	r0, r0, r7, lsr #3
    2508:	6e656c26 	cdpvs	12, 6, cr6, cr5, cr6, {1}
    250c:	36f50100 	ldrbtcc	r0, [r5], r0, lsl #2
    2510:	00000000 	andeq	r0, r0, r0
    2514:	000b8524 	andeq	r8, fp, r4, lsr #10
    2518:	36ed0100 	strbtcc	r0, [sp], r0, lsl #2
    251c:	e3000000 	movw	r0, #0
    2520:	2500000b 	strcs	r0, [r0, #-11]
    2524:	00000c59 	andeq	r0, r0, r9, asr ip
    2528:	0be3ed01 	bleq	ff8fd934 <_estack+0xdf8f8934>
    252c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    2530:	00003604 	andeq	r3, r0, r4, lsl #12
    2534:	0c672700 	stcleq	7, cr2, [r7], #-0
    2538:	e6010000 	str	r0, [r1], -r0
    253c:	00000036 	andeq	r0, r0, r6, lsr r0
    2540:	000c0501 	andeq	r0, ip, r1, lsl #10
    2544:	0a8b2500 	beq	fe2cb94c <_estack+0xde2c694c>
    2548:	e6010000 	str	r0, [r1], -r0
    254c:	000001a7 	andeq	r0, r0, r7, lsr #3
    2550:	0c602800 	stcleq	8, cr2, [r0], #-0
    2554:	df010000 	svcle	0x00010000
    2558:	000009a5 	andeq	r0, r0, r5, lsr #19
    255c:	00000000 	andeq	r0, r0, r0
    2560:	00000010 	andeq	r0, r0, r0, lsl r0
    2564:	0c379c01 	ldceq	12, cr9, [r7], #-4
    2568:	62290000 	eorvs	r0, r9, #0
    256c:	01006675 	tsteq	r0, r5, ror r6
    2570:	000c37df 	ldrdeq	r3, [ip], -pc	; <UNPREDICTABLE>
    2574:	00024f00 	andeq	r4, r2, r0, lsl #30
    2578:	00002a00 	andeq	r2, r0, r0, lsl #20
    257c:	111e0000 	tstne	lr, r0
    2580:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    2584:	000b2204 	andeq	r2, fp, r4, lsl #4
    2588:	0b752400 	bleq	1d4b590 <__Main_Stack_Size+0x1d4b190>
    258c:	d7010000 	strle	r0, [r1, -r0]
    2590:	00000036 	andeq	r0, r0, r6, lsr r0
    2594:	00000c63 	andeq	r0, r0, r3, ror #24
    2598:	000c8625 	andeq	r8, ip, r5, lsr #12
    259c:	25d70100 	ldrbcs	r0, [r7, #256]	; 0x100
    25a0:	25000006 	strcs	r0, [r0, #-6]
    25a4:	00000c0f 	andeq	r0, r0, pc, lsl #24
    25a8:	0625d801 	strteq	sp, [r5], -r1, lsl #16
    25ac:	24000000 	strcs	r0, [r0], #-0
    25b0:	00000b68 	andeq	r0, r0, r8, ror #22
    25b4:	0036cf01 	eorseq	ip, r6, r1, lsl #30
    25b8:	0c880000 	stceq	0, cr0, [r8], {0}
    25bc:	6e250000 	cdpvs	0, 2, cr0, cr5, cr0, {0}
    25c0:	01000006 	tsteq	r0, r6
    25c4:	000625cf 	andeq	r2, r6, pc, asr #11
    25c8:	74732600 	ldrbtvc	r2, [r3], #-1536	; 0xfffffa00
    25cc:	88d00100 	ldmhi	r0, {r8}^
    25d0:	0000000c 	andeq	r0, r0, ip
    25d4:	0a39040e 	beq	e43614 <__Main_Stack_Size+0xe43214>
    25d8:	4e280000 	cdpmi	0, 2, cr0, cr8, cr0, {0}
    25dc:	0100000b 	tsteq	r0, fp
    25e0:	000036c7 	andeq	r3, r0, r7, asr #13
    25e4:	00000000 	andeq	r0, r0, r0
    25e8:	00001000 	andeq	r1, r0, r0
    25ec:	de9c0100 	fmllee	f0, f4, f0
    25f0:	2b00000c 	blcs	2628 <__Main_Stack_Size+0x2228>
    25f4:	00000a61 	andeq	r0, r0, r1, ror #20
    25f8:	0625c701 	strteq	ip, [r5], -r1, lsl #14
    25fc:	02700000 	rsbseq	r0, r0, #0
    2600:	62290000 	eorvs	r0, r9, #0
    2604:	01006675 	tsteq	r0, r5, ror r6
    2608:	0001a7c8 	andeq	sl, r1, r8, asr #15
    260c:	00029100 	andeq	r9, r2, r0, lsl #2
    2610:	0ad92b00 	beq	ff64d218 <_estack+0xdf648218>
    2614:	c8010000 	stmdagt	r1, {}	; <UNPREDICTABLE>
    2618:	0000003d 	andeq	r0, r0, sp, lsr r0
    261c:	000002b2 			; <UNDEFINED> instruction: 0x000002b2
    2620:	0000002a 	andeq	r0, r0, sl, lsr #32
    2624:	00111e00 	andseq	r1, r1, r0, lsl #28
    2628:	73270000 			; <UNDEFINED> instruction: 0x73270000
    262c:	0100000e 	tsteq	r0, lr
    2630:	000036bf 			; <UNDEFINED> instruction: 0x000036bf
    2634:	0d100100 	ldfeqs	f0, [r0, #-0]
    2638:	6e250000 	cdpvs	0, 2, cr0, cr5, cr0, {0}
    263c:	01000006 	tsteq	r0, r6
    2640:	000036bf 			; <UNDEFINED> instruction: 0x000036bf
    2644:	74702600 	ldrbtvc	r2, [r0], #-1536	; 0xfffffa00
    2648:	bf010072 	svclt	0x00010072
    264c:	000001a7 	andeq	r0, r0, r7, lsr #3
    2650:	6e656c26 	cdpvs	12, 6, cr6, cr5, cr6, {1}
    2654:	36c00100 	strbcc	r0, [r0], r0, lsl #2
    2658:	00000000 	andeq	r0, r0, r0
    265c:	000ab428 	andeq	fp, sl, r8, lsr #8
    2660:	36b70100 	ldrtcc	r0, [r7], r0, lsl #2
    2664:	00000000 	andeq	r0, r0, r0
    2668:	10000000 	andne	r0, r0, r0
    266c:	01000000 	mrseq	r0, (UNDEF: 0)
    2670:	000d609c 	muleq	sp, ip, r0
    2674:	066e2b00 	strbteq	r2, [lr], -r0, lsl #22
    2678:	b7010000 	strlt	r0, [r1, -r0]
    267c:	000001a7 	andeq	r0, r0, r7, lsr #3
    2680:	000002d3 	ldrdeq	r0, [r0], -r3
    2684:	0005b62b 	andeq	fp, r5, fp, lsr #12
    2688:	36b70100 	ldrtcc	r0, [r7], r0, lsl #2
    268c:	f4000000 	vst4.8	{d0-d3}, [r0], r0
    2690:	2b000002 	blcs	26a0 <__Main_Stack_Size+0x22a0>
    2694:	00000dd7 	ldrdeq	r0, [r0], -r7
    2698:	0036b801 	eorseq	fp, r6, r1, lsl #16
    269c:	03150000 	tsteq	r5, #0
    26a0:	002a0000 	eoreq	r0, sl, r0
    26a4:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
    26a8:	00000011 	andeq	r0, r0, r1, lsl r0
    26ac:	000b2528 	andeq	r2, fp, r8, lsr #10
    26b0:	36af0100 	strtcc	r0, [pc], r0, lsl #2
    26b4:	00000000 	andeq	r0, r0, r0
    26b8:	10000000 	andne	r0, r0, r0
    26bc:	01000000 	mrseq	r0, (UNDEF: 0)
    26c0:	000db09c 	muleq	sp, ip, r0
    26c4:	066e2b00 	strbteq	r2, [lr], -r0, lsl #22
    26c8:	af010000 	svcge	0x00010000
    26cc:	00000036 	andeq	r0, r0, r6, lsr r0
    26d0:	00000336 	andeq	r0, r0, r6, lsr r3
    26d4:	72747029 	rsbsvc	r7, r4, #41	; 0x29
    26d8:	36af0100 	strtcc	r0, [pc], r0, lsl #2
    26dc:	57000000 	strpl	r0, [r0, -r0]
    26e0:	29000003 	stmdbcs	r0, {r0, r1}
    26e4:	00726964 	rsbseq	r6, r2, r4, ror #18
    26e8:	0036b001 	eorseq	fp, r6, r1
    26ec:	03780000 	cmneq	r8, #0
    26f0:	002a0000 	eoreq	r0, sl, r0
    26f4:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
    26f8:	00000011 	andeq	r0, r0, r1, lsl r0
    26fc:	000c8024 	andeq	r8, ip, r4, lsr #32
    2700:	36a70100 	strtcc	r0, [r7], r0, lsl #2
    2704:	d6000000 	strle	r0, [r0], -r0
    2708:	2500000d 	strcs	r0, [r0, #-13]
    270c:	00000c77 	andeq	r0, r0, r7, ror ip
    2710:	01a7a701 			; <UNDEFINED> instruction: 0x01a7a701
    2714:	3d250000 	stccc	0, cr0, [r5, #-0]
    2718:	01000007 	tsteq	r0, r7
    271c:	0001a7a8 	andeq	sl, r1, r8, lsr #15
    2720:	82280000 	eorhi	r0, r8, #0
    2724:	0100000a 	tsteq	r0, sl
    2728:	000036a0 	andeq	r3, r0, r0, lsr #13
    272c:	00000000 	andeq	r0, r0, r0
    2730:	00001000 	andeq	r1, r0, r0
    2734:	179c0100 	ldrne	r0, [ip, r0, lsl #2]
    2738:	2900000e 	stmdbcs	r0, {r1, r2, r3}
    273c:	00646970 	rsbeq	r6, r4, r0, ror r9
    2740:	0036a001 	eorseq	sl, r6, r1
    2744:	03990000 	orrseq	r0, r9, #0
    2748:	73290000 			; <UNDEFINED> instruction: 0x73290000
    274c:	01006769 	tsteq	r0, r9, ror #14
    2750:	000036a0 	andeq	r3, r0, r0, lsr #13
    2754:	0003ba00 	andeq	fp, r3, r0, lsl #20
    2758:	00002a00 	andeq	r2, r0, r0, lsl #20
    275c:	111e0000 	tstne	lr, r0
    2760:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    2764:	00000b3e 	andeq	r0, r0, lr, lsr fp
    2768:	00369901 	eorseq	r9, r6, r1, lsl #18
    276c:	00000000 	andeq	r0, r0, r0
    2770:	000e0000 	andeq	r0, lr, r0
    2774:	9c010000 	stcls	0, cr0, [r1], {-0}
    2778:	00000e49 	andeq	r0, r0, r9, asr #28
    277c:	00066e2b 	andeq	r6, r6, fp, lsr #28
    2780:	36990100 	ldrcc	r0, [r9], r0, lsl #2
    2784:	db000000 	blle	278c <__Main_Stack_Size+0x238c>
    2788:	2a000003 	bcs	279c <__Main_Stack_Size+0x239c>
    278c:	00000000 	andeq	r0, r0, r0
    2790:	0000111e 	andeq	r1, r0, lr, lsl r1
    2794:	0ba82700 	bleq	fea0c39c <_estack+0xdea0739c>
    2798:	91010000 	mrsls	r0, (UNDEF: 1)
    279c:	00000036 	andeq	r0, r0, r6, lsr r0
    27a0:	000e7001 	andeq	r7, lr, r1
    27a4:	0b5f2500 	bleq	17cbbac <__Main_Stack_Size+0x17cb7ac>
    27a8:	91010000 	mrsls	r0, (UNDEF: 1)
    27ac:	00000e70 	andeq	r0, r0, r0, ror lr
    27b0:	000a9025 	andeq	r9, sl, r5, lsr #32
    27b4:	8f920100 	svchi	0x00920100
    27b8:	00000001 	andeq	r0, r0, r1
    27bc:	096a040e 	stmdbeq	sl!, {r1, r2, r3, sl}^
    27c0:	d12c0000 			; <UNDEFINED> instruction: 0xd12c0000
    27c4:	0100000a 	tsteq	r0, sl
    27c8:	0000368a 	andeq	r3, r0, sl, lsl #13
    27cc:	0aca2800 	beq	ff28c7d4 <_estack+0xdf2877d4>
    27d0:	82010000 	andhi	r0, r1, #0
    27d4:	00000036 	andeq	r0, r0, r6, lsr r0
    27d8:	00000000 	andeq	r0, r0, r0
    27dc:	00000010 	andeq	r0, r0, r0, lsl r0
    27e0:	0ec19c01 	cdpeq	12, 12, cr9, cr1, cr1, {0}
    27e4:	7b2b0000 	blvc	ac27ec <__Main_Stack_Size+0xac23ec>
    27e8:	0100000a 	tsteq	r0, sl
    27ec:	00003682 	andeq	r3, r0, r2, lsl #13
    27f0:	0003fc00 	andeq	pc, r3, r0, lsl #24
    27f4:	74732900 	ldrbtvc	r2, [r3], #-2304	; 0xfffff700
    27f8:	88830100 	stmhi	r3, {r8}
    27fc:	1d00000c 	stcne	0, cr0, [r0, #-48]	; 0xffffffd0
    2800:	2a000004 	bcs	2818 <__Main_Stack_Size+0x2418>
    2804:	00000000 	andeq	r0, r0, r0
    2808:	0000111e 	andeq	r1, r0, lr, lsl r1
    280c:	0a552d00 	beq	154dc14 <__Main_Stack_Size+0x154d814>
    2810:	7b010000 	blvc	42818 <__Main_Stack_Size+0x42418>
    2814:	00000036 	andeq	r0, r0, r6, lsr r0
    2818:	0bc92801 	bleq	ff24c824 <_estack+0xdf247824>
    281c:	73010000 	movwvc	r0, #4096	; 0x1000
    2820:	00000036 	andeq	r0, r0, r6, lsr r0
    2824:	00000000 	andeq	r0, r0, r0
    2828:	00000010 	andeq	r0, r0, r0, lsl r0
    282c:	0f1d9c01 	svceq	0x001d9c01
    2830:	8b2b0000 	blhi	ac2838 <__Main_Stack_Size+0xac2438>
    2834:	0100000a 	tsteq	r0, sl
    2838:	0001a773 	andeq	sl, r1, r3, ror r7
    283c:	00043e00 	andeq	r3, r4, r0, lsl #28
    2840:	0b802b00 	bleq	fe00d448 <_estack+0xde008448>
    2844:	73010000 	movwvc	r0, #4096	; 0x1000
    2848:	00000b91 	muleq	r0, r1, fp
    284c:	0000045f 	andeq	r0, r0, pc, asr r4
    2850:	766e6529 	strbtvc	r6, [lr], -r9, lsr #10
    2854:	91740100 	cmnls	r4, r0, lsl #2
    2858:	8000000b 	andhi	r0, r0, fp
    285c:	2a000004 	bcs	2874 <__Main_Stack_Size+0x2474>
    2860:	00000000 	andeq	r0, r0, r0
    2864:	0000111e 	andeq	r1, r0, lr, lsl r1
    2868:	08e62800 	stmiaeq	r6!, {fp, sp}^
    286c:	6c010000 	stcvs	0, cr0, [r1], {-0}
    2870:	00000036 	andeq	r0, r0, r6, lsr r0
    2874:	00000000 	andeq	r0, r0, r0
    2878:	00000010 	andeq	r0, r0, r0, lsl r0
    287c:	0f4f9c01 	svceq	0x004f9c01
    2880:	7b2b0000 	blvc	ac2888 <__Main_Stack_Size+0xac2488>
    2884:	0100000a 	tsteq	r0, sl
    2888:	0000366c 	andeq	r3, r0, ip, ror #12
    288c:	0004a100 	andeq	sl, r4, r0, lsl #2
    2890:	00002a00 	andeq	r2, r0, r0, lsl #20
    2894:	111e0000 	tstne	lr, r0
    2898:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    289c:	00000c15 	andeq	r0, r0, r5, lsl ip
    28a0:	00366401 	eorseq	r6, r6, r1, lsl #8
    28a4:	00000000 	andeq	r0, r0, r0
    28a8:	00100000 	andseq	r0, r0, r0
    28ac:	9c010000 	stcls	0, cr0, [r1], {-0}
    28b0:	00000f9f 	muleq	r0, pc, pc	; <UNPREDICTABLE>
    28b4:	000a612b 	andeq	r6, sl, fp, lsr #2
    28b8:	25640100 	strbcs	r0, [r4, #-256]!	; 0xffffff00
    28bc:	c2000006 	andgt	r0, r0, #6
    28c0:	2b000004 	blcs	28d8 <__Main_Stack_Size+0x24d8>
    28c4:	00000ac4 	andeq	r0, r0, r4, asr #21
    28c8:	09d16501 	ldmibeq	r1, {r0, r8, sl, sp, lr}^
    28cc:	04e30000 	strbteq	r0, [r3], #0
    28d0:	a32b0000 			; <UNDEFINED> instruction: 0xa32b0000
    28d4:	0100000a 	tsteq	r0, sl
    28d8:	0009dc65 	andeq	sp, r9, r5, ror #24
    28dc:	00050400 	andeq	r0, r5, r0, lsl #8
    28e0:	00002a00 	andeq	r2, r0, r0, lsl #20
    28e4:	111e0000 	tstne	lr, r0
    28e8:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    28ec:	00000a83 	andeq	r0, r0, r3, lsl #21
    28f0:	0036ab0d 	eorseq	sl, r6, sp, lsl #22
    28f4:	00000000 	andeq	r0, r0, r0
    28f8:	00100000 	andseq	r0, r0, r0
    28fc:	9c010000 	stcls	0, cr0, [r1], {-0}
    2900:	00000fe0 	andeq	r0, r0, r0, ror #31
    2904:	64697029 	strbtvs	r7, [r9], #-41	; 0xffffffd7
    2908:	e73e0100 	ldr	r0, [lr, -r0, lsl #2]!
    290c:	25000009 	strcs	r0, [r0, #-9]
    2910:	29000005 	stmdbcs	r0, {r0, r2}
    2914:	00676973 	rsbeq	r6, r7, r3, ror r9
    2918:	00363e01 	eorseq	r3, r6, r1, lsl #28
    291c:	05460000 	strbeq	r0, [r6, #-0]
    2920:	002a0000 	eoreq	r0, sl, r0
    2924:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
    2928:	00000011 	andeq	r0, r0, r1, lsl r0
    292c:	000a5b28 	andeq	r5, sl, r8, lsr #22
    2930:	361d0e00 	ldrcc	r0, [sp], -r0, lsl #28
    2934:	00000000 	andeq	r0, r0, r0
    2938:	10000000 	andne	r0, r0, r0
    293c:	01000000 	mrseq	r0, (UNDEF: 0)
    2940:	0010129c 	mulseq	r0, ip, r2
    2944:	69732900 	ldmdbvs	r3!, {r8, fp, sp}^
    2948:	36010067 	strcc	r0, [r1], -r7, rrx
    294c:	00000036 	andeq	r0, r0, r6, lsr r0
    2950:	00000567 	andeq	r0, r0, r7, ror #10
    2954:	0000002a 	andeq	r0, r0, sl, lsr #32
    2958:	00111e00 	andseq	r1, r1, r0, lsl #28
    295c:	152e0000 	strne	r0, [lr, #-0]!
    2960:	0100000a 	tsteq	r0, sl
    2964:	000a0c1a 	andeq	r0, sl, sl, lsl ip
    2968:	00001008 	andeq	r1, r0, r8
    296c:	5e9c0100 	fmlple	f0, f4, f0
    2970:	2f000010 	svccs	0x00000010
    2974:	00000b58 	andeq	r0, r0, r8, asr fp
    2978:	0be31a01 	bleq	ff8c9184 <_estack+0xdf8c4184>
    297c:	50010000 	andpl	r0, r1, r0
    2980:	000b7e2f 	andeq	r7, fp, pc, lsr #28
    2984:	5e1a0100 	mufple	f0, f2, f0
    2988:	01000010 	tsteq	r0, r0, lsl r0
    298c:	0a8b3051 	beq	fe2cead8 <_estack+0xde2c9ad8>
    2990:	21010000 	mrscs	r0, (UNDEF: 1)
    2994:	00001064 	andeq	r1, r0, r4, rrx
    2998:	000b8031 	andeq	r8, fp, r1, lsr r0
    299c:	1e270100 	sufnes	f0, f7, f0
    29a0:	0500000a 	streq	r0, [r0, #-10]
    29a4:	00001403 	andeq	r1, r0, r3, lsl #8
    29a8:	040e0020 	streq	r0, [lr], #-32	; 0xffffffe0
    29ac:	00000b91 	muleq	r0, r1, fp
    29b0:	0001ad09 	andeq	sl, r1, r9, lsl #26
    29b4:	00107400 	andseq	r7, r0, r0, lsl #8
    29b8:	00480a00 	subeq	r0, r8, r0, lsl #20
    29bc:	00000000 	andeq	r0, r0, r0
    29c0:	000ec132 	andeq	ip, lr, r2, lsr r1
    29c4:	00000000 	andeq	r0, r0, r0
    29c8:	00001000 	andeq	r1, r0, r0
    29cc:	919c0100 	orrsls	r0, ip, r0, lsl #2
    29d0:	2a000010 	bcs	2a18 <__Main_Stack_Size+0x2618>
    29d4:	00000000 	andeq	r0, r0, r0
    29d8:	0000111e 	andeq	r1, r0, lr, lsl r1
    29dc:	0e493200 	cdpeq	2, 4, cr3, cr9, cr0, {0}
    29e0:	00000000 	andeq	r0, r0, r0
    29e4:	00100000 	andseq	r0, r0, r0
    29e8:	9c010000 	stcls	0, cr0, [r1], {-0}
    29ec:	000010c0 	andeq	r1, r0, r0, asr #1
    29f0:	000e5933 	andeq	r5, lr, r3, lsr r9
    29f4:	00058800 	andeq	r8, r5, r0, lsl #16
    29f8:	0e643300 	cdpeq	3, 6, cr3, cr4, cr0, {0}
    29fc:	05a90000 	streq	r0, [r9, #0]!
    2a00:	002a0000 	eoreq	r0, sl, r0
    2a04:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
    2a08:	00000011 	andeq	r0, r0, r1, lsl r0
    2a0c:	000cde32 	andeq	sp, ip, r2, lsr lr
    2a10:	00000000 	andeq	r0, r0, r0
    2a14:	00001000 	andeq	r1, r0, r0
    2a18:	f89c0100 			; <UNDEFINED> instruction: 0xf89c0100
    2a1c:	33000010 	movwcc	r0, #16
    2a20:	00000cee 	andeq	r0, r0, lr, ror #25
    2a24:	000005ca 	andeq	r0, r0, sl, asr #11
    2a28:	000cf933 	andeq	pc, ip, r3, lsr r9	; <UNPREDICTABLE>
    2a2c:	0005eb00 	andeq	lr, r5, r0, lsl #22
    2a30:	0d043300 	stceq	3, cr3, [r4, #-0]
    2a34:	060c0000 	streq	r0, [ip], -r0
    2a38:	002a0000 	eoreq	r0, sl, r0
    2a3c:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
    2a40:	00000011 	andeq	r0, r0, r1, lsl r0
    2a44:	000be932 	andeq	lr, fp, r2, lsr r9
    2a48:	00000000 	andeq	r0, r0, r0
    2a4c:	00001000 	andeq	r1, r0, r0
    2a50:	1e9c0100 	fmlnee	f0, f4, f0
    2a54:	33000011 	movwcc	r0, #17
    2a58:	00000bf9 	strdeq	r0, [r0], -r9
    2a5c:	0000062d 	andeq	r0, r0, sp, lsr #12
    2a60:	0000002a 	andeq	r0, r0, sl, lsr #32
    2a64:	00111e00 	andseq	r1, r1, r0, lsl #28
    2a68:	97340000 	ldrls	r0, [r4, -r0]!
    2a6c:	97000005 	strls	r0, [r0, -r5]
    2a70:	07000005 	streq	r0, [r0, -r5]
    2a74:	13d0000f 	bicsne	r0, r0, #15
    2a78:	00040000 	andeq	r0, r4, r0
    2a7c:	00000b9a 	muleq	r0, sl, fp
    2a80:	01670104 	cmneq	r7, r4, lsl #2
    2a84:	c60c0000 	strgt	r0, [ip], -r0
    2a88:	4800000d 	stmdami	r0, {r0, r2, r3}
    2a8c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    2a90:	00000002 	andeq	r0, r0, r2
    2a94:	3b000000 	blcc	2a9c <__Main_Stack_Size+0x269c>
    2a98:	02000008 	andeq	r0, r0, #8
    2a9c:	008e0601 	addeq	r0, lr, r1, lsl #12
    2aa0:	7e030000 	cdpvc	0, 0, cr0, cr3, cr0, {0}
    2aa4:	03000002 	movweq	r0, #2
    2aa8:	00002522 	andeq	r2, r0, r2, lsr #10
    2aac:	031a0300 	tsteq	sl, #0, 6
    2ab0:	25030000 	strcs	r0, [r3, #-0]
    2ab4:	00000047 	andeq	r0, r0, r7, asr #32
    2ab8:	00003704 	andeq	r3, r0, r4, lsl #14
    2abc:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    2ac0:	00000213 	andeq	r0, r0, r3, lsl r2
    2ac4:	000ae403 	andeq	lr, sl, r3, lsl #8
    2ac8:	5e280300 	cdppl	3, 2, cr0, cr8, cr0, {0}
    2acc:	04000000 	streq	r0, [r0], #-0
    2ad0:	0000004e 	andeq	r0, r0, lr, asr #32
    2ad4:	2f050402 	svccs	0x00050402
    2ad8:	03000001 	movweq	r0, #1
    2adc:	0000101b 	andeq	r1, r0, fp, lsl r0
    2ae0:	00702b03 	rsbseq	r2, r0, r3, lsl #22
    2ae4:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    2ae8:	00012a05 	andeq	r2, r1, r5, lsl #20
    2aec:	027d0300 	rsbseq	r0, sp, #0, 6
    2af0:	2e030000 	cdpcs	0, 0, cr0, cr3, cr0, {0}
    2af4:	00000082 	andeq	r0, r0, r2, lsl #1
    2af8:	8c080102 	stfhis	f0, [r8], {2}
    2afc:	03000000 	movweq	r0, #0
    2b00:	00000319 	andeq	r0, r0, r9, lsl r3
    2b04:	00993103 	addseq	r3, r9, r3, lsl #2
    2b08:	89040000 	stmdbhi	r4, {}	; <UNPREDICTABLE>
    2b0c:	02000000 	andeq	r0, r0, #0
    2b10:	00a80702 	adceq	r0, r8, r2, lsl #14
    2b14:	e3030000 	movw	r0, #12288	; 0x3000
    2b18:	0300000a 	movweq	r0, #10
    2b1c:	0000b034 	andeq	fp, r0, r4, lsr r0
    2b20:	00a00400 	adceq	r0, r0, r0, lsl #8
    2b24:	04020000 	streq	r0, [r2], #-0
    2b28:	0000e407 	andeq	lr, r0, r7, lsl #8
    2b2c:	07080200 	streq	r0, [r8, -r0, lsl #4]
    2b30:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    2b34:	69050405 	stmdbvs	r5, {r0, r2, sl}
    2b38:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    2b3c:	00e90704 	rsceq	r0, r9, r4, lsl #14
    2b40:	b4060000 	strlt	r0, [r6], #-0
    2b44:	04000003 	streq	r0, [r0], #-3
    2b48:	00590629 	subseq	r0, r9, r9, lsr #12
    2b4c:	5e070000 	cdppl	0, 0, cr0, cr7, cr0, {0}
    2b50:	05000003 	streq	r0, [r0, #-3]
    2b54:	0000a035 	andeq	sl, r0, r5, lsr r0
    2b58:	06180800 	ldreq	r0, [r8], -r0, lsl #16
    2b5c:	013a0377 	teqeq	sl, r7, ror r3
    2b60:	49090000 	stmdbmi	r9, {}	; <UNPREDICTABLE>
    2b64:	0600524d 	streq	r5, [r0], -sp, asr #4
    2b68:	00ab0379 	adceq	r0, fp, r9, ror r3
    2b6c:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    2b70:	00524d45 	subseq	r4, r2, r5, asr #26
    2b74:	ab037a06 	blge	e1394 <__Main_Stack_Size+0xe0f94>
    2b78:	04000000 	streq	r0, [r0], #-0
    2b7c:	000d2f0a 	andeq	r2, sp, sl, lsl #30
    2b80:	037b0600 	cmneq	fp, #0, 12
    2b84:	000000ab 	andeq	r0, r0, fp, lsr #1
    2b88:	0ce50a08 	vstmiaeq	r5!, {s1-s8}
    2b8c:	7c060000 	stcvc	0, cr0, [r6], {-0}
    2b90:	0000ab03 	andeq	sl, r0, r3, lsl #22
    2b94:	a50a0c00 	strge	r0, [sl, #-3072]	; 0xfffff400
    2b98:	0600000e 	streq	r0, [r0], -lr
    2b9c:	00ab037d 	adceq	r0, fp, sp, ror r3
    2ba0:	09100000 	ldmdbeq	r0, {}	; <UNPREDICTABLE>
    2ba4:	06005250 			; <UNDEFINED> instruction: 0x06005250
    2ba8:	00ab037e 	adceq	r0, fp, lr, ror r3
    2bac:	00140000 	andseq	r0, r4, r0
    2bb0:	000d340b 	andeq	r3, sp, fp, lsl #8
    2bb4:	037f0600 	cmneq	pc, #0, 12
    2bb8:	000000e3 	andeq	r0, r0, r3, ror #1
    2bbc:	85062408 	strhi	r2, [r6, #-1032]	; 0xfffffbf8
    2bc0:	0001c203 	andeq	ip, r1, r3, lsl #4
    2bc4:	43410900 	movtmi	r0, #6400	; 0x1900
    2bc8:	87060052 	smlsdhi	r6, r2, r0, r0
    2bcc:	0000ab03 	andeq	sl, r0, r3, lsl #22
    2bd0:	ad0a0000 	stcge	0, cr0, [sl, #-0]
    2bd4:	06000002 	streq	r0, [r0], -r2
    2bd8:	00ab0388 	adceq	r0, fp, r8, lsl #7
    2bdc:	0a040000 	beq	102be4 <__Main_Stack_Size+0x1027e4>
    2be0:	000002aa 	andeq	r0, r0, sl, lsr #5
    2be4:	ab038906 	blge	e5004 <__Main_Stack_Size+0xe4c04>
    2be8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    2bec:	00525309 	subseq	r5, r2, r9, lsl #6
    2bf0:	ab038a06 	blge	e5410 <__Main_Stack_Size+0xe5010>
    2bf4:	0c000000 	stceq	0, cr0, [r0], {-0}
    2bf8:	00524309 	subseq	r4, r2, r9, lsl #6
    2bfc:	ab038b06 	blge	e581c <__Main_Stack_Size+0xe541c>
    2c00:	10000000 	andne	r0, r0, r0
    2c04:	00524109 	subseq	r4, r2, r9, lsl #2
    2c08:	ab038c06 	blge	e5c28 <__Main_Stack_Size+0xe5828>
    2c0c:	14000000 	strne	r0, [r0], #-0
    2c10:	00039d0a 	andeq	r9, r3, sl, lsl #26
    2c14:	038d0600 	orreq	r0, sp, #0, 12
    2c18:	000000ab 	andeq	r0, r0, fp, lsr #1
    2c1c:	424f0918 	submi	r0, pc, #24, 18	; 0x60000
    2c20:	8e060052 	mcrhi	0, 0, r0, cr6, cr2, {2}
    2c24:	0000ab03 	andeq	sl, r0, r3, lsl #22
    2c28:	cf0a1c00 	svcgt	0x000a1c00
    2c2c:	06000002 	streq	r0, [r0], -r2
    2c30:	00ab038f 	adceq	r0, fp, pc, lsl #7
    2c34:	00200000 	eoreq	r0, r0, r0
    2c38:	0003a60b 	andeq	sl, r3, fp, lsl #12
    2c3c:	03980600 	orrseq	r0, r8, #0, 12
    2c40:	00000146 	andeq	r0, r0, r6, asr #2
    2c44:	e9061c08 	stmdb	r6, {r3, sl, fp, ip}
    2c48:	00023303 	andeq	r3, r2, r3, lsl #6
    2c4c:	52430900 	subpl	r0, r3, #0, 18
    2c50:	eb06004c 	bl	182d88 <__Main_Stack_Size+0x182988>
    2c54:	0000ab03 	andeq	sl, r0, r3, lsl #22
    2c58:	43090000 	movwmi	r0, #36864	; 0x9000
    2c5c:	06004852 			; <UNDEFINED> instruction: 0x06004852
    2c60:	00ab03ec 	adceq	r0, fp, ip, ror #7
    2c64:	09040000 	stmdbeq	r4, {}	; <UNPREDICTABLE>
    2c68:	00524449 	subseq	r4, r2, r9, asr #8
    2c6c:	ab03ed06 	blge	fe08c <__Main_Stack_Size+0xfdc8c>
    2c70:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    2c74:	52444f09 	subpl	r4, r4, #9, 30	; 0x24
    2c78:	03ee0600 	mvneq	r0, #0, 12
    2c7c:	000000ab 	andeq	r0, r0, fp, lsr #1
    2c80:	0fa20a0c 	svceq	0x00a20a0c
    2c84:	ef060000 	svc	0x00060000
    2c88:	0000ab03 	andeq	sl, r0, r3, lsl #22
    2c8c:	42091000 	andmi	r1, r9, #0
    2c90:	06005252 			; <UNDEFINED> instruction: 0x06005252
    2c94:	00ab03f0 	strdeq	r0, [fp], r0	; <UNPREDICTABLE>
    2c98:	0a140000 	beq	502ca0 <__Main_Stack_Size+0x5028a0>
    2c9c:	00000e16 	andeq	r0, r0, r6, lsl lr
    2ca0:	ab03f106 	blge	ff0c0 <__Main_Stack_Size+0xfecc0>
    2ca4:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    2ca8:	0fa70b00 	svceq	0x00a70b00
    2cac:	f2060000 	vhadd.s8	d0, d6, d0
    2cb0:	0001ce03 	andeq	ip, r1, r3, lsl #28
    2cb4:	06500800 	ldrbeq	r0, [r0], -r0, lsl #16
    2cb8:	045004a2 	ldrbeq	r0, [r0], #-1186	; 0xfffffb5e
    2cbc:	43090000 	movwmi	r0, #36864	; 0x9000
    2cc0:	06003152 			; <UNDEFINED> instruction: 0x06003152
    2cc4:	009404a4 	addseq	r0, r4, r4, lsr #9
    2cc8:	0a000000 	beq	2cd0 <__Main_Stack_Size+0x28d0>
    2ccc:	0000026e 	andeq	r0, r0, lr, ror #4
    2cd0:	8904a506 	stmdbhi	r4, {r1, r2, r8, sl, sp, pc}
    2cd4:	02000000 	andeq	r0, r0, #0
    2cd8:	32524309 	subscc	r4, r2, #603979776	; 0x24000000
    2cdc:	04a60600 	strteq	r0, [r6], #1536	; 0x600
    2ce0:	00000094 	muleq	r0, r4, r0
    2ce4:	0d760a04 	vldmdbeq	r6!, {s1-s4}
    2ce8:	a7060000 	strge	r0, [r6, -r0]
    2cec:	00008904 	andeq	r8, r0, r4, lsl #18
    2cf0:	480a0600 	stmdami	sl, {r9, sl}
    2cf4:	0600000f 	streq	r0, [r0], -pc
    2cf8:	009404a8 	addseq	r0, r4, r8, lsr #9
    2cfc:	0a080000 	beq	202d04 <__Main_Stack_Size+0x202904>
    2d00:	00000ddc 	ldrdeq	r0, [r0], -ip
    2d04:	8904a906 	stmdbhi	r4, {r1, r2, r8, fp, sp, pc}
    2d08:	0a000000 	beq	2d10 <__Main_Stack_Size+0x2910>
    2d0c:	000e110a 	andeq	r1, lr, sl, lsl #2
    2d10:	04aa0600 	strteq	r0, [sl], #1536	; 0x600
    2d14:	00000094 	muleq	r0, r4, r0
    2d18:	0d800a0c 	vstreq	s0, [r0, #48]	; 0x30
    2d1c:	ab060000 	blge	182d24 <__Main_Stack_Size+0x182924>
    2d20:	00008904 	andeq	r8, r0, r4, lsl #18
    2d24:	53090e00 	movwpl	r0, #40448	; 0x9e00
    2d28:	ac060052 	stcge	0, cr0, [r6], {82}	; 0x52
    2d2c:	00009404 	andeq	r9, r0, r4, lsl #8
    2d30:	8a0a1000 	bhi	286d38 <__Main_Stack_Size+0x286938>
    2d34:	0600000d 	streq	r0, [r0], -sp
    2d38:	008904ad 	addeq	r0, r9, sp, lsr #9
    2d3c:	09120000 	ldmdbeq	r2, {}	; <UNPREDICTABLE>
    2d40:	00524745 	subseq	r4, r2, r5, asr #14
    2d44:	9404ae06 	strls	sl, [r4], #-3590	; 0xfffff1fa
    2d48:	14000000 	strne	r0, [r0], #-0
    2d4c:	000d940a 	andeq	r9, sp, sl, lsl #8
    2d50:	04af0600 	strteq	r0, [pc], #1536	; 2d58 <__Main_Stack_Size+0x2958>
    2d54:	00000089 	andeq	r0, r0, r9, lsl #1
    2d58:	0de60a16 			; <UNDEFINED> instruction: 0x0de60a16
    2d5c:	b0060000 	andlt	r0, r6, r0
    2d60:	00009404 	andeq	r9, r0, r4, lsl #8
    2d64:	9e0a1800 	cdpls	8, 0, cr1, cr10, cr0, {0}
    2d68:	0600000d 	streq	r0, [r0], -sp
    2d6c:	008904b1 			; <UNDEFINED> instruction: 0x008904b1
    2d70:	0a1a0000 	beq	682d78 <__Main_Stack_Size+0x682978>
    2d74:	00000dec 	andeq	r0, r0, ip, ror #27
    2d78:	9404b206 	strls	fp, [r4], #-518	; 0xfffffdfa
    2d7c:	1c000000 	stcne	0, cr0, [r0], {-0}
    2d80:	000da80a 	andeq	sl, sp, sl, lsl #16
    2d84:	04b30600 	ldrteq	r0, [r3], #1536	; 0x600
    2d88:	00000089 	andeq	r0, r0, r9, lsl #1
    2d8c:	0edc0a1e 			; <UNDEFINED> instruction: 0x0edc0a1e
    2d90:	b4060000 	strlt	r0, [r6], #-0
    2d94:	00009404 	andeq	r9, r0, r4, lsl #8
    2d98:	b20a2000 	andlt	r2, sl, #0
    2d9c:	0600000d 	streq	r0, [r0], -sp
    2da0:	008904b5 			; <UNDEFINED> instruction: 0x008904b5
    2da4:	09220000 	stmdbeq	r2!, {}	; <UNPREDICTABLE>
    2da8:	00544e43 	subseq	r4, r4, r3, asr #28
    2dac:	9404b606 	strls	fp, [r4], #-1542	; 0xfffff9fa
    2db0:	24000000 	strcs	r0, [r0], #-0
    2db4:	000dbc0a 	andeq	fp, sp, sl, lsl #24
    2db8:	04b70600 	ldrteq	r0, [r7], #1536	; 0x600
    2dbc:	00000089 	andeq	r0, r0, r9, lsl #1
    2dc0:	53500926 	cmppl	r0, #622592	; 0x98000
    2dc4:	b8060043 	stmdalt	r6, {r0, r1, r6}
    2dc8:	00009404 	andeq	r9, r0, r4, lsl #8
    2dcc:	d10a2800 	tstle	sl, r0, lsl #16
    2dd0:	0600000e 	streq	r0, [r0], -lr
    2dd4:	008904b9 			; <UNDEFINED> instruction: 0x008904b9
    2dd8:	092a0000 	stmdbeq	sl!, {}	; <UNPREDICTABLE>
    2ddc:	00525241 	subseq	r5, r2, r1, asr #4
    2de0:	9404ba06 	strls	fp, [r4], #-2566	; 0xfffff5fa
    2de4:	2c000000 	stccs	0, cr0, [r0], {-0}
    2de8:	0010040a 	andseq	r0, r0, sl, lsl #8
    2dec:	04bb0600 	ldrteq	r0, [fp], #1536	; 0x600
    2df0:	00000089 	andeq	r0, r0, r9, lsl #1
    2df4:	4352092e 	cmpmi	r2, #753664	; 0xb8000
    2df8:	bc060052 	stclt	0, cr0, [r6], {82}	; 0x52
    2dfc:	00009404 	andeq	r9, r0, r4, lsl #8
    2e00:	e10a3000 	mrs	r3, (UNDEF: 10)
    2e04:	0600000e 	streq	r0, [r0], -lr
    2e08:	008904bd 			; <UNDEFINED> instruction: 0x008904bd
    2e0c:	0a320000 	beq	c82e14 <__Main_Stack_Size+0xc82a14>
    2e10:	00000cea 	andeq	r0, r0, sl, ror #25
    2e14:	9404be06 	strls	fp, [r4], #-3590	; 0xfffff1fa
    2e18:	34000000 	strcc	r0, [r0], #-0
    2e1c:	000eec0a 	andeq	lr, lr, sl, lsl #24
    2e20:	04bf0600 	ldrteq	r0, [pc], #1536	; 2e28 <__Main_Stack_Size+0x2a28>
    2e24:	00000089 	andeq	r0, r0, r9, lsl #1
    2e28:	0cef0a36 	vstmiaeq	pc!, {s1-s54}
    2e2c:	c0060000 	andgt	r0, r6, r0
    2e30:	00009404 	andeq	r9, r0, r4, lsl #8
    2e34:	f70a3800 			; <UNDEFINED> instruction: 0xf70a3800
    2e38:	0600000e 	streq	r0, [r0], -lr
    2e3c:	008904c1 	addeq	r0, r9, r1, asr #9
    2e40:	0a3a0000 	beq	e82e48 <__Main_Stack_Size+0xe82a48>
    2e44:	00000cf4 	strdeq	r0, [r0], -r4
    2e48:	9404c206 	strls	ip, [r4], #-518	; 0xfffffdfa
    2e4c:	3c000000 	stccc	0, cr0, [r0], {-0}
    2e50:	000f020a 	andeq	r0, pc, sl, lsl #4
    2e54:	04c30600 	strbeq	r0, [r3], #1536	; 0x600
    2e58:	00000089 	andeq	r0, r0, r9, lsl #1
    2e5c:	0cf90a3e 	vldmiaeq	r9!, {s1-s62}
    2e60:	c4060000 	strgt	r0, [r6], #-0
    2e64:	00009404 	andeq	r9, r0, r4, lsl #8
    2e68:	0d0a4000 	stceq	0, cr4, [sl, #-0]
    2e6c:	0600000f 	streq	r0, [r0], -pc
    2e70:	008904c5 	addeq	r0, r9, r5, asr #9
    2e74:	0a420000 	beq	1082e7c <__Main_Stack_Size+0x1082a7c>
    2e78:	00000fdc 	ldrdeq	r0, [r0], -ip
    2e7c:	9404c606 	strls	ip, [r4], #-1542	; 0xfffff9fa
    2e80:	44000000 	strmi	r0, [r0], #-0
    2e84:	000f180a 	andeq	r1, pc, sl, lsl #16
    2e88:	04c70600 	strbeq	r0, [r7], #1536	; 0x600
    2e8c:	00000089 	andeq	r0, r0, r9, lsl #1
    2e90:	43440946 	movtmi	r0, #18758	; 0x4946
    2e94:	c8060052 	stmdagt	r6, {r1, r4, r6}
    2e98:	00009404 	andeq	r9, r0, r4, lsl #8
    2e9c:	230a4800 	movwcs	r4, #43008	; 0xa800
    2ea0:	0600000f 	streq	r0, [r0], -pc
    2ea4:	008904c9 	addeq	r0, r9, r9, asr #9
    2ea8:	0a4a0000 	beq	1282eb0 <__Main_Stack_Size+0x1282ab0>
    2eac:	00000cdb 	ldrdeq	r0, [r0], -fp
    2eb0:	9404ca06 	strls	ip, [r4], #-2566	; 0xfffff5fa
    2eb4:	4c000000 	stcmi	0, cr0, [r0], {-0}
    2eb8:	000f2e0a 	andeq	r2, pc, sl, lsl #28
    2ebc:	04cb0600 	strbeq	r0, [fp], #1536	; 0x600
    2ec0:	00000089 	andeq	r0, r0, r9, lsl #1
    2ec4:	540b004e 	strpl	r0, [fp], #-78	; 0xffffffb2
    2ec8:	0600000d 	streq	r0, [r0], -sp
    2ecc:	023f04cc 	eorseq	r0, pc, #204, 8	; 0xcc000000
    2ed0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    2ed4:	0006e704 	andeq	lr, r6, r4, lsl #14
    2ed8:	06d50300 	ldrbeq	r0, [r5], r0, lsl #6
    2edc:	0c070000 	stceq	0, cr0, [r7], {-0}
    2ee0:	000000be 	strheq	r0, [r0], -lr
    2ee4:	000a2803 	andeq	r2, sl, r3, lsl #16
    2ee8:	5e2c0800 	cdppl	8, 2, cr0, cr12, cr0, {0}
    2eec:	03000000 	movweq	r0, #0
    2ef0:	0000080f 	andeq	r0, r0, pc, lsl #16
    2ef4:	005e7208 	subseq	r7, lr, r8, lsl #4
    2ef8:	b60b0000 	strlt	r0, [fp], -r0
    2efc:	09000006 	stmdbeq	r0, {r1, r2}
    2f00:	00c50165 	sbceq	r0, r5, r5, ror #2
    2f04:	040c0000 	streq	r0, [ip], #-0
    2f08:	04afa608 	strteq	sl, [pc], #1544	; 2f10 <__Main_Stack_Size+0x2b10>
    2f0c:	b00d0000 	andlt	r0, sp, r0
    2f10:	08000006 	stmdaeq	r0, {r1, r2}
    2f14:	000484a8 	andeq	r8, r4, r8, lsr #9
    2f18:	06560d00 	ldrbeq	r0, [r6], -r0, lsl #26
    2f1c:	a9080000 	stmdbge	r8, {}	; <UNPREDICTABLE>
    2f20:	000004af 	andeq	r0, r0, pc, lsr #9
    2f24:	00820e00 	addeq	r0, r2, r0, lsl #28
    2f28:	04bf0000 	ldrteq	r0, [pc], #0	; 2f30 <__Main_Stack_Size+0x2b30>
    2f2c:	c50f0000 	strgt	r0, [pc, #-0]	; 2f34 <__Main_Stack_Size+0x2b34>
    2f30:	03000000 	movweq	r0, #0
    2f34:	08081000 	stmdaeq	r8, {ip}
    2f38:	0004e0a3 	andeq	lr, r4, r3, lsr #1
    2f3c:	07f11100 	ldrbeq	r1, [r1, r0, lsl #2]!
    2f40:	a5080000 	strge	r0, [r8, #-0]
    2f44:	000000be 	strheq	r0, [r0], -lr
    2f48:	07f91100 	ldrbeq	r1, [r9, r0, lsl #2]!
    2f4c:	aa080000 	bge	202f54 <__Main_Stack_Size+0x202b54>
    2f50:	00000490 	muleq	r0, r0, r4
    2f54:	69030004 	stmdbvs	r3, {r2}
    2f58:	08000007 	stmdaeq	r0, {r0, r1, r2}
    2f5c:	0004bfab 	andeq	fp, r4, fp, lsr #31
    2f60:	061f0300 	ldreq	r0, [pc], -r0, lsl #6
    2f64:	af080000 	svcge	0x00080000
    2f68:	00000463 	andeq	r0, r0, r3, ror #8
    2f6c:	04130412 	ldreq	r0, [r3], #-1042	; 0xfffffbee
    2f70:	000004fe 	strdeq	r0, [r0], -lr
    2f74:	95060102 	strls	r0, [r6, #-258]	; 0xfffffefe
    2f78:	14000000 	strne	r0, [r0], #-0
    2f7c:	000004fe 	strdeq	r0, [r0], -lr
    2f80:	00085703 	andeq	r5, r8, r3, lsl #14
    2f84:	b0160a00 	andslt	r0, r6, r0, lsl #20
    2f88:	15000000 	strne	r0, [r0, #-0]
    2f8c:	00000630 	andeq	r0, r0, r0, lsr r6
    2f90:	682f0a18 	stmdavs	pc!, {r3, r4, r9, fp}	; <UNPREDICTABLE>
    2f94:	11000005 	tstne	r0, r5
    2f98:	00000794 	muleq	r0, r4, r7
    2f9c:	0568310a 	strbeq	r3, [r8, #-266]!	; 0xfffffef6
    2fa0:	16000000 	strne	r0, [r0], -r0
    2fa4:	0a006b5f 	beq	1dd28 <__Main_Stack_Size+0x1d928>
    2fa8:	0000be32 	andeq	fp, r0, r2, lsr lr
    2fac:	dc110400 	cfldrsle	mvf0, [r1], {-0}
    2fb0:	0a000007 	beq	2fd4 <__Main_Stack_Size+0x2bd4>
    2fb4:	0000be32 	andeq	fp, r0, r2, lsr lr
    2fb8:	19110800 	ldmdbne	r1, {fp}
    2fbc:	0a000006 	beq	2fdc <__Main_Stack_Size+0x2bdc>
    2fc0:	0000be32 	andeq	fp, r0, r2, lsr lr
    2fc4:	8c110c00 	ldchi	12, cr0, [r1], {-0}
    2fc8:	0a000008 	beq	2ff0 <__Main_Stack_Size+0x2bf0>
    2fcc:	0000be32 	andeq	fp, r0, r2, lsr lr
    2fd0:	5f161000 	svcpl	0x00161000
    2fd4:	330a0078 	movwcc	r0, #41080	; 0xa078
    2fd8:	0000056e 	andeq	r0, r0, lr, ror #10
    2fdc:	04130014 	ldreq	r0, [r3], #-20	; 0xffffffec
    2fe0:	00000515 	andeq	r0, r0, r5, lsl r5
    2fe4:	00050a0e 	andeq	r0, r5, lr, lsl #20
    2fe8:	00057e00 	andeq	r7, r5, r0, lsl #28
    2fec:	00c50f00 	sbceq	r0, r5, r0, lsl #30
    2ff0:	00000000 	andeq	r0, r0, r0
    2ff4:	00065115 	andeq	r5, r6, r5, lsl r1
    2ff8:	370a2400 	strcc	r2, [sl, -r0, lsl #8]
    2ffc:	000005f7 	strdeq	r0, [r0], -r7
    3000:	00055511 	andeq	r5, r5, r1, lsl r5
    3004:	be390a00 	vaddlt.f32	s0, s18, s0
    3008:	00000000 	andeq	r0, r0, r0
    300c:	00081711 	andeq	r1, r8, r1, lsl r7
    3010:	be3a0a00 	vaddlt.f32	s0, s20, s0
    3014:	04000000 	streq	r0, [r0], #-0
    3018:	00056a11 	andeq	r6, r5, r1, lsl sl
    301c:	be3b0a00 	vaddlt.f32	s0, s22, s0
    3020:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    3024:	00090511 	andeq	r0, r9, r1, lsl r5
    3028:	be3c0a00 	vaddlt.f32	s0, s24, s0
    302c:	0c000000 	stceq	0, cr0, [r0], {-0}
    3030:	0006fa11 	andeq	pc, r6, r1, lsl sl	; <UNPREDICTABLE>
    3034:	be3d0a00 	vaddlt.f32	s0, s26, s0
    3038:	10000000 	andne	r0, r0, r0
    303c:	0006cb11 	andeq	ip, r6, r1, lsl fp
    3040:	be3e0a00 	vaddlt.f32	s0, s28, s0
    3044:	14000000 	strne	r0, [r0], #-0
    3048:	00089111 	andeq	r9, r8, r1, lsl r1
    304c:	be3f0a00 	vaddlt.f32	s0, s30, s0
    3050:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    3054:	00074b11 	andeq	r4, r7, r1, lsl fp
    3058:	be400a00 	vmlalt.f32	s1, s0, s0
    305c:	1c000000 	stcne	0, cr0, [r0], {-0}
    3060:	0008cc11 	andeq	ip, r8, r1, lsl ip
    3064:	be410a00 	vmlalt.f32	s1, s2, s0
    3068:	20000000 	andcs	r0, r0, r0
    306c:	05791700 	ldrbeq	r1, [r9, #-1792]!	; 0xfffff900
    3070:	01080000 	mrseq	r0, (UNDEF: 8)
    3074:	06374a0a 	ldrteq	r4, [r7], -sl, lsl #20
    3078:	07110000 	ldreq	r0, [r1, -r0]
    307c:	0a000006 	beq	309c <__Main_Stack_Size+0x2c9c>
    3080:	0006374b 	andeq	r3, r6, fp, asr #14
    3084:	e5110000 	ldr	r0, [r1, #-0]
    3088:	0a000004 	beq	30a0 <__Main_Stack_Size+0x2ca0>
    308c:	0006374c 	andeq	r3, r6, ip, asr #14
    3090:	49188000 	ldmdbmi	r8, {pc}
    3094:	0a000008 	beq	30bc <__Main_Stack_Size+0x2cbc>
    3098:	00050a4e 	andeq	r0, r5, lr, asr #20
    309c:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    30a0:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
    30a4:	050a510a 	streq	r5, [sl, #-266]	; 0xfffffef6
    30a8:	01040000 	mrseq	r0, (UNDEF: 4)
    30ac:	04f60e00 	ldrbteq	r0, [r6], #3584	; 0xe00
    30b0:	06470000 	strbeq	r0, [r7], -r0
    30b4:	c50f0000 	strgt	r0, [pc, #-0]	; 30bc <__Main_Stack_Size+0x2cbc>
    30b8:	1f000000 	svcne	0x00000000
    30bc:	07031700 	streq	r1, [r3, -r0, lsl #14]
    30c0:	01900000 	orrseq	r0, r0, r0
    30c4:	06855d0a 	streq	r5, [r5], sl, lsl #26
    30c8:	94110000 	ldrls	r0, [r1], #-0
    30cc:	0a000007 	beq	30f0 <__Main_Stack_Size+0x2cf0>
    30d0:	0006855e 	andeq	r8, r6, lr, asr r5
    30d4:	ac110000 	ldcge	0, cr0, [r1], {-0}
    30d8:	0a000007 	beq	30fc <__Main_Stack_Size+0x2cfc>
    30dc:	0000be5f 	andeq	fp, r0, pc, asr lr
    30e0:	0f110400 	svceq	0x00110400
    30e4:	0a000006 	beq	3104 <__Main_Stack_Size+0x2d04>
    30e8:	00068b61 	andeq	r8, r6, r1, ror #22
    30ec:	79110800 	ldmdbvc	r1, {fp}
    30f0:	0a000005 	beq	310c <__Main_Stack_Size+0x2d0c>
    30f4:	0005f762 	andeq	pc, r5, r2, ror #14
    30f8:	13008800 	movwne	r8, #2048	; 0x800
    30fc:	00064704 	andeq	r4, r6, r4, lsl #14
    3100:	069b0e00 	ldreq	r0, [fp], r0, lsl #28
    3104:	069b0000 	ldreq	r0, [fp], r0
    3108:	c50f0000 	strgt	r0, [pc, #-0]	; 3110 <__Main_Stack_Size+0x2d10>
    310c:	1f000000 	svcne	0x00000000
    3110:	a1041300 	mrsge	r1, LR_abt
    3114:	19000006 	stmdbne	r0, {r1, r2}
    3118:	00075515 	andeq	r5, r7, r5, lsl r5
    311c:	750a0800 	strvc	r0, [sl, #-2048]	; 0xfffff800
    3120:	000006c7 	andeq	r0, r0, r7, asr #13
    3124:	00056411 	andeq	r6, r5, r1, lsl r4
    3128:	c7760a00 	ldrbgt	r0, [r6, -r0, lsl #20]!
    312c:	00000006 	andeq	r0, r0, r6
    3130:	000b4811 	andeq	r4, fp, r1, lsl r8
    3134:	be770a00 	vaddlt.f32	s1, s14, s0
    3138:	04000000 	streq	r0, [r0], #-0
    313c:	82041300 	andhi	r1, r4, #0, 6
    3140:	15000000 	strne	r0, [r0, #-0]
    3144:	00000774 	andeq	r0, r0, r4, ror r7
    3148:	f7b50a68 			; <UNDEFINED> instruction: 0xf7b50a68
    314c:	16000007 	strne	r0, [r0], -r7
    3150:	0a00705f 	beq	1f2d4 <__Main_Stack_Size+0x1eed4>
    3154:	0006c7b6 			; <UNDEFINED> instruction: 0x0006c7b6
    3158:	5f160000 	svcpl	0x00160000
    315c:	b70a0072 	smlsdxlt	sl, r2, r0, r0
    3160:	000000be 	strheq	r0, [r0], -lr
    3164:	775f1604 	ldrbvc	r1, [pc, -r4, lsl #12]
    3168:	beb80a00 	vmovlt.f32	s0, #128	; 0xc0000000 -2.0
    316c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    3170:	0005b511 	andeq	fp, r5, r1, lsl r5
    3174:	47b90a00 	ldrmi	r0, [r9, r0, lsl #20]!
    3178:	0c000000 	stceq	0, cr0, [r0], {-0}
    317c:	00066d11 	andeq	r6, r6, r1, lsl sp
    3180:	47ba0a00 	ldrmi	r0, [sl, r0, lsl #20]!
    3184:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    3188:	66625f16 	uqadd16vs	r5, r2, r6
    318c:	a2bb0a00 	adcsge	r0, fp, #0, 20
    3190:	10000006 	andne	r0, r0, r6
    3194:	00052411 	andeq	r2, r5, r1, lsl r4
    3198:	bebc0a00 	vmovlt.f32	s0, #192	; 0xbe000000 -0.125
    319c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    31a0:	00058711 	andeq	r8, r5, r1, lsl r7
    31a4:	f6c30a00 			; <UNDEFINED> instruction: 0xf6c30a00
    31a8:	1c000004 	stcne	0, cr0, [r0], {4}
    31ac:	000e7311 	andeq	r7, lr, r1, lsl r3
    31b0:	52c50a00 	sbcpl	r0, r5, #0, 20
    31b4:	20000009 	andcs	r0, r0, r9
    31b8:	00140711 	andseq	r0, r4, r1, lsl r7
    31bc:	7cc70a00 	vstmiavc	r7, {s1-s0}
    31c0:	24000009 	strcs	r0, [r0], #-9
    31c4:	00080111 	andeq	r0, r8, r1, lsl r1
    31c8:	a0ca0a00 	sbcge	r0, sl, r0, lsl #20
    31cc:	28000009 	stmdacs	r0, {r0, r3}
    31d0:	0008e611 	andeq	lr, r8, r1, lsl r6
    31d4:	bacb0a00 	blt	ff2c59dc <_estack+0xdf2c09dc>
    31d8:	2c000009 	stccs	0, cr0, [r0], {9}
    31dc:	62755f16 	rsbsvs	r5, r5, #22, 30	; 0x58
    31e0:	a2ce0a00 	sbcge	r0, lr, #0, 20
    31e4:	30000006 	andcc	r0, r0, r6
    31e8:	70755f16 	rsbsvc	r5, r5, r6, lsl pc
    31ec:	c7cf0a00 	strbgt	r0, [pc, r0, lsl #20]
    31f0:	38000006 	stmdacc	r0, {r1, r2}
    31f4:	72755f16 	rsbsvc	r5, r5, #22, 30	; 0x58
    31f8:	bed00a00 	vfnmslt.f32	s1, s0, s0
    31fc:	3c000000 	stccc	0, cr0, [r0], {-0}
    3200:	00055e11 	andeq	r5, r5, r1, lsl lr
    3204:	c0d30a00 	sbcsgt	r0, r3, r0, lsl #20
    3208:	40000009 	andmi	r0, r0, r9
    320c:	0008be11 	andeq	fp, r8, r1, lsl lr
    3210:	d0d40a00 	sbcsle	r0, r4, r0, lsl #20
    3214:	43000009 	movwmi	r0, #9
    3218:	626c5f16 	rsbvs	r5, ip, #22, 30	; 0x58
    321c:	a2d70a00 	sbcsge	r0, r7, #0, 20
    3220:	44000006 	strmi	r0, [r0], #-6
    3224:	000be211 	andeq	lr, fp, r1, lsl r2
    3228:	beda0a00 	vfnmslt.f32	s1, s20, s0
    322c:	4c000000 	stcmi	0, cr0, [r0], {-0}
    3230:	0005e011 	andeq	lr, r5, r1, lsl r0
    3234:	6edb0a00 	vfnmsvs.f32	s1, s22, s0
    3238:	50000004 	andpl	r0, r0, r4
    323c:	0009d911 	andeq	sp, r9, r1, lsl r9
    3240:	15de0a00 	ldrbne	r0, [lr, #2560]	; 0xa00
    3244:	54000008 	strpl	r0, [r0], #-8
    3248:	0006bd11 	andeq	fp, r6, r1, lsl sp
    324c:	ebe20a00 	bl	ff885a54 <_estack+0xdf880a54>
    3250:	58000004 	stmdapl	r0, {r2}
    3254:	00078611 	andeq	r8, r7, r1, lsl r6
    3258:	e0e40a00 	rsc	r0, r4, r0, lsl #20
    325c:	5c000004 	stcpl	0, cr0, [r0], {4}
    3260:	0006c311 	andeq	ip, r6, r1, lsl r3
    3264:	bee50a00 	vfmalt.f32	s1, s10, s0
    3268:	64000000 	strvs	r0, [r0], #-0
    326c:	00be1a00 	adcseq	r1, lr, r0, lsl #20
    3270:	08150000 	ldmdaeq	r5, {}	; <UNPREDICTABLE>
    3274:	151b0000 	ldrne	r0, [fp, #-0]
    3278:	1b000008 	blne	32a0 <__Main_Stack_Size+0x2ea0>
    327c:	000004f6 	strdeq	r0, [r0], -r6
    3280:	0004f81b 	andeq	pc, r4, fp, lsl r8	; <UNPREDICTABLE>
    3284:	00be1b00 	adcseq	r1, lr, r0, lsl #22
    3288:	13000000 	movwne	r0, #0
    328c:	00082004 	andeq	r2, r8, r4
    3290:	08151400 	ldmdaeq	r5, {sl, ip}
    3294:	e41c0000 	ldr	r0, [ip], #-0
    3298:	28000007 	stmdacs	r0, {r0, r1, r2}
    329c:	02390a04 	eorseq	r0, r9, #4, 20	; 0x4000
    32a0:	00000952 	andeq	r0, r0, r2, asr r9
    32a4:	0005980a 	andeq	r9, r5, sl, lsl #16
    32a8:	023b0a00 	eorseq	r0, fp, #0, 20
    32ac:	000000be 	strheq	r0, [r0], -lr
    32b0:	05c40a00 	strbeq	r0, [r4, #2560]	; 0xa00
    32b4:	400a0000 	andmi	r0, sl, r0
    32b8:	000a2702 	andeq	r2, sl, r2, lsl #14
    32bc:	5d0a0400 	cfstrspl	mvf0, [sl, #-0]
    32c0:	0a000006 	beq	32e0 <__Main_Stack_Size+0x2ee0>
    32c4:	0a270240 	beq	9c3bcc <__Main_Stack_Size+0x9c37cc>
    32c8:	0a080000 	beq	2032d0 <__Main_Stack_Size+0x202ed0>
    32cc:	00000628 	andeq	r0, r0, r8, lsr #12
    32d0:	2702400a 	strcs	r4, [r2, -sl]
    32d4:	0c00000a 	stceq	0, cr0, [r0], {10}
    32d8:	0007a70a 	andeq	sl, r7, sl, lsl #14
    32dc:	02420a00 	subeq	r0, r2, #0, 20
    32e0:	000000be 	strheq	r0, [r0], -lr
    32e4:	04f90a10 	ldrbteq	r0, [r9], #2576	; 0xa10
    32e8:	430a0000 	movwmi	r0, #40960	; 0xa000
    32ec:	000c0902 	andeq	r0, ip, r2, lsl #18
    32f0:	c30a1400 	movwgt	r1, #41984	; 0xa400
    32f4:	0a000007 	beq	3318 <__Main_Stack_Size+0x2f18>
    32f8:	00be0246 	adcseq	r0, lr, r6, asr #4
    32fc:	0a300000 	beq	c03304 <__Main_Stack_Size+0xc02f04>
    3300:	000007b1 			; <UNDEFINED> instruction: 0x000007b1
    3304:	1e02470a 	cdpne	7, 0, cr4, cr2, cr10, {0}
    3308:	3400000c 	strcc	r0, [r0], #-12
    330c:	00070b0a 	andeq	r0, r7, sl, lsl #22
    3310:	02490a00 	subeq	r0, r9, #0, 20
    3314:	000000be 	strheq	r0, [r0], -lr
    3318:	07b90a38 			; <UNDEFINED> instruction: 0x07b90a38
    331c:	4b0a0000 	blmi	283324 <__Main_Stack_Size+0x282f24>
    3320:	000c2f02 	andeq	r2, ip, r2, lsl #30
    3324:	a80a3c00 	stmdage	sl, {sl, fp, ip, sp}
    3328:	0a000006 	beq	3348 <__Main_Stack_Size+0x2f48>
    332c:	0568024e 	strbeq	r0, [r8, #-590]!	; 0xfffffdb2
    3330:	0a400000 	beq	1003338 <__Main_Stack_Size+0x1002f38>
    3334:	00000647 	andeq	r0, r0, r7, asr #12
    3338:	be024f0a 	cdplt	15, 0, cr4, cr2, cr10, {0}
    333c:	44000000 	strmi	r0, [r0], #-0
    3340:	0009000a 	andeq	r0, r9, sl
    3344:	02500a00 	subseq	r0, r0, #0, 20
    3348:	00000568 	andeq	r0, r0, r8, ror #10
    334c:	07160a48 	ldreq	r0, [r6, -r8, asr #20]
    3350:	510a0000 	mrspl	r0, (UNDEF: 10)
    3354:	000c3502 	andeq	r3, ip, r2, lsl #10
    3358:	650a4c00 	strvs	r4, [sl, #-3072]	; 0xfffff400
    335c:	0a000006 	beq	337c <__Main_Stack_Size+0x2f7c>
    3360:	00be0254 	adcseq	r0, lr, r4, asr r2
    3364:	0a500000 	beq	140336c <__Main_Stack_Size+0x1402f6c>
    3368:	000005d8 	ldrdeq	r0, [r0], -r8
    336c:	f802550a 			; <UNDEFINED> instruction: 0xf802550a
    3370:	54000004 	strpl	r0, [r0], #-4
    3374:	00073d0a 	andeq	r3, r7, sl, lsl #26
    3378:	02780a00 	rsbseq	r0, r8, #0, 20
    337c:	00000be7 	andeq	r0, r0, r7, ror #23
    3380:	07031d58 	smlsdeq	r3, r8, sp, r1
    3384:	7c0a0000 	stcvc	0, cr0, [sl], {-0}
    3388:	00068502 	andeq	r8, r6, r2, lsl #10
    338c:	1d014800 	stcne	8, cr4, [r1, #-0]
    3390:	00000686 	andeq	r0, r0, r6, lsl #13
    3394:	47027d0a 	strmi	r7, [r2, -sl, lsl #26]
    3398:	4c000006 	stcmi	0, cr0, [r0], {6}
    339c:	08b41d01 	ldmeq	r4!, {r0, r8, sl, fp, ip}
    33a0:	810a0000 	mrshi	r0, (UNDEF: 10)
    33a4:	000c4602 	andeq	r4, ip, r2, lsl #12
    33a8:	1d02dc00 	stcne	12, cr13, [r2, #-0]
    33ac:	0000058f 	andeq	r0, r0, pc, lsl #11
    33b0:	ec02860a 	stc	6, cr8, [r2], {10}
    33b4:	e0000009 	and	r0, r0, r9
    33b8:	05741d02 	ldrbeq	r1, [r4, #-3330]!	; 0xfffff2fe
    33bc:	870a0000 	strhi	r0, [sl, -r0]
    33c0:	000c5202 	andeq	r5, ip, r2, lsl #4
    33c4:	0002ec00 	andeq	lr, r2, r0, lsl #24
    33c8:	07f70413 			; <UNDEFINED> instruction: 0x07f70413
    33cc:	be1a0000 	cdplt	0, 1, cr0, cr10, cr0, {0}
    33d0:	76000000 	strvc	r0, [r0], -r0
    33d4:	1b000009 	blne	3400 <__Main_Stack_Size+0x3000>
    33d8:	00000815 	andeq	r0, r0, r5, lsl r8
    33dc:	0004f61b 	andeq	pc, r4, fp, lsl r6	; <UNPREDICTABLE>
    33e0:	09761b00 	ldmdbeq	r6!, {r8, r9, fp, ip}^
    33e4:	be1b0000 	cdplt	0, 1, cr0, cr11, cr0, {0}
    33e8:	00000000 	andeq	r0, r0, r0
    33ec:	05050413 	streq	r0, [r5, #-1043]	; 0xfffffbed
    33f0:	04130000 	ldreq	r0, [r3], #-0
    33f4:	00000958 	andeq	r0, r0, r8, asr r9
    33f8:	0004791a 	andeq	r7, r4, sl, lsl r9
    33fc:	0009a000 	andeq	sl, r9, r0
    3400:	08151b00 	ldmdaeq	r5, {r8, r9, fp, ip}
    3404:	f61b0000 			; <UNDEFINED> instruction: 0xf61b0000
    3408:	1b000004 	blne	3420 <__Main_Stack_Size+0x3020>
    340c:	00000479 	andeq	r0, r0, r9, ror r4
    3410:	0000be1b 	andeq	fp, r0, fp, lsl lr
    3414:	04130000 	ldreq	r0, [r3], #-0
    3418:	00000982 	andeq	r0, r0, r2, lsl #19
    341c:	0000be1a 	andeq	fp, r0, sl, lsl lr
    3420:	0009ba00 	andeq	fp, r9, r0, lsl #20
    3424:	08151b00 	ldmdaeq	r5, {r8, r9, fp, ip}
    3428:	f61b0000 			; <UNDEFINED> instruction: 0xf61b0000
    342c:	00000004 	andeq	r0, r0, r4
    3430:	09a60413 	stmibeq	r6!, {r0, r1, r4, sl}
    3434:	820e0000 	andhi	r0, lr, #0
    3438:	d0000000 	andle	r0, r0, r0
    343c:	0f000009 	svceq	0x00000009
    3440:	000000c5 	andeq	r0, r0, r5, asr #1
    3444:	820e0002 	andhi	r0, lr, #2
    3448:	e0000000 	and	r0, r0, r0
    344c:	0f000009 	svceq	0x00000009
    3450:	000000c5 	andeq	r0, r0, r5, asr #1
    3454:	620b0000 	andvs	r0, fp, #0
    3458:	0a000007 	beq	347c <__Main_Stack_Size+0x307c>
    345c:	06cd011f 			; <UNDEFINED> instruction: 0x06cd011f
    3460:	9b1e0000 	blls	783468 <__Main_Stack_Size+0x783068>
    3464:	0c000008 	stceq	0, cr0, [r0], {8}
    3468:	2101230a 	tstcs	r1, sl, lsl #6
    346c:	0a00000a 	beq	349c <__Main_Stack_Size+0x309c>
    3470:	00000794 	muleq	r0, r4, r7
    3474:	2101250a 	tstcs	r1, sl, lsl #10
    3478:	0000000a 	andeq	r0, r0, sl
    347c:	0006730a 	andeq	r7, r6, sl, lsl #6
    3480:	01260a00 			; <UNDEFINED> instruction: 0x01260a00
    3484:	000000be 	strheq	r0, [r0], -lr
    3488:	075c0a04 	ldrbeq	r0, [ip, -r4, lsl #20]
    348c:	270a0000 	strcs	r0, [sl, -r0]
    3490:	000a2701 	andeq	r2, sl, r1, lsl #14
    3494:	13000800 	movwne	r0, #2048	; 0x800
    3498:	0009ec04 	andeq	lr, r9, r4, lsl #24
    349c:	e0041300 	and	r1, r4, r0, lsl #6
    34a0:	1e000009 	cdpne	0, 0, cr0, cr0, cr9, {0}
    34a4:	000004f1 	strdeq	r0, [r0], -r1
    34a8:	013f0a0e 	teqeq	pc, lr, lsl #20
    34ac:	00000a62 	andeq	r0, r0, r2, ror #20
    34b0:	0007eb0a 	andeq	lr, r7, sl, lsl #22
    34b4:	01400a00 	cmpeq	r0, r0, lsl #20
    34b8:	00000a62 	andeq	r0, r0, r2, ror #20
    34bc:	08360a00 	ldmdaeq	r6!, {r9, fp}
    34c0:	410a0000 	mrsmi	r0, (UNDEF: 10)
    34c4:	000a6201 	andeq	r6, sl, r1, lsl #4
    34c8:	520a0600 	andpl	r0, sl, #0, 12
    34cc:	0a000008 	beq	34f4 <__Main_Stack_Size+0x30f4>
    34d0:	00990142 	addseq	r0, r9, r2, asr #2
    34d4:	000c0000 	andeq	r0, ip, r0
    34d8:	0000990e 	andeq	r9, r0, lr, lsl #18
    34dc:	000a7200 	andeq	r7, sl, r0, lsl #4
    34e0:	00c50f00 	sbceq	r0, r5, r0, lsl #30
    34e4:	00020000 	andeq	r0, r2, r0
    34e8:	590ad008 	stmdbpl	sl, {r3, ip, lr, pc}
    34ec:	000b7302 	andeq	r7, fp, r2, lsl #6
    34f0:	087f0a00 	ldmdaeq	pc!, {r9, fp}^	; <UNPREDICTABLE>
    34f4:	5b0a0000 	blpl	2834fc <__Main_Stack_Size+0x2830fc>
    34f8:	0000c502 	andeq	ip, r0, r2, lsl #10
    34fc:	3c0a0000 	stccc	0, cr0, [sl], {-0}
    3500:	0a000008 	beq	3528 <__Main_Stack_Size+0x3128>
    3504:	04f8025c 	ldrbteq	r0, [r8], #604	; 0x25c
    3508:	0a040000 	beq	103510 <__Main_Stack_Size+0x103110>
    350c:	0000069b 	muleq	r0, fp, r6
    3510:	73025d0a 	movwvc	r5, #11530	; 0x2d0a
    3514:	0800000b 	stmdaeq	r0, {r0, r1, r3}
    3518:	0008d70a 	andeq	sp, r8, sl, lsl #14
    351c:	025e0a00 	subseq	r0, lr, #0, 20
    3520:	0000057e 	andeq	r0, r0, lr, ror r5
    3524:	06380a24 	ldrteq	r0, [r8], -r4, lsr #20
    3528:	5f0a0000 	svcpl	0x000a0000
    352c:	0000be02 	andeq	fp, r0, r2, lsl #28
    3530:	8f0a4800 	svchi	0x000a4800
    3534:	0a000007 	beq	3558 <__Main_Stack_Size+0x3158>
    3538:	00b70260 	adcseq	r0, r7, r0, ror #4
    353c:	0a500000 	beq	1403544 <__Main_Stack_Size+0x1403144>
    3540:	000008ed 	andeq	r0, r0, sp, ror #17
    3544:	2d02610a 	stfcss	f6, [r2, #-40]	; 0xffffffd8
    3548:	5800000a 	stmdapl	r0, {r1, r3}
    354c:	00079a0a 	andeq	r9, r7, sl, lsl #20
    3550:	02620a00 	rsbeq	r0, r2, #0, 20
    3554:	000004e0 	andeq	r0, r0, r0, ror #9
    3558:	08f20a68 	ldmeq	r2!, {r3, r5, r6, r9, fp}^
    355c:	630a0000 	movwvs	r0, #40960	; 0xa000
    3560:	0004e002 	andeq	lr, r4, r2
    3564:	470a7000 	strmi	r7, [sl, -r0]
    3568:	0a000005 	beq	3584 <__Main_Stack_Size+0x3184>
    356c:	04e00264 	strbteq	r0, [r0], #612	; 0x264
    3570:	0a780000 	beq	1e03578 <__Main_Stack_Size+0x1e03178>
    3574:	000008aa 	andeq	r0, r0, sl, lsr #17
    3578:	8302650a 	movwhi	r6, #9482	; 0x250a
    357c:	8000000b 	andhi	r0, r0, fp
    3580:	00068f0a 	andeq	r8, r6, sl, lsl #30
    3584:	02660a00 	rsbeq	r0, r6, #0, 20
    3588:	00000b93 	muleq	r0, r3, fp
    358c:	085f0a88 	ldmdaeq	pc, {r3, r7, r9, fp}^	; <UNPREDICTABLE>
    3590:	670a0000 	strvs	r0, [sl, -r0]
    3594:	0000be02 	andeq	fp, r0, r2, lsl #28
    3598:	f90aa000 			; <UNDEFINED> instruction: 0xf90aa000
    359c:	0a000005 	beq	35b8 <__Main_Stack_Size+0x31b8>
    35a0:	04e00268 	strbteq	r0, [r0], #616	; 0x268
    35a4:	0aa40000 	beq	fe9035ac <_estack+0xde8fe5ac>
    35a8:	00000538 	andeq	r0, r0, r8, lsr r5
    35ac:	e002690a 	and	r6, r2, sl, lsl #18
    35b0:	ac000004 	stcge	0, cr0, [r0], {4}
    35b4:	0005e80a 	andeq	lr, r5, sl, lsl #16
    35b8:	026a0a00 	rsbeq	r0, sl, #0, 20
    35bc:	000004e0 	andeq	r0, r0, r0, ror #9
    35c0:	05040ab4 	streq	r0, [r4, #-2740]	; 0xfffff54c
    35c4:	6b0a0000 	blvs	2835cc <__Main_Stack_Size+0x2831cc>
    35c8:	0004e002 	andeq	lr, r4, r2
    35cc:	130abc00 	movwne	fp, #44032	; 0xac00
    35d0:	0a000005 	beq	35ec <__Main_Stack_Size+0x31ec>
    35d4:	04e0026c 	strbteq	r0, [r0], #620	; 0x26c
    35d8:	0ac40000 	beq	ff1035e0 <_estack+0xdf0fe5e0>
    35dc:	00000742 	andeq	r0, r0, r2, asr #14
    35e0:	be026d0a 	cdplt	13, 0, cr6, cr2, cr10, {0}
    35e4:	cc000000 	stcgt	0, cr0, [r0], {-0}
    35e8:	04fe0e00 	ldrbteq	r0, [lr], #3584	; 0xe00
    35ec:	0b830000 	bleq	fe0c35f4 <_estack+0xde0be5f4>
    35f0:	c50f0000 	strgt	r0, [pc, #-0]	; 35f8 <__Main_Stack_Size+0x31f8>
    35f4:	19000000 	stmdbne	r0, {}	; <UNPREDICTABLE>
    35f8:	04fe0e00 	ldrbteq	r0, [lr], #3584	; 0xe00
    35fc:	0b930000 	bleq	fe4c3604 <_estack+0xde4be604>
    3600:	c50f0000 	strgt	r0, [pc, #-0]	; 3608 <__Main_Stack_Size+0x3208>
    3604:	07000000 	streq	r0, [r0, -r0]
    3608:	04fe0e00 	ldrbteq	r0, [lr], #3584	; 0xe00
    360c:	0ba30000 	bleq	fe8c3614 <_estack+0xde8be614>
    3610:	c50f0000 	strgt	r0, [pc, #-0]	; 3618 <__Main_Stack_Size+0x3218>
    3614:	17000000 	strne	r0, [r0, -r0]
    3618:	0af00800 	beq	ffc05620 <_estack+0xdfc00620>
    361c:	0bc70272 	bleq	ff1c3fec <_estack+0xdf1befec>
    3620:	f30a0000 	vhadd.u8	d0, d10, d0
    3624:	0a000006 	beq	3644 <__Main_Stack_Size+0x3244>
    3628:	0bc70275 	bleq	ff1c4004 <_estack+0xdf1bf004>
    362c:	0a000000 	beq	3634 <__Main_Stack_Size+0x3234>
    3630:	000008a1 	andeq	r0, r0, r1, lsr #17
    3634:	d702760a 	strle	r7, [r2, -sl, lsl #12]
    3638:	7800000b 	stmdavc	r0, {r0, r1, r3}
    363c:	06c70e00 	strbeq	r0, [r7], r0, lsl #28
    3640:	0bd70000 	bleq	ff5c3648 <_estack+0xdf5be648>
    3644:	c50f0000 	strgt	r0, [pc, #-0]	; 364c <__Main_Stack_Size+0x324c>
    3648:	1d000000 	stcne	0, cr0, [r0, #-0]
    364c:	00c50e00 	sbceq	r0, r5, r0, lsl #28
    3650:	0be70000 	bleq	ff9c3658 <_estack+0xdf9be658>
    3654:	c50f0000 	strgt	r0, [pc, #-0]	; 365c <__Main_Stack_Size+0x325c>
    3658:	1d000000 	stcne	0, cr0, [r0, #-0]
    365c:	0af01f00 	beq	ffc0b264 <_estack+0xdfc06264>
    3660:	0c090257 	sfmeq	f0, 4, [r9], {87}	; 0x57
    3664:	e4200000 	strt	r0, [r0], #-0
    3668:	0a000007 	beq	368c <__Main_Stack_Size+0x328c>
    366c:	0a72026e 	beq	1c8402c <__Main_Stack_Size+0x1c83c2c>
    3670:	c4200000 	strtgt	r0, [r0], #-0
    3674:	0a000008 	beq	369c <__Main_Stack_Size+0x329c>
    3678:	0ba30277 	bleq	fe8c405c <_estack+0xde8bf05c>
    367c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    3680:	000004fe 	strdeq	r0, [r0], -lr
    3684:	00000c19 	andeq	r0, r0, r9, lsl ip
    3688:	0000c50f 	andeq	ip, r0, pc, lsl #10
    368c:	21001800 	tstcs	r0, r0, lsl #16
    3690:	0000052d 	andeq	r0, r0, sp, lsr #10
    3694:	0c190413 	cfldrseq	mvf0, [r9], {19}
    3698:	2f220000 	svccs	0x00220000
    369c:	1b00000c 	blne	36d4 <__Main_Stack_Size+0x32d4>
    36a0:	00000815 	andeq	r0, r0, r5, lsl r8
    36a4:	24041300 	strcs	r1, [r4], #-768	; 0xfffffd00
    36a8:	1300000c 	movwne	r0, #12
    36ac:	00056804 	andeq	r6, r5, r4, lsl #16
    36b0:	0c462200 	sfmeq	f2, 2, [r6], {-0}
    36b4:	be1b0000 	cdplt	0, 1, cr0, cr11, cr0, {0}
    36b8:	00000000 	andeq	r0, r0, r0
    36bc:	0c4c0413 	cfstrdeq	mvd0, [ip], {19}
    36c0:	04130000 	ldreq	r0, [r3], #-0
    36c4:	00000c3b 	andeq	r0, r0, fp, lsr ip
    36c8:	0009e00e 	andeq	lr, r9, lr
    36cc:	000c6200 	andeq	r6, ip, r0, lsl #4
    36d0:	00c50f00 	sbceq	r0, r5, r0, lsl #30
    36d4:	00020000 	andeq	r0, r2, r0
    36d8:	00087306 	andeq	r7, r8, r6, lsl #6
    36dc:	02fe0a00 	rscseq	r0, lr, #0, 20
    36e0:	00000815 	andeq	r0, r0, r5, lsl r8
    36e4:	00086c06 	andeq	r6, r8, r6, lsl #24
    36e8:	02ff0a00 	rscseq	r0, pc, #0, 20
    36ec:	0000081b 	andeq	r0, r0, fp, lsl r8
    36f0:	000dd123 	andeq	sp, sp, r3, lsr #2
    36f4:	82010700 	andhi	r0, r1, #0, 14
    36f8:	0b000000 	bleq	3700 <__Main_Stack_Size+0x3300>
    36fc:	000ca40c 	andeq	sl, ip, ip, lsl #8
    3700:	0caa2400 	cfstrseq	mvf2, [sl]
    3704:	24000000 	strcs	r0, [r0], #-0
    3708:	00000dfe 	strdeq	r0, [r0], -lr
    370c:	0cfe2401 	cfldrdeq	mvd2, [lr], #4
    3710:	25020000 	strcs	r0, [r2, #-0]
    3714:	004d5750 	subeq	r5, sp, r0, asr r7
    3718:	20100003 	andscs	r0, r0, r3
    371c:	0cfb140b 	cfldrdeq	mvd1, [fp], #44	; 0x2c
    3720:	56160000 	ldrpl	r0, [r6], -r0
    3724:	160b004c 	strne	r0, [fp], -ip, asr #32
    3728:	0000004e 	andeq	r0, r0, lr, asr #32
    372c:	664b1600 	strbvs	r1, [fp], -r0, lsl #12
    3730:	4e170b00 	vnmlsmi.f64	d0, d7, d0
    3734:	04000000 	streq	r0, [r0], #-0
    3738:	00704b16 	rsbseq	r4, r0, r6, lsl fp
    373c:	004e180b 	subeq	r1, lr, fp, lsl #16
    3740:	16080000 	strne	r0, [r8], -r0
    3744:	0b00694b 	bleq	1dc78 <__Main_Stack_Size+0x1d878>
    3748:	00004e19 	andeq	r4, r0, r9, lsl lr
    374c:	4b160c00 	blmi	586754 <__Main_Stack_Size+0x586354>
    3750:	1a0b0064 	bne	2c38e8 <__Main_Stack_Size+0x2c34e8>
    3754:	0000004e 	andeq	r0, r0, lr, asr #32
    3758:	674b1610 	smlaldvs	r1, fp, r0, r6
    375c:	4e1b0b00 	vnmlsmi.f64	d0, d11, d0
    3760:	14000000 	strne	r0, [r0], #-0
    3764:	000e4a11 	andeq	r4, lr, r1, lsl sl
    3768:	651c0b00 	ldrvs	r0, [ip, #-2816]	; 0xfffff500
    376c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    3770:	0f570300 	svceq	0x00570300
    3774:	1d0b0000 	stcne	0, cr0, [fp, #-0]
    3778:	00000ca4 	andeq	r0, r0, r4, lsr #25
    377c:	000cfb14 	andeq	pc, ip, r4, lsl fp	; <UNPREDICTABLE>
    3780:	0b581000 	bleq	1607788 <__Main_Stack_Size+0x1607388>
    3784:	000dbc1f 	andeq	fp, sp, pc, lsl ip
    3788:	69701600 	ldmdbvs	r0!, {r9, sl, ip}^
    378c:	210b0064 	tstcs	fp, r4, rrx
    3790:	00000cfb 	strdeq	r0, [r0], -fp
    3794:	0cc91100 	stfeqe	f1, [r9], {0}
    3798:	220b0000 	andcs	r0, fp, #0
    379c:	0000004e 	andeq	r0, r0, lr, asr #32
    37a0:	0dd11120 	ldfeqe	f1, [r1, #128]	; 0x80
    37a4:	230b0000 	movwcs	r0, #45056	; 0xb000
    37a8:	0000004e 	andeq	r0, r0, lr, asr #32
    37ac:	10231124 	eorne	r1, r3, r4, lsr #2
    37b0:	240b0000 	strcs	r0, [fp], #-0
    37b4:	0000004e 	andeq	r0, r0, lr, asr #32
    37b8:	0f751128 	svceq	0x00751128
    37bc:	250b0000 	strcs	r0, [fp, #-0]
    37c0:	0000004e 	andeq	r0, r0, lr, asr #32
    37c4:	0e5b112c 	rdfeqep	f1, f3, #4.0
    37c8:	260b0000 	strcs	r0, [fp], -r0
    37cc:	0000004e 	andeq	r0, r0, lr, asr #32
    37d0:	0d0f1130 	stfeqs	f1, [pc, #-192]	; 3718 <__Main_Stack_Size+0x3318>
    37d4:	270b0000 	strcs	r0, [fp, -r0]
    37d8:	0000004e 	andeq	r0, r0, lr, asr #32
    37dc:	0f391134 	svceq	0x00391134
    37e0:	280b0000 	stmdacs	fp, {}	; <UNPREDICTABLE>
    37e4:	0000004e 	andeq	r0, r0, lr, asr #32
    37e8:	0e501138 	mrceq	1, 2, r1, cr0, cr8, {1}
    37ec:	290b0000 	stmdbcs	fp, {}	; <UNPREDICTABLE>
    37f0:	0000004e 	andeq	r0, r0, lr, asr #32
    37f4:	0e84113c 	mcreq	1, 4, r1, cr4, cr12, {1}
    37f8:	2a0b0000 	bcs	2c3800 <__Main_Stack_Size+0x2c3400>
    37fc:	0000004e 	andeq	r0, r0, lr, asr #32
    3800:	100f1140 	andne	r1, pc, r0, asr #2
    3804:	2b0b0000 	blcs	2c380c <__Main_Stack_Size+0x2c340c>
    3808:	0000004e 	andeq	r0, r0, lr, asr #32
    380c:	0e291144 	sufeqem	f1, f1, f4
    3810:	2c0b0000 	stccs	0, cr0, [fp], {-0}
    3814:	00000dbc 			; <UNDEFINED> instruction: 0x00000dbc
    3818:	0e231148 	sufeqsm	f1, f3, #0.0
    381c:	2d0b0000 	stccs	0, cr0, [fp, #-0]
    3820:	00000dbc 			; <UNDEFINED> instruction: 0x00000dbc
    3824:	0cc1114c 	stfeqe	f1, [r1], {76}	; 0x4c
    3828:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
    382c:	00000dbc 			; <UNDEFINED> instruction: 0x00000dbc
    3830:	04130050 	ldreq	r0, [r3], #-80	; 0xffffffb0
    3834:	000000a0 	andeq	r0, r0, r0, lsr #1
    3838:	000f4d03 	andeq	r4, pc, r3, lsl #26
    383c:	0b2f0b00 	bleq	bc6444 <__Main_Stack_Size+0xbc6044>
    3840:	0700000d 	streq	r0, [r0, -sp]
    3844:	00000f8d 	andeq	r0, r0, sp, lsl #31
    3848:	04f8630c 	ldrbteq	r6, [r8], #780	; 0x30c
    384c:	060e0000 	streq	r0, [lr], -r0
    3850:	e800000d 	stmda	r0, {r0, r2, r3}
    3854:	0f00000d 	svceq	0x0000000d
    3858:	000000c5 	andeq	r0, r0, r5, asr #1
    385c:	d814001f 	ldmdale	r4, {r0, r1, r2, r3, r4}
    3860:	0700000d 	streq	r0, [r0, -sp]
    3864:	00000cd0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    3868:	0de80b0d 			; <UNDEFINED> instruction: 0x0de80b0d
    386c:	c20e0000 	andgt	r0, lr, #0
    3870:	0800000d 	stmdaeq	r0, {r0, r2, r3}
    3874:	0f00000e 	svceq	0x0000000e
    3878:	000000c5 	andeq	r0, r0, r5, asr #1
    387c:	70260001 	eorvc	r0, r6, r1
    3880:	01006469 	tsteq	r0, r9, ror #8
    3884:	000df810 	andeq	pc, sp, r0, lsl r8	; <UNPREDICTABLE>
    3888:	e0030500 	and	r0, r3, r0, lsl #10
    388c:	0e200011 	miaeq	acc0, r1, r0
    3890:	0000004e 	andeq	r0, r0, lr, asr #32
    3894:	00000e2a 	andeq	r0, r0, sl, lsr #28
    3898:	0000c527 	andeq	ip, r0, r7, lsr #10
    389c:	0003e700 	andeq	lr, r3, r0, lsl #14
    38a0:	000d2228 	andeq	r2, sp, r8, lsr #4
    38a4:	19130100 	ldmdbne	r3, {r8}
    38a8:	0500000e 	streq	r0, [r0, #-14]
    38ac:	00023803 	andeq	r3, r2, r3, lsl #16
    38b0:	0ff12820 	svceq	0x00f12820
    38b4:	16010000 	strne	r0, [r1], -r0
    38b8:	00000037 	andeq	r0, r0, r7, lsr r0
    38bc:	001c0305 	andseq	r0, ip, r5, lsl #6
    38c0:	3d282000 	stccc	0, cr2, [r8, #-0]
    38c4:	0100000e 	tsteq	r0, lr
    38c8:	000e5d19 	andeq	r5, lr, r9, lsl sp
    38cc:	d8030500 	stmdale	r3, {r8, sl}
    38d0:	13200011 			; <UNDEFINED> instruction: 0x13200011
    38d4:	00004e04 	andeq	r4, r0, r4, lsl #28
    38d8:	0ec12800 	cdpeq	8, 12, cr2, cr1, cr0, {0}
    38dc:	1c010000 	stcne	0, cr0, [r1], {-0}
    38e0:	00000077 	andeq	r0, r0, r7, ror r0
    38e4:	12900305 	addsne	r0, r0, #335544320	; 0x14000000
    38e8:	9f282000 	svcls	0x00282000
    38ec:	0100000c 	tsteq	r0, ip
    38f0:	00004e1f 	andeq	r4, r0, pc, lsl lr
    38f4:	94030500 	strls	r0, [r3], #-1280	; 0xfffffb00
    38f8:	28200012 	stmdacs	r0!, {r1, r4}
    38fc:	00000f97 	muleq	r0, r7, pc	; <UNPREDICTABLE>
    3900:	004e2201 	subeq	r2, lr, r1, lsl #4
    3904:	03050000 	movweq	r0, #20480	; 0x5000
    3908:	20001298 	mulcs	r0, r8, r2
    390c:	00099829 	andeq	r9, r9, r9, lsr #16
    3910:	d0ba0100 	adcsle	r0, sl, r0, lsl #2
    3914:	a408000c 	strge	r0, [r8], #-12
    3918:	01000000 	mrseq	r0, (UNDEF: 0)
    391c:	000fa69c 	muleq	pc, ip, r6	; <UNPREDICTABLE>
    3920:	109b2a00 	addsne	r2, fp, r0, lsl #20
    3924:	0d0e0000 	stceq	0, cr0, [lr, #-0]
    3928:	00060800 	andeq	r0, r6, r0, lsl #16
    392c:	d5010000 	strle	r0, [r1, #-0]
    3930:	000fa62b 	andeq	sl, pc, fp, lsr #12
    3934:	000d1400 	andeq	r1, sp, r0, lsl #8
    3938:	00006008 	andeq	r6, r0, r8
    393c:	23da0100 	bicscs	r0, sl, #0, 2
    3940:	2c00000f 	stccs	0, cr0, [r0], {15}
    3944:	08000d14 	stmdaeq	r0, {r2, r4, r8, sl, fp}
    3948:	00000060 	andeq	r0, r0, r0, rrx
    394c:	0012e12d 	andseq	lr, r2, sp, lsr #2
    3950:	12e62d00 	rscne	r2, r6, #0, 26
    3954:	eb2d0000 	bl	b4395c <__Main_Stack_Size+0xb4355c>
    3958:	2d000012 	stccs	0, cr0, [r0, #-72]	; 0xffffffb8
    395c:	000012cb 	andeq	r1, r0, fp, asr #5
    3960:	0012d62d 	andseq	sp, r2, sp, lsr #12
    3964:	12f02e00 	rscsne	r2, r0, #0, 28
    3968:	0d1c0000 	ldceq	0, cr0, [ip, #-0]
    396c:	001c0800 	andseq	r0, ip, r0, lsl #16
    3970:	0f0f0000 	svceq	0x000f0000
    3974:	fd2d0000 	stc2	0, cr0, [sp, #-0]
    3978:	2f000012 	svccs	0x00000012
    397c:	08000d20 	stmdaeq	r0, {r5, r8, sl, fp}
    3980:	00001323 	andeq	r1, r0, r3, lsr #6
    3984:	0d182f00 	ldceq	15, cr2, [r8, #-0]
    3988:	132e0800 			; <UNDEFINED> instruction: 0x132e0800
    398c:	3c2f0000 	stccc	0, cr0, [pc], #-0	; 3994 <__Main_Stack_Size+0x3594>
    3990:	a408000d 	strge	r0, [r8], #-13
    3994:	00000010 	andeq	r0, r0, r0, lsl r0
    3998:	0ce22f00 	stcleq	15, cr2, [r2]
    399c:	13390800 	teqne	r9, #0, 16
    39a0:	e62f0000 	strt	r0, [pc], -r0
    39a4:	4408000c 	strmi	r0, [r8], #-12
    39a8:	30000013 	andcc	r0, r0, r3, lsl r0
    39ac:	08000cfa 	stmdaeq	r0, {r1, r3, r4, r5, r6, r7, sl, fp}
    39b0:	0000134f 	andeq	r1, r0, pc, asr #6
    39b4:	00000f6f 	andeq	r0, r0, pc, ror #30
    39b8:	05500131 	ldrbeq	r0, [r0, #-305]	; 0xfffffecf
    39bc:	0011e003 	andseq	lr, r1, r3
    39c0:	52013120 	andpl	r3, r1, #32, 2
    39c4:	31ff0802 	mvnscc	r0, r2, lsl #16
    39c8:	0c055301 	stceq	3, cr5, [r5], {1}
    39cc:	4000083c 	andmi	r0, r0, ip, lsr r8
    39d0:	007d0231 	rsbseq	r0, sp, r1, lsr r2
    39d4:	08400c05 	stmdaeq	r0, {r0, r2, sl, fp}^
    39d8:	02314000 	eorseq	r4, r1, #0
    39dc:	0c05047d 	cfstrseq	mvf0, [r5], {125}	; 0x7d
    39e0:	40000024 	andmi	r0, r0, r4, lsr #32
    39e4:	0d0e3200 	sfmeq	f3, 4, [lr, #-0]
    39e8:	134f0800 	movtne	r0, #63488	; 0xf800
    39ec:	01310000 	teqeq	r1, r0
    39f0:	38030550 	stmdacc	r3, {r4, r6, r8, sl}
    39f4:	31200012 			; <UNDEFINED> instruction: 0x31200012
    39f8:	08025201 	stmdaeq	r2, {r0, r9, ip, lr}
    39fc:	530131ff 	movwpl	r3, #4607	; 0x11ff
    3a00:	08340c05 	ldmdaeq	r4!, {r0, r2, sl, fp}
    3a04:	02314000 	eorseq	r4, r1, #0
    3a08:	0c05007d 	stceq	0, cr0, [r5], {125}	; 0x7d
    3a0c:	40000838 	andmi	r0, r0, r8, lsr r8
    3a10:	047d0231 	ldrbteq	r0, [sp], #-561	; 0xfffffdcf
    3a14:	04240c05 	strteq	r0, [r4], #-3077	; 0xfffff3fb
    3a18:	00004000 	andeq	r4, r0, r0
    3a1c:	000f7e33 	andeq	r7, pc, r3, lsr lr	; <UNPREDICTABLE>
    3a20:	01560100 	cmpeq	r6, r0, lsl #2
    3a24:	00000ff3 	strdeq	r0, [r0], -r3
    3a28:	646d6334 	strbtvs	r6, [sp], #-820	; 0xfffffccc
    3a2c:	f3580100 	vrhadd.u16	d16, d8, d0
    3a30:	3500000f 	strcc	r0, [r0, #-15]
    3a34:	00000e64 	andeq	r0, r0, r4, ror #28
    3a38:	002c5901 	eoreq	r5, ip, r1, lsl #18
    3a3c:	69340000 	ldmdbvs	r4!, {}	; <UNPREDICTABLE>
    3a40:	425b0100 	subsmi	r0, fp, #0, 2
    3a44:	34000000 	strcc	r0, [r0], #-0
    3a48:	5b01006a 	blpl	43bf8 <__Main_Stack_Size+0x437f8>
    3a4c:	00000042 	andeq	r0, r0, r2, asr #32
    3a50:	000dd735 	andeq	sp, sp, r5, lsr r7
    3a54:	775c0100 	ldrbvc	r0, [ip, -r0, lsl #2]
    3a58:	36000000 	strcc	r0, [r0], -r0
    3a5c:	66756234 			; <UNDEFINED> instruction: 0x66756234
    3a60:	fe600100 	cdp2	1, 6, cr0, cr0, cr0, {0}
    3a64:	00000004 	andeq	r0, r0, r4
    3a68:	04fe0e00 	ldrbteq	r0, [lr], #3584	; 0xe00
    3a6c:	10030000 	andne	r0, r3, r0
    3a70:	c50f0000 	strgt	r0, [pc, #-0]	; 3a78 <__Main_Stack_Size+0x3678>
    3a74:	3f000000 	svccc	0x00000000
    3a78:	00252900 	eoreq	r2, r5, r0, lsl #18
    3a7c:	44010000 	strmi	r0, [r1], #-0
    3a80:	08000c68 	stmdaeq	r0, {r3, r5, r6, sl, fp}
    3a84:	00000068 	andeq	r0, r0, r8, rrx
    3a88:	10439c01 	subne	r9, r3, r1, lsl #24
    3a8c:	a2300000 	eorsge	r0, r0, #0
    3a90:	5a08000c 	bpl	203ac8 <__Main_Stack_Size+0x2036c8>
    3a94:	2f000013 	svccs	0x00000013
    3a98:	31000010 	tstcc	r0, r0, lsl r0
    3a9c:	03055001 	movweq	r5, #20481	; 0x5001
    3aa0:	200011e0 	andcs	r1, r0, r0, ror #3
    3aa4:	0cb83700 	ldceq	7, cr3, [r8]
    3aa8:	135a0800 	cmpne	sl, #0, 16
    3aac:	01310000 	teqeq	r1, r0
    3ab0:	38030550 	stmdacc	r3, {r4, r6, r8, sl}
    3ab4:	00200012 	eoreq	r0, r0, r2, lsl r0
    3ab8:	0fc72900 	svceq	0x00c72900
    3abc:	28010000 	stmdacs	r1, {}	; <UNPREDICTABLE>
    3ac0:	08000be0 	stmdaeq	r0, {r5, r6, r7, r8, r9, fp}
    3ac4:	00000088 	andeq	r0, r0, r8, lsl #1
    3ac8:	10929c01 	addsne	r9, r2, r1, lsl #24
    3acc:	64380000 	ldrtvs	r0, [r8], #-0
    3ad0:	01007269 	tsteq	r0, r9, ror #4
    3ad4:	0000772a 	andeq	r7, r0, sl, lsr #14
    3ad8:	00064e00 	andeq	r4, r6, r0, lsl #28
    3adc:	0c223900 			; <UNDEFINED> instruction: 0x0c223900
    3ae0:	13650800 	cmnne	r5, #0, 16
    3ae4:	107e0000 	rsbsne	r0, lr, r0
    3ae8:	01310000 	teqeq	r1, r0
    3aec:	38030550 	stmdacc	r3, {r4, r6, r8, sl}
    3af0:	00200012 	eoreq	r0, r0, r2, lsl r0
    3af4:	000c4c32 	andeq	r4, ip, r2, lsr ip
    3af8:	00136508 	andseq	r6, r3, r8, lsl #10
    3afc:	50013100 	andpl	r3, r1, r0, lsl #2
    3b00:	11e00305 	mvnne	r0, r5, lsl #6
    3b04:	00002000 	andeq	r2, r0, r0
    3b08:	000e2f3a 	andeq	r2, lr, sl, lsr pc
    3b0c:	01480200 	mrseq	r0, (UNDEF: 104)
    3b10:	0e043a03 	vmlaeq.f32	s6, s8, s6
    3b14:	3d020000 	stccc	0, cr0, [r2, #-0]
    3b18:	a63b0301 	ldrtge	r0, [fp], -r1, lsl #6
    3b1c:	1c00000f 	stcne	0, cr0, [r0], {15}
    3b20:	c408000a 	strgt	r0, [r8], #-10
    3b24:	01000001 	tsteq	r0, r1
    3b28:	0012b89c 	mulseq	r2, ip, r8
    3b2c:	0fc83c00 	svceq	0x00c83c00
    3b30:	91020000 	mrsls	r0, (UNDEF: 2)
    3b34:	0fd13c6c 	svceq	0x00d13c6c
    3b38:	91020000 	mrsls	r0, (UNDEF: 2)
    3b3c:	0fda3d6e 	svceq	0x00da3d6e
    3b40:	06740000 	ldrbteq	r0, [r4], -r0
    3b44:	b23c0000 	eorslt	r0, ip, #0
    3b48:	0500000f 	streq	r0, [r0, #-15]
    3b4c:	0001f803 	andeq	pc, r1, r3, lsl #16
    3b50:	0fbd3c20 	svceq	0x00bd3c20
    3b54:	03050000 	movweq	r0, #20480	; 0x5000
    3b58:	20001291 	mulcs	r0, r1, r2
    3b5c:	000fe53e 	andeq	lr, pc, lr, lsr r5	; <UNPREDICTABLE>
    3b60:	0001b800 	andeq	fp, r1, r0, lsl #16
    3b64:	0fe62d00 	svceq	0x00e62d00
    3b68:	922a0000 	eorls	r0, sl, #0
    3b6c:	82000010 	andhi	r0, r0, #16
    3b70:	0208000b 	andeq	r0, r8, #11
    3b74:	01000000 	mrseq	r0, (UNDEF: 0)
    3b78:	109b2aa4 	addsne	r2, fp, r4, lsr #21
    3b7c:	0b940000 	bleq	fe503b84 <_estack+0xde4feb84>
    3b80:	00020800 	andeq	r0, r2, r0, lsl #16
    3b84:	a8010000 	stmdage	r1, {}	; <UNPREDICTABLE>
    3b88:	000a5c30 	andeq	r5, sl, r0, lsr ip
    3b8c:	00137008 	andseq	r7, r3, r8
    3b90:	00112900 	andseq	r2, r1, r0, lsl #18
    3b94:	50013100 	andpl	r3, r1, r0, lsl #2
    3b98:	01fa0305 	mvnseq	r0, r5, lsl #6
    3b9c:	2f002000 	svccs	0x00002000
    3ba0:	08000a62 	stmdaeq	r0, {r1, r5, r6, r9, fp}
    3ba4:	0000137b 	andeq	r1, r0, fp, ror r3
    3ba8:	000a7030 	andeq	r7, sl, r0, lsr r0
    3bac:	00137008 	andseq	r7, r3, r8
    3bb0:	00114900 	andseq	r4, r1, r0, lsl #18
    3bb4:	50013100 	andpl	r3, r1, r0, lsl #2
    3bb8:	01f90305 	mvnseq	r0, r5, lsl #6
    3bbc:	30002000 	andcc	r2, r0, r0
    3bc0:	08000a78 	stmdaeq	r0, {r3, r4, r5, r6, r9, fp}
    3bc4:	00001386 	andeq	r1, r0, r6, lsl #7
    3bc8:	00001160 	andeq	r1, r0, r0, ror #2
    3bcc:	05500131 	ldrbeq	r0, [r0, #-305]	; 0xfffffecf
    3bd0:	0011e003 	andseq	lr, r1, r3
    3bd4:	94300020 	ldrtls	r0, [r0], #-32	; 0xffffffe0
    3bd8:	9108000a 	tstls	r8, sl
    3bdc:	7d000013 	stcvc	0, cr0, [r0, #-76]	; 0xffffffb4
    3be0:	31000011 	tstcc	r0, r1, lsl r0
    3be4:	75025001 	strvc	r5, [r2, #-1]
    3be8:	51013100 	mrspl	r3, (UNDEF: 17)
    3bec:	1d280305 	stcne	3, cr0, [r8, #-20]!	; 0xffffffec
    3bf0:	30000800 	andcc	r0, r0, r0, lsl #16
    3bf4:	08000a9a 	stmdaeq	r0, {r1, r3, r4, r7, r9, fp}
    3bf8:	0000139c 	muleq	r0, ip, r3
    3bfc:	00001191 	muleq	r0, r1, r1
    3c00:	02500131 	subseq	r0, r0, #1073741836	; 0x4000000c
    3c04:	30000075 	andcc	r0, r0, r5, ror r0
    3c08:	08000ac8 	stmdaeq	r0, {r3, r6, r7, r9, fp}
    3c0c:	00001391 	muleq	r0, r1, r3
    3c10:	000011b1 			; <UNDEFINED> instruction: 0x000011b1
    3c14:	05500131 	ldrbeq	r0, [r0, #-305]	; 0xfffffecf
    3c18:	0001f803 	andeq	pc, r1, r3, lsl #16
    3c1c:	51013120 	tstpl	r1, r0, lsr #2
    3c20:	1d200305 	stcne	3, cr0, [r0, #-20]!	; 0xffffffec
    3c24:	30000800 	andcc	r0, r0, r0, lsl #16
    3c28:	08000ace 	stmdaeq	r0, {r1, r2, r3, r6, r7, r9, fp}
    3c2c:	0000139c 	muleq	r0, ip, r3
    3c30:	000011c8 	andeq	r1, r0, r8, asr #3
    3c34:	05500131 	ldrbeq	r0, [r0, #-305]	; 0xfffffecf
    3c38:	0001f803 	andeq	pc, r1, r3, lsl #16
    3c3c:	16300020 	ldrtne	r0, [r0], -r0, lsr #32
    3c40:	7008000b 	andvc	r0, r8, fp
    3c44:	df000013 	svcle	0x00000013
    3c48:	31000011 	tstcc	r0, r1, lsl r0
    3c4c:	03055001 	movweq	r5, #20481	; 0x5001
    3c50:	200001f9 	strdcs	r0, [r0], -r9
    3c54:	0b1e3000 	bleq	78fc5c <__Main_Stack_Size+0x78f85c>
    3c58:	13650800 	cmnne	r5, #0, 16
    3c5c:	11f60000 	mvnsne	r0, r0
    3c60:	01310000 	teqeq	r1, r0
    3c64:	e0030550 	and	r0, r3, r0, asr r5
    3c68:	00200011 	eoreq	r0, r0, r1, lsl r0
    3c6c:	000b3230 	andeq	r3, fp, r0, lsr r2
    3c70:	00139108 	andseq	r9, r3, r8, lsl #2
    3c74:	00121300 	andseq	r1, r2, r0, lsl #6
    3c78:	50013100 	andpl	r3, r1, r0, lsl #2
    3c7c:	31007502 	tstcc	r0, r2, lsl #10
    3c80:	03055101 	movweq	r5, #20737	; 0x5101
    3c84:	08001d20 	stmdaeq	r0, {r5, r8, sl, fp, ip}
    3c88:	0b383000 	bleq	e0fc90 <__Main_Stack_Size+0xe0f890>
    3c8c:	139c0800 	orrsne	r0, ip, #0, 16
    3c90:	12270000 	eorne	r0, r7, #0
    3c94:	01310000 	teqeq	r1, r0
    3c98:	00750250 	rsbseq	r0, r5, r0, asr r2
    3c9c:	0b463000 	bleq	118fca4 <__Main_Stack_Size+0x118f8a4>
    3ca0:	13700800 	cmnne	r0, #0, 16
    3ca4:	123e0000 	eorsne	r0, lr, #0
    3ca8:	01310000 	teqeq	r1, r0
    3cac:	f9030550 			; <UNDEFINED> instruction: 0xf9030550
    3cb0:	00200001 	eoreq	r0, r0, r1
    3cb4:	000b5e30 	andeq	r5, fp, r0, lsr lr
    3cb8:	0013a708 	andseq	sl, r3, r8, lsl #14
    3cbc:	00125500 	andseq	r5, r2, r0, lsl #10
    3cc0:	50013100 	andpl	r3, r1, r0, lsl #2
    3cc4:	11e00305 	mvnne	r0, r5, lsl #6
    3cc8:	30002000 	andcc	r2, r0, r0
    3ccc:	08000b6c 	stmdaeq	r0, {r2, r3, r5, r6, r8, r9, fp}
    3cd0:	00001370 	andeq	r1, r0, r0, ror r3
    3cd4:	0000126c 	andeq	r1, r0, ip, ror #4
    3cd8:	05500131 	ldrbeq	r0, [r0, #-305]	; 0xfffffecf
    3cdc:	0001fa03 	andeq	pc, r1, r3, lsl #20
    3ce0:	7a300020 	bvc	c03d68 <__Main_Stack_Size+0xc03968>
    3ce4:	b208000b 	andlt	r0, r8, #11
    3ce8:	83000013 	movwhi	r0, #19
    3cec:	31000012 	tstcc	r0, r2, lsl r0
    3cf0:	03055001 	movweq	r5, #20481	; 0x5001
    3cf4:	200011e0 	andcs	r1, r0, r0, ror #3
    3cf8:	0b943000 	bleq	fe50fd00 <_estack+0xde50ad00>
    3cfc:	13bd0800 			; <UNDEFINED> instruction: 0x13bd0800
    3d00:	129a0000 	addsne	r0, sl, #0
    3d04:	01310000 	teqeq	r1, r0
    3d08:	e0030550 	and	r0, r3, r0, asr r5
    3d0c:	00200011 	eoreq	r0, r0, r1, lsl r0
    3d10:	000ba22f 	andeq	sl, fp, pc, lsr #4
    3d14:	00137008 	andseq	r7, r3, r8
    3d18:	0baa3200 	bleq	fea90520 <_estack+0xdea8b520>
    3d1c:	13c80800 	bicne	r0, r8, #0, 16
    3d20:	01310000 	teqeq	r1, r0
    3d24:	e0030551 	and	r0, r3, r1, asr r5
    3d28:	00200011 	eoreq	r0, r0, r1, lsl r0
    3d2c:	a63b0000 	ldrtge	r0, [fp], -r0
    3d30:	0000000f 	andeq	r0, r0, pc
    3d34:	3c000000 	stccc	0, cr0, [r0], {-0}
    3d38:	01000000 	mrseq	r0, (UNDEF: 0)
    3d3c:	0013239c 	mulseq	r3, ip, r3
    3d40:	0fb23c00 	svceq	0x00b23c00
    3d44:	03050000 	movweq	r0, #20480	; 0x5000
    3d48:	200001f8 	strdcs	r0, [r0], -r8
    3d4c:	000fbd3c 	andeq	fp, pc, ip, lsr sp	; <UNPREDICTABLE>
    3d50:	91030500 	tstls	r3, r0, lsl #10
    3d54:	2d200012 	stccs	0, cr0, [r0, #-72]!	; 0xffffffb8
    3d58:	00000fc8 	andeq	r0, r0, r8, asr #31
    3d5c:	000fd12d 	andeq	sp, pc, sp, lsr #2
    3d60:	0fda2d00 	svceq	0x00da2d00
    3d64:	003f0000 	eorseq	r0, pc, r0
    3d68:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
    3d6c:	10000000 	andne	r0, r0, r0
    3d70:	3d000013 	stccc	0, cr0, [r0, #-76]	; 0xffffffb4
    3d74:	00000fe6 	andeq	r0, r0, r6, ror #31
    3d78:	00000687 	andeq	r0, r0, r7, lsl #13
    3d7c:	0000002f 	andeq	r0, r0, pc, lsr #32
    3d80:	00132300 	andseq	r2, r3, r0, lsl #6
    3d84:	002f0000 	eoreq	r0, pc, r0
    3d88:	2e000000 	cdpcs	0, 0, cr0, cr0, cr0, {0}
    3d8c:	40000013 	andmi	r0, r0, r3, lsl r0
    3d90:	00000000 	andeq	r0, r0, r0
    3d94:	000010a4 	andeq	r1, r0, r4, lsr #1
    3d98:	0e6f4100 	poweqe	f4, f7, f0
    3d9c:	0e6f0000 	cdpeq	0, 6, cr0, cr15, cr0, {0}
    3da0:	0d0e0000 	stceq	0, cr0, [lr, #-0]
    3da4:	000d4141 	andeq	r4, sp, r1, asr #2
    3da8:	000d4100 	andeq	r4, sp, r0, lsl #2
    3dac:	410c0e00 	tstmi	ip, r0, lsl #28
    3db0:	00000df2 	strdeq	r0, [r0], -r2
    3db4:	00000df2 	strdeq	r0, [r0], -r2
    3db8:	05410a01 	strbeq	r0, [r1, #-2561]	; 0xfffff5ff
    3dbc:	0500000d 	streq	r0, [r0, #-13]
    3dc0:	0e00000d 	cdpeq	0, 0, cr0, cr0, cr13, {0}
    3dc4:	0d6d410e 	stfeqe	f4, [sp, #-56]!	; 0xffffffc8
    3dc8:	0d6d0000 	stcleq	0, cr0, [sp, #-0]
    3dcc:	310b0000 	mrscc	r0, (UNDEF: 11)
    3dd0:	000e7941 	andeq	r7, lr, r1, asr #18
    3dd4:	000e7900 	andeq	r7, lr, r0, lsl #18
    3dd8:	41380b00 	teqmi	r8, r0, lsl #22
    3ddc:	00000cb3 			; <UNDEFINED> instruction: 0x00000cb3
    3de0:	00000cb3 			; <UNDEFINED> instruction: 0x00000cb3
    3de4:	e041320b 	sub	r3, r1, fp, lsl #4
    3de8:	e000000c 	and	r0, r0, ip
    3dec:	0c00000c 	stceq	0, cr0, [r0], {12}
    3df0:	0fb44151 	svceq	0x00b44151
    3df4:	0fb40000 	svceq	0x00b40000
    3df8:	0d0d0000 	stceq	0, cr0, [sp, #-0]
    3dfc:	000fe141 	andeq	lr, pc, r1, asr #2
    3e00:	000fe100 	andeq	lr, pc, r0, lsl #2
    3e04:	41360b00 	teqmi	r6, r0, lsl #22
    3e08:	00000e1b 	andeq	r0, r0, fp, lsl lr
    3e0c:	00000e1b 	andeq	r0, r0, fp, lsl lr
    3e10:	6a41f40f 	bvs	1080e54 <__Main_Stack_Size+0x1080a54>
    3e14:	6a00000f 	bvs	3e58 <__Main_Stack_Size+0x3a58>
    3e18:	0e00000f 	cdpeq	0, 0, cr0, cr0, cr15, {0}
    3e1c:	0d60410a 	stfeqe	f4, [r0, #-40]!	; 0xffffffd8
    3e20:	0d600000 	stcleq	0, cr0, [r0, #-0]
    3e24:	350b0000 	strcc	r0, [fp, #-0]
    3e28:	000e9241 	andeq	r9, lr, r1, asr #4
    3e2c:	000e9200 	andeq	r9, lr, r0, lsl #4
    3e30:	41330b00 	teqmi	r3, r0, lsl #22
    3e34:	00000d18 	andeq	r0, r0, r8, lsl sp
    3e38:	00000d18 	andeq	r0, r0, r8, lsl sp
    3e3c:	ab41340b 	blge	1050e70 <__Main_Stack_Size+0x1050a70>
    3e40:	ab00000e 	blge	3e80 <__Main_Stack_Size+0x3a80>
    3e44:	0d00000e 	stceq	0, cr0, [r0, #-56]	; 0xffffffc8
    3e48:	06f8000e 	ldrbteq	r0, [r8], lr
    3e4c:	00040000 	andeq	r0, r4, r0
    3e50:	00000ed6 	ldrdeq	r0, [r0], -r6
    3e54:	01670104 	cmneq	r7, r4, lsl #2
    3e58:	550c0000 	strpl	r0, [ip, #-0]
    3e5c:	48000011 	stmdami	r0, {r0, r4}
    3e60:	98000000 	stmdals	r0, {}	; <UNPREDICTABLE>
    3e64:	00000002 	andeq	r0, r0, r2
    3e68:	cc000000 	stcgt	0, cr0, [r0], {-0}
    3e6c:	0200000a 	andeq	r0, r0, #10
    3e70:	000010c7 	andeq	r1, r0, r7, asr #1
    3e74:	01690105 	cmneq	r9, r5, lsl #2
    3e78:	a7030000 	strge	r0, [r3, -r0]
    3e7c:	00000169 	andeq	r0, r0, r9, ror #2
    3e80:	00127c03 	andseq	r7, r2, r3, lsl #24
    3e84:	e6037200 	str	r7, [r3], -r0, lsl #4
    3e88:	74000010 	strvc	r0, [r0], #-16
    3e8c:	00120e03 	andseq	r0, r2, r3, lsl #28
    3e90:	17037500 	strne	r7, [r3, -r0, lsl #10]
    3e94:	76000013 			; <UNDEFINED> instruction: 0x76000013
    3e98:	00133c03 	andseq	r3, r3, r3, lsl #24
    3e9c:	05037b00 	streq	r7, [r3, #-2816]	; 0xfffff500
    3ea0:	7c000013 	stcvc	0, cr0, [r0], {19}
    3ea4:	0010cc03 	andseq	ip, r0, r3, lsl #24
    3ea8:	ee037e00 	cdp	14, 0, cr7, cr3, cr0, {0}
    3eac:	7f000012 	svcvc	0x00000012
    3eb0:	00120404 	andseq	r0, r2, r4, lsl #8
    3eb4:	27040000 	strcs	r0, [r4, -r0]
    3eb8:	01000012 	tsteq	r0, r2, lsl r0
    3ebc:	00139704 	andseq	r9, r3, r4, lsl #14
    3ec0:	67040200 	strvs	r0, [r4, -r0, lsl #4]
    3ec4:	03000012 	movweq	r0, #18
    3ec8:	0010a004 	andseq	sl, r0, r4
    3ecc:	d8040400 	stmdale	r4, {sl}
    3ed0:	05000010 	streq	r0, [r0, #-16]
    3ed4:	0010ab04 	andseq	sl, r0, r4, lsl #22
    3ed8:	af040600 	svcge	0x00040600
    3edc:	07000012 	smladeq	r0, r2, r0, r0
    3ee0:	0011a604 	andseq	sl, r1, r4, lsl #12
    3ee4:	6f040800 	svcvs	0x00040800
    3ee8:	09000013 	stmdbeq	r0, {r0, r1, r4}
    3eec:	00121c04 	andseq	r1, r2, r4, lsl #24
    3ef0:	e2040a00 	and	r0, r4, #0, 20
    3ef4:	0b000011 	bleq	3f40 <__Main_Stack_Size+0x3b40>
    3ef8:	00108d04 	andseq	r8, r0, r4, lsl #26
    3efc:	35040c00 	strcc	r0, [r4, #-3072]	; 0xfffff400
    3f00:	0d000012 	stceq	0, cr0, [r0, #-72]	; 0xffffffb8
    3f04:	00113304 	andseq	r3, r1, r4, lsl #6
    3f08:	5c040e00 	stcpl	14, cr0, [r4], {-0}
    3f0c:	0f000013 	svceq	0x00000013
    3f10:	0011c504 	andseq	ip, r1, r4, lsl #10
    3f14:	5a041000 	bpl	107f1c <__Main_Stack_Size+0x107b1c>
    3f18:	11000010 	tstne	r0, r0, lsl r0
    3f1c:	00137f04 	andseq	r7, r3, r4, lsl #30
    3f20:	6e041200 	cdpvs	2, 0, cr1, cr4, cr0, {0}
    3f24:	13000011 	movwne	r0, #17
    3f28:	00102c04 	andseq	r2, r0, r4, lsl #24
    3f2c:	60041400 	andvs	r1, r4, r0, lsl #8
    3f30:	15000011 	strne	r0, [r0, #-17]	; 0xffffffef
    3f34:	00104c04 	andseq	r4, r0, r4, lsl #24
    3f38:	2f041600 	svccs	0x00041600
    3f3c:	17000013 	smladne	r0, r3, r0, r0
    3f40:	00110c04 	andseq	r0, r1, r4, lsl #24
    3f44:	55041800 	strpl	r1, [r4, #-2048]	; 0xfffff800
    3f48:	19000012 	stmdbne	r0, {r1, r4}
    3f4c:	0012cf04 	andseq	ip, r2, r4, lsl #30
    3f50:	9b041a00 	blls	10a758 <__Main_Stack_Size+0x10a358>
    3f54:	1b000012 	blne	3fa4 <__Main_Stack_Size+0x3ba4>
    3f58:	0012fb04 	andseq	pc, r2, r4, lsl #22
    3f5c:	d8041c00 	stmdale	r4, {sl, fp, ip}
    3f60:	1d000011 	stcne	0, cr0, [r0, #-68]	; 0xffffffbc
    3f64:	00108304 	andseq	r8, r0, r4, lsl #6
    3f68:	48041e00 	stmdami	r4, {r9, sl, fp, ip}
    3f6c:	1f000012 	svcne	0x00000012
    3f70:	0012e104 	andseq	lr, r2, r4, lsl #2
    3f74:	b8042000 	stmdalt	r4, {sp}
    3f78:	21000011 	tstcs	r0, r1, lsl r0
    3f7c:	00106d04 	andseq	r6, r0, r4, lsl #26
    3f80:	29042200 	stmdbcs	r4, {r9, sp}
    3f84:	23000011 	movwcs	r0, #17
    3f88:	00134d04 	andseq	r4, r3, r4, lsl #26
    3f8c:	70042400 	andvc	r2, r4, r0, lsl #8
    3f90:	25000012 	strcs	r0, [r0, #-18]	; 0xffffffee
    3f94:	00118c04 	andseq	r8, r1, r4, lsl #24
    3f98:	8b042600 	blhi	10d7a0 <__Main_Stack_Size+0x10d3a0>
    3f9c:	27000013 	smladcs	r0, r3, r0, r0
    3fa0:	0010bd04 	andseq	fp, r0, r4, lsl #26
    3fa4:	b5042800 	strlt	r2, [r4, #-2048]	; 0xfffff800
    3fa8:	29000013 	stmdbcs	r0, {r0, r1, r4}
    3fac:	0011f504 	andseq	pc, r1, r4, lsl #10
    3fb0:	05002a00 	streq	r2, [r0, #-2560]	; 0xfffff600
    3fb4:	008e0601 	addeq	r0, lr, r1, lsl #12
    3fb8:	82060000 	andhi	r0, r6, #0
    3fbc:	03000011 	movweq	r0, #17
    3fc0:	002501d8 	ldrdeq	r0, [r5], -r8	; <UNPREDICTABLE>
    3fc4:	02050000 	andeq	r0, r5, #0
    3fc8:	00021305 	andeq	r1, r2, r5, lsl #6
    3fcc:	0ae40700 	beq	ff905bd4 <_estack+0xdf900bd4>
    3fd0:	28040000 	stmdacs	r4, {}	; <UNPREDICTABLE>
    3fd4:	00000193 	muleq	r0, r3, r1
    3fd8:	00018308 	andeq	r8, r1, r8, lsl #6
    3fdc:	05040500 	streq	r0, [r4, #-1280]	; 0xfffffb00
    3fe0:	0000012f 	andeq	r0, r0, pc, lsr #2
    3fe4:	2a050805 	bcs	146000 <__Main_Stack_Size+0x145c00>
    3fe8:	07000001 	streq	r0, [r0, -r1]
    3fec:	0000027d 	andeq	r0, r0, sp, ror r2
    3ff0:	01b12e04 			; <UNDEFINED> instruction: 0x01b12e04
    3ff4:	a1080000 	mrsge	r0, (UNDEF: 8)
    3ff8:	05000001 	streq	r0, [r0, #-1]
    3ffc:	008c0801 	addeq	r0, ip, r1, lsl #16
    4000:	19070000 	stmdbne	r7, {}	; <UNPREDICTABLE>
    4004:	04000003 	streq	r0, [r0], #-3
    4008:	0001c831 	andeq	ip, r1, r1, lsr r8
    400c:	01b80800 			; <UNDEFINED> instruction: 0x01b80800
    4010:	02050000 	andeq	r0, r5, #0
    4014:	0000a807 	andeq	sl, r0, r7, lsl #16
    4018:	0ae30700 	beq	ff8c5c20 <_estack+0xdf8c0c20>
    401c:	34040000 	strcc	r0, [r4], #-0
    4020:	000001e4 	andeq	r0, r0, r4, ror #3
    4024:	0001cf08 	andeq	ip, r1, r8, lsl #30
    4028:	01cf0900 	biceq	r0, pc, r0, lsl #18
    402c:	04050000 	streq	r0, [r5], #-0
    4030:	0000e407 	andeq	lr, r0, r7, lsl #8
    4034:	07080500 	streq	r0, [r8, -r0, lsl #10]
    4038:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    403c:	6905040a 	stmdbvs	r5, {r1, r3, sl}
    4040:	0800746e 	stmdaeq	r0, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
    4044:	000001f2 	strdeq	r0, [r0], -r2
    4048:	e9070405 	stmdb	r7, {r0, r2, sl}
    404c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    4050:	000001fe 	strdeq	r0, [r0], -lr
    4054:	020e040b 	andeq	r0, lr, #184549376	; 0xb000000
    4058:	02c6013b 	sbceq	r0, r6, #-1073741810	; 0xc000000e
    405c:	070c0000 	streq	r0, [ip, -r0]
    4060:	02000011 	andeq	r0, r0, #17
    4064:	02d6013d 	sbcseq	r0, r6, #1073741839	; 0x4000000f
    4068:	0c000000 	stceq	0, cr0, [r0], {-0}
    406c:	0000026e 	andeq	r0, r0, lr, ror #4
    4070:	db013e02 	blle	53880 <__Main_Stack_Size+0x53480>
    4074:	20000002 	andcs	r0, r0, r2
    4078:	0013480c 	andseq	r4, r3, ip, lsl #16
    407c:	013f0200 	teqeq	pc, r0, lsl #4
    4080:	000002d6 	ldrdeq	r0, [r0], -r6
    4084:	11200c80 	smlawbne	r0, r0, ip, r0
    4088:	40020000 	andmi	r0, r2, r0
    408c:	0002db01 	andeq	sp, r2, r1, lsl #22
    4090:	7a0da000 	bvc	36c098 <__Main_Stack_Size+0x36bc98>
    4094:	02000013 	andeq	r0, r0, #19
    4098:	02d60141 	sbcseq	r0, r6, #1073741840	; 0x40000010
    409c:	01000000 	mrseq	r0, (UNDEF: 0)
    40a0:	000ddc0d 	andeq	sp, sp, sp, lsl #24
    40a4:	01420200 	mrseq	r0, (UNDEF: 98)
    40a8:	000002db 	ldrdeq	r0, [r0], -fp
    40ac:	300d0120 	andcc	r0, sp, r0, lsr #2
    40b0:	02000012 	andeq	r0, r0, #18
    40b4:	02d60143 	sbcseq	r0, r6, #-1073741808	; 0xc0000010
    40b8:	01800000 	orreq	r0, r0, r0
    40bc:	000d800d 	andeq	r8, sp, sp
    40c0:	01440200 	mrseq	r0, (UNDEF: 100)
    40c4:	000002db 	ldrdeq	r0, [r0], -fp
    40c8:	570d01a0 	strpl	r0, [sp, -r0, lsr #3]
    40cc:	02000013 	andeq	r0, r0, #19
    40d0:	02d60145 	sbcseq	r0, r6, #1073741841	; 0x40000011
    40d4:	02000000 	andeq	r0, r0, #0
    40d8:	000d8a0d 	andeq	r8, sp, sp, lsl #20
    40dc:	01460200 	mrseq	r0, (UNDEF: 102)
    40e0:	000002eb 	andeq	r0, r0, fp, ror #5
    40e4:	490e0220 	stmdbmi	lr, {r5, r9}
    40e8:	47020050 	smlsdmi	r2, r0, r0, r0
    40ec:	00030b01 	andeq	r0, r3, r1, lsl #22
    40f0:	0d030000 	stceq	0, cr0, [r3, #-0]
    40f4:	00000d94 	muleq	r0, r4, sp
    40f8:	10014802 	andne	r4, r1, r2, lsl #16
    40fc:	f0000003 			; <UNDEFINED> instruction: 0xf0000003
    4100:	12620d03 	rsbne	r0, r2, #3, 26	; 0xc0
    4104:	49020000 	stmdbmi	r2, {}	; <UNPREDICTABLE>
    4108:	0001da01 	andeq	sp, r1, r1, lsl #20
    410c:	000e0000 	andeq	r0, lr, r0
    4110:	0001da0f 	andeq	sp, r1, pc, lsl #20
    4114:	0002d600 	andeq	sp, r2, r0, lsl #12
    4118:	01fe1000 	mvnseq	r1, r0
    411c:	00070000 	andeq	r0, r7, r0
    4120:	0002c608 	andeq	ip, r2, r8, lsl #12
    4124:	01cf0f00 	biceq	r0, pc, r0, lsl #30
    4128:	02eb0000 	rsceq	r0, fp, #0
    412c:	fe100000 	cdp2	0, 1, cr0, cr0, cr0, {0}
    4130:	17000001 	strne	r0, [r0, -r1]
    4134:	01cf0f00 	biceq	r0, pc, r0, lsl #30
    4138:	02fb0000 	rscseq	r0, fp, #0
    413c:	fe100000 	cdp2	0, 1, cr0, cr0, cr0, {0}
    4140:	37000001 	strcc	r0, [r0, -r1]
    4144:	01ac0f00 			; <UNDEFINED> instruction: 0x01ac0f00
    4148:	030b0000 	movweq	r0, #45056	; 0xb000
    414c:	fe100000 	cdp2	0, 1, cr0, cr0, cr0, {0}
    4150:	ef000001 	svc	0x00000001
    4154:	02fb0800 	rscseq	r0, fp, #0, 16
    4158:	cf0f0000 	svcgt	0x000f0000
    415c:	21000001 	tstcs	r0, r1
    4160:	11000003 	tstne	r0, r3
    4164:	000001fe 	strdeq	r0, [r0], -lr
    4168:	06000283 	streq	r0, [r0], -r3, lsl #5
    416c:	000012ba 			; <UNDEFINED> instruction: 0x000012ba
    4170:	0a014a02 	beq	56980 <__Main_Stack_Size+0x56580>
    4174:	12000002 	andne	r0, r0, #2
    4178:	000003b4 			; <UNDEFINED> instruction: 0x000003b4
    417c:	8e062902 	vmlahi.f16	s4, s12, s4	; <UNPREDICTABLE>
    4180:	13000001 	movwne	r0, #1
    4184:	0000035e 	andeq	r0, r0, lr, asr r3
    4188:	01cf3505 	biceq	r3, pc, r5, lsl #10
    418c:	1c140000 	ldcne	0, cr0, [r4], {-0}
    4190:	a903e903 	stmdbge	r3, {r0, r1, r8, fp, sp, lr, pc}
    4194:	15000003 	strne	r0, [r0, #-3]
    4198:	004c5243 	subeq	r5, ip, r3, asr #4
    419c:	da03eb03 	ble	fedb0 <__Main_Stack_Size+0xfe9b0>
    41a0:	00000001 	andeq	r0, r0, r1
    41a4:	48524315 	ldmdami	r2, {r0, r2, r4, r8, r9, lr}^
    41a8:	03ec0300 	mvneq	r0, #0, 6
    41ac:	000001da 	ldrdeq	r0, [r0], -sl
    41b0:	44491504 	strbmi	r1, [r9], #-1284	; 0xfffffafc
    41b4:	ed030052 	stc	0, cr0, [r3, #-328]	; 0xfffffeb8
    41b8:	0001da03 	andeq	sp, r1, r3, lsl #20
    41bc:	4f150800 	svcmi	0x00150800
    41c0:	03005244 	movweq	r5, #580	; 0x244
    41c4:	01da03ee 	bicseq	r0, sl, lr, ror #7
    41c8:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    41cc:	00000fa2 	andeq	r0, r0, r2, lsr #31
    41d0:	da03ef03 	ble	ffde4 <__Main_Stack_Size+0xff9e4>
    41d4:	10000001 	andne	r0, r0, r1
    41d8:	52524215 	subspl	r4, r2, #1342177281	; 0x50000001
    41dc:	03f00300 	mvnseq	r0, #0, 6
    41e0:	000001da 	ldrdeq	r0, [r0], -sl
    41e4:	0e160c14 	mrceq	12, 0, r0, cr6, cr4, {0}
    41e8:	f1030000 			; <UNDEFINED> instruction: 0xf1030000
    41ec:	0001da03 	andeq	sp, r1, r3, lsl #20
    41f0:	06001800 	streq	r1, [r0], -r0, lsl #16
    41f4:	00000fa7 	andeq	r0, r0, r7, lsr #31
    41f8:	4403f203 	strmi	pc, [r3], #-515	; 0xfffffdfd
    41fc:	14000003 	strne	r0, [r0], #-3
    4200:	04340328 	ldrteq	r0, [r4], #-808	; 0xfffffcd8
    4204:	00000440 	andeq	r0, r0, r0, asr #8
    4208:	00524315 	subseq	r4, r2, r5, lsl r3
    420c:	da043603 	ble	111a20 <__Main_Stack_Size+0x111620>
    4210:	00000001 	andeq	r0, r0, r1
    4214:	0002780c 	andeq	r7, r2, ip, lsl #16
    4218:	04370300 	ldrteq	r0, [r7], #-768	; 0xfffffd00
    421c:	000001da 	ldrdeq	r0, [r0], -sl
    4220:	49431504 	stmdbmi	r3, {r2, r8, sl, ip}^
    4224:	38030052 	stmdacc	r3, {r1, r4, r6}
    4228:	0001da04 	andeq	sp, r1, r4, lsl #20
    422c:	c60c0800 	strgt	r0, [ip], -r0, lsl #16
    4230:	03000002 	movweq	r0, #2
    4234:	01da0439 	bicseq	r0, sl, r9, lsr r4
    4238:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    423c:	00000250 	andeq	r0, r0, r0, asr r2
    4240:	da043a03 	ble	112a54 <__Main_Stack_Size+0x112654>
    4244:	10000001 	andne	r0, r0, r1
    4248:	0002bf0c 	andeq	fp, r2, ip, lsl #30
    424c:	043b0300 	ldrteq	r0, [fp], #-768	; 0xfffffd00
    4250:	000001da 	ldrdeq	r0, [r0], -sl
    4254:	03020c14 	movweq	r0, #11284	; 0x2c14
    4258:	3c030000 	stccc	0, cr0, [r3], {-0}
    425c:	0001da04 	andeq	sp, r1, r4, lsl #20
    4260:	850c1800 	strhi	r1, [ip, #-2048]	; 0xfffff800
    4264:	03000002 	movweq	r0, #2
    4268:	01da043d 	bicseq	r0, sl, sp, lsr r4
    426c:	0c1c0000 	ldceq	0, cr0, [ip], {-0}
    4270:	00000259 	andeq	r0, r0, r9, asr r2
    4274:	da043e03 	ble	113a88 <__Main_Stack_Size+0x113688>
    4278:	20000001 	andcs	r0, r0, r1
    427c:	52534315 	subspl	r4, r3, #1409286144	; 0x54000000
    4280:	043f0300 	ldrteq	r0, [pc], #-768	; 4288 <__Main_Stack_Size+0x3e88>
    4284:	000001da 	ldrdeq	r0, [r0], -sl
    4288:	44060024 	strmi	r0, [r6], #-36	; 0xffffffdc
    428c:	03000002 	movweq	r0, #2
    4290:	03b5044a 			; <UNDEFINED> instruction: 0x03b5044a
    4294:	1c140000 	ldcne	0, cr0, [r4], {-0}
    4298:	0a04d203 	beq	138aac <__Main_Stack_Size+0x1386ac>
    429c:	15000005 	strne	r0, [r0, #-5]
    42a0:	03005253 	movweq	r5, #595	; 0x253
    42a4:	01c304d4 	ldrdeq	r0, [r3, #68]	; 0x44
    42a8:	0c000000 	stceq	0, cr0, [r0], {-0}
    42ac:	0000026e 	andeq	r0, r0, lr, ror #4
    42b0:	b804d503 	stmdalt	r4, {r0, r1, r8, sl, ip, lr, pc}
    42b4:	02000001 	andeq	r0, r0, #1
    42b8:	00524415 	subseq	r4, r2, r5, lsl r4
    42bc:	c304d603 	movwgt	sp, #17923	; 0x4603
    42c0:	04000001 	streq	r0, [r0], #-1
    42c4:	000d760c 	andeq	r7, sp, ip, lsl #12
    42c8:	04d70300 	ldrbeq	r0, [r7], #768	; 0x300
    42cc:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
    42d0:	52421506 	subpl	r1, r2, #25165824	; 0x1800000
    42d4:	d8030052 	stmdale	r3, {r1, r4, r6}
    42d8:	0001c304 	andeq	ip, r1, r4, lsl #6
    42dc:	dc0c0800 	stcle	8, cr0, [ip], {-0}
    42e0:	0300000d 	movweq	r0, #13
    42e4:	01b804d9 			; <UNDEFINED> instruction: 0x01b804d9
    42e8:	150a0000 	strne	r0, [sl, #-0]
    42ec:	00315243 	eorseq	r5, r1, r3, asr #4
    42f0:	c304da03 	movwgt	sp, #18947	; 0x4a03
    42f4:	0c000001 	stceq	0, cr0, [r0], {1}
    42f8:	000d800c 	andeq	r8, sp, ip
    42fc:	04db0300 	ldrbeq	r0, [fp], #768	; 0x300
    4300:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
    4304:	5243150e 	subpl	r1, r3, #58720256	; 0x3800000
    4308:	dc030032 	stcle	0, cr0, [r3], {50}	; 0x32
    430c:	0001c304 	andeq	ip, r1, r4, lsl #6
    4310:	8a0c1000 	bhi	308318 <__Main_Stack_Size+0x307f18>
    4314:	0300000d 	movweq	r0, #13
    4318:	01b804dd 			; <UNDEFINED> instruction: 0x01b804dd
    431c:	15120000 	ldrne	r0, [r2, #-0]
    4320:	00335243 	eorseq	r5, r3, r3, asr #4
    4324:	c304de03 	movwgt	sp, #19971	; 0x4e03
    4328:	14000001 	strne	r0, [r0], #-1
    432c:	000d940c 	andeq	r9, sp, ip, lsl #8
    4330:	04df0300 	ldrbeq	r0, [pc], #768	; 4338 <__Main_Stack_Size+0x3f38>
    4334:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
    4338:	10e10c16 	rscne	r0, r1, r6, lsl ip
    433c:	e0030000 	and	r0, r3, r0
    4340:	0001c304 	andeq	ip, r1, r4, lsl #6
    4344:	9e0c1800 	cdpls	8, 0, cr1, cr12, cr0, {0}
    4348:	0300000d 	movweq	r0, #13
    434c:	01b804e1 			; <UNDEFINED> instruction: 0x01b804e1
    4350:	001a0000 	andseq	r0, sl, r0
    4354:	00119806 	andseq	r9, r1, r6, lsl #16
    4358:	04e20300 	strbteq	r0, [r2], #768	; 0x300
    435c:	0000044c 	andeq	r0, r0, ip, asr #8
    4360:	0005260f 	andeq	r2, r5, pc, lsl #12
    4364:	00052600 	andeq	r2, r5, r0, lsl #12
    4368:	01fe1000 	mvnseq	r1, r0
    436c:	00ff0000 	rscseq	r0, pc, r0
    4370:	95060105 	strls	r0, [r6, #-261]	; 0xfffffefb
    4374:	16000000 	strne	r0, [r0], -r0
    4378:	000010b6 	strheq	r1, [r0], -r6
    437c:	05160401 	ldreq	r0, [r6, #-1025]	; 0xfffffbff
    4380:	03050000 	movweq	r0, #20480	; 0x5000
    4384:	2000129c 	mulcs	r0, ip, r2
    4388:	000e6416 	andeq	r6, lr, r6, lsl r4
    438c:	05050100 	streq	r0, [r5, #-256]	; 0xffffff00
    4390:	05000002 	streq	r0, [r0, #-2]
    4394:	0013a003 	andseq	sl, r3, r3
    4398:	12c41620 	sbcne	r1, r4, #32, 12	; 0x2000000
    439c:	06010000 	streq	r0, [r1], -r0
    43a0:	00000205 	andeq	r0, r0, r5, lsl #4
    43a4:	139c0305 	orrsne	r0, ip, #335544320	; 0x14000000
    43a8:	b1162000 	tstlt	r6, r0
    43ac:	01000011 	tsteq	r0, r1, lsl r0
    43b0:	00051608 	andeq	r1, r5, r8, lsl #12
    43b4:	a4030500 	strge	r0, [r3], #-1280	; 0xfffffb00
    43b8:	16200013 			; <UNDEFINED> instruction: 0x16200013
    43bc:	000010fc 	strdeq	r1, [r0], -ip
    43c0:	01fe0901 	mvnseq	r0, r1, lsl #18
    43c4:	03050000 	movweq	r0, #20480	; 0x5000
    43c8:	200014ac 	andcs	r1, r0, ip, lsr #9
    43cc:	00129016 	andseq	r9, r2, r6, lsl r0
    43d0:	fe0a0100 	cdp2	1, 0, cr0, cr10, cr0, {0}
    43d4:	05000001 	streq	r0, [r0, #-1]
    43d8:	0014a403 	andseq	sl, r4, r3, lsl #8
    43dc:	12a81620 	adcne	r1, r8, #32, 12	; 0x2000000
    43e0:	0b010000 	bleq	443e8 <__Main_Stack_Size+0x43fe8>
    43e4:	000001f9 	strdeq	r0, [r0], -r9
    43e8:	14a80305 	strtne	r0, [r8], #773	; 0x305
    43ec:	05172000 	ldreq	r2, [r7, #-0]
    43f0:	0100000d 	tsteq	r0, sp
    43f4:	000e8040 	andeq	r8, lr, r0, asr #32
    43f8:	00005408 	andeq	r5, r0, r8, lsl #8
    43fc:	fb9c0100 	blx	fe704806 <_estack+0xde6ff806>
    4400:	18000005 	stmdane	r0, {r0, r2}
    4404:	0000107a 	andeq	r1, r0, sl, ror r0
    4408:	01df4a01 	bicseq	r4, pc, r1, lsl #20
    440c:	c2000000 	andgt	r0, r0, #0
    4410:	27190001 	ldrcs	r0, [r9, -r1]
    4414:	01000013 	tsteq	r0, r3, lsl r0
    4418:	0001df4b 	andeq	sp, r1, fp, asr #30
    441c:	1a07a100 	bne	1ec824 <__Main_Stack_Size+0x1ec424>
    4420:	0000111a 	andeq	r1, r0, sl, lsl r1
    4424:	01df4c01 	bicseq	r4, pc, r1, lsl #24
    4428:	1b080000 	blne	204430 <__Main_Stack_Size+0x204030>
    442c:	000006b7 			; <UNDEFINED> instruction: 0x000006b7
    4430:	08000e8c 	stmdaeq	r0, {r2, r3, r7, r9, sl, fp}
    4434:	00000278 	andeq	r0, r0, r8, ror r2
    4438:	c41c5301 	ldrgt	r5, [ip], #-769	; 0xfffffcff
    443c:	9a000006 	bls	445c <__Main_Stack_Size+0x405c>
    4440:	00000006 	andeq	r0, r0, r6
    4444:	0f6a1700 	svceq	0x006a1700
    4448:	3b010000 	blcc	44450 <__Main_Stack_Size+0x44050>
    444c:	08000e30 	stmdaeq	r0, {r4, r5, r9, sl, fp}
    4450:	00000050 	andeq	r0, r0, r0, asr r0
    4454:	06509c01 	ldrbeq	r9, [r0], -r1, lsl #24
    4458:	6d1d0000 	ldcvs	0, cr0, [sp, #-0]
    445c:	01006773 	tsteq	r0, r3, ror r7
    4460:	0006503b 	andeq	r5, r6, fp, lsr r0
    4464:	0006af00 	andeq	sl, r6, r0, lsl #30
    4468:	06561b00 	ldrbeq	r1, [r6], -r0, lsl #22
    446c:	0e420000 	cdpeq	0, 4, cr0, cr2, cr0, {0}
    4470:	02600800 	rsbeq	r0, r0, #0, 16
    4474:	3d010000 	stccc	0, cr0, [r1, #-0]
    4478:	0006621c 	andeq	r6, r6, ip, lsl r2
    447c:	0006cf00 	andeq	ip, r6, r0, lsl #30
    4480:	06561e00 	ldrbeq	r1, [r6], -r0, lsl #28
    4484:	0e560000 	cdpeq	0, 5, cr0, cr6, cr0, {0}
    4488:	000e0800 	andeq	r0, lr, r0, lsl #16
    448c:	621c0000 	andsvs	r0, ip, #0
    4490:	f8000006 			; <UNDEFINED> instruction: 0xf8000006
    4494:	00000006 	andeq	r0, r0, r6
    4498:	041f0000 	ldreq	r0, [pc], #-0	; 44a0 <__Main_Stack_Size+0x40a0>
    449c:	00000526 	andeq	r0, r0, r6, lsr #10
    44a0:	00104120 	andseq	r4, r0, r0, lsr #2
    44a4:	012f0100 			; <UNDEFINED> instruction: 0x012f0100
    44a8:	0000066c 	andeq	r0, r0, ip, ror #12
    44ac:	01006321 	tsteq	r0, r1, lsr #6
    44b0:	0005262f 	andeq	r2, r5, pc, lsr #12
    44b4:	41220000 			; <UNDEFINED> instruction: 0x41220000
    44b8:	0100000d 	tsteq	r0, sp
    44bc:	0001f22a 	andeq	pc, r1, sl, lsr #4
    44c0:	000e1800 	andeq	r1, lr, r0, lsl #16
    44c4:	00001808 	andeq	r1, r0, r8, lsl #16
    44c8:	239c0100 	orrscs	r0, ip, #0, 2
    44cc:	00000e6f 	andeq	r0, r0, pc, ror #28
    44d0:	05262001 	streq	r2, [r6, #-1]!
    44d4:	0df00000 	ldcleq	0, cr0, [r0]
    44d8:	00280800 	eoreq	r0, r8, r0, lsl #16
    44dc:	9c010000 	stcls	0, cr0, [r1], {-0}
    44e0:	000006a6 	andeq	r0, r0, r6, lsr #13
    44e4:	01006324 	tsteq	r0, r4, lsr #6
    44e8:	00052622 	andeq	r2, r5, r2, lsr #12
    44ec:	00500100 	subseq	r0, r0, r0, lsl #2
    44f0:	0013a325 	andseq	sl, r3, r5, lsr #6
    44f4:	740d0100 	strvc	r0, [sp], #-256	; 0xffffff00
    44f8:	7c08000d 	stcvc	0, cr0, [r8], {13}
    44fc:	01000000 	mrseq	r0, (UNDEF: 0)
    4500:	1146269c 			; <UNDEFINED> instruction: 0x1146269c
    4504:	3e020000 	cdpcc	0, 0, cr0, cr2, cr0, {0}
    4508:	06d10305 	ldrbeq	r0, [r1], r5, lsl #6
    450c:	c7270000 	strgt	r0, [r7, -r0]!
    4510:	02000010 	andeq	r0, r0, #16
    4514:	0170053e 	cmneq	r0, lr, lsr r5
    4518:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    451c:	00000656 	andeq	r0, r0, r6, asr r6
    4520:	00000000 	andeq	r0, r0, r0
    4524:	00000038 	andeq	r0, r0, r8, lsr r0
    4528:	62299c01 	eorvs	r9, r9, #256	; 0x100
    452c:	01000006 	tsteq	r0, r6
    4530:	06562a50 			; <UNDEFINED> instruction: 0x06562a50
    4534:	02480000 	subeq	r0, r8, #0
    4538:	621c0000 	andsvs	r0, ip, #0
    453c:	0b000006 	bleq	455c <__Main_Stack_Size+0x415c>
    4540:	00000007 	andeq	r0, r0, r7
    4544:	0bf30000 	bleq	ffcc454c <_estack+0xdfcbf54c>
    4548:	00040000 	andeq	r0, r4, r0
    454c:	0000112e 	andeq	r1, r0, lr, lsr #2
    4550:	01670104 	cmneq	r7, r4, lsl #2
    4554:	db0c0000 	blle	30455c <__Main_Stack_Size+0x30415c>
    4558:	48000013 	stmdami	r0, {r0, r1, r4}
    455c:	d0000000 	andle	r0, r0, r0
    4560:	00000002 	andeq	r0, r0, r2
    4564:	62000000 	andvs	r0, r0, #0
    4568:	0200000c 	andeq	r0, r0, #12
    456c:	008e0601 	addeq	r0, lr, r1, lsl #12
    4570:	02020000 	andeq	r0, r2, #0
    4574:	00021305 	andeq	r1, r2, r5, lsl #6
    4578:	0ae40300 	beq	ff905180 <_estack+0xdf900180>
    457c:	28020000 	stmdacs	r2, {}	; <UNPREDICTABLE>
    4580:	00000043 	andeq	r0, r0, r3, asr #32
    4584:	00003304 	andeq	r3, r0, r4, lsl #6
    4588:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
    458c:	0000012f 	andeq	r0, r0, pc, lsr #2
    4590:	00101b03 	andseq	r1, r0, r3, lsl #22
    4594:	552b0200 	strpl	r0, [fp, #-512]!	; 0xfffffe00
    4598:	02000000 	andeq	r0, r0, #0
    459c:	012a0508 			; <UNDEFINED> instruction: 0x012a0508
    45a0:	7d030000 	stcvc	0, cr0, [r3, #-0]
    45a4:	02000002 	andeq	r0, r0, #2
    45a8:	0000672e 	andeq	r6, r0, lr, lsr #14
    45ac:	08010200 	stmdaeq	r1, {r9}
    45b0:	0000008c 	andeq	r0, r0, ip, lsl #1
    45b4:	00031903 	andeq	r1, r3, r3, lsl #18
    45b8:	79310200 	ldmdbvc	r1!, {r9}
    45bc:	02000000 	andeq	r0, r0, #0
    45c0:	00a80702 	adceq	r0, r8, r2, lsl #14
    45c4:	e3030000 	movw	r0, #12288	; 0x3000
    45c8:	0200000a 	andeq	r0, r0, #10
    45cc:	00009034 	andeq	r9, r0, r4, lsr r0
    45d0:	00800400 	addeq	r0, r0, r0, lsl #8
    45d4:	04020000 	streq	r0, [r2], #-0
    45d8:	0000e407 	andeq	lr, r0, r7, lsl #8
    45dc:	07080200 	streq	r0, [r8, -r0, lsl #4]
    45e0:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    45e4:	69050405 	stmdbvs	r5, {r0, r2, sl}
    45e8:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    45ec:	00e90704 	rsceq	r0, r9, r4, lsl #14
    45f0:	b4060000 	strlt	r0, [r6], #-0
    45f4:	03000003 	movweq	r0, #3
    45f8:	003e0629 	eorseq	r0, lr, r9, lsr #12
    45fc:	5e070000 	cdppl	0, 0, cr0, cr7, cr0, {0}
    4600:	04000003 	streq	r0, [r0], #-3
    4604:	00008035 	andeq	r8, r0, r5, lsr r0
    4608:	05240800 	streq	r0, [r4, #-2048]!	; 0xfffff800
    460c:	013f0385 	teqeq	pc, r5, lsl #7
    4610:	41090000 	mrsmi	r0, (UNDEF: 9)
    4614:	05005243 	streq	r5, [r0, #-579]	; 0xfffffdbd
    4618:	008b0387 	addeq	r0, fp, r7, lsl #7
    461c:	0a000000 	beq	4624 <__Main_Stack_Size+0x4224>
    4620:	000002ad 	andeq	r0, r0, sp, lsr #5
    4624:	8b038805 	blhi	e6640 <__Main_Stack_Size+0xe6240>
    4628:	04000000 	streq	r0, [r0], #-0
    462c:	0002aa0a 	andeq	sl, r2, sl, lsl #20
    4630:	03890500 	orreq	r0, r9, #0, 10
    4634:	0000008b 	andeq	r0, r0, fp, lsl #1
    4638:	52530908 	subspl	r0, r3, #8, 18	; 0x20000
    463c:	038a0500 	orreq	r0, sl, #0, 10
    4640:	0000008b 	andeq	r0, r0, fp, lsl #1
    4644:	5243090c 	subpl	r0, r3, #12, 18	; 0x30000
    4648:	038b0500 	orreq	r0, fp, #0, 10
    464c:	0000008b 	andeq	r0, r0, fp, lsl #1
    4650:	52410910 	subpl	r0, r1, #16, 18	; 0x40000
    4654:	038c0500 	orreq	r0, ip, #0, 10
    4658:	0000008b 	andeq	r0, r0, fp, lsl #1
    465c:	039d0a14 	orrseq	r0, sp, #20, 20	; 0x14000
    4660:	8d050000 	stchi	0, cr0, [r5, #-0]
    4664:	00008b03 	andeq	r8, r0, r3, lsl #22
    4668:	4f091800 	svcmi	0x00091800
    466c:	05005242 	streq	r5, [r0, #-578]	; 0xfffffdbe
    4670:	008b038e 	addeq	r0, fp, lr, lsl #7
    4674:	0a1c0000 	beq	70467c <__Main_Stack_Size+0x70427c>
    4678:	000002cf 	andeq	r0, r0, pc, asr #5
    467c:	8b038f05 	blhi	e8298 <__Main_Stack_Size+0xe7e98>
    4680:	20000000 	andcs	r0, r0, r0
    4684:	03a60b00 			; <UNDEFINED> instruction: 0x03a60b00
    4688:	98050000 	stmdals	r5, {}	; <UNPREDICTABLE>
    468c:	0000c303 	andeq	ip, r0, r3, lsl #6
    4690:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
    4694:	000006e7 	andeq	r0, r0, r7, ror #13
    4698:	0006d503 	andeq	sp, r6, r3, lsl #10
    469c:	9e0c0600 	cfmadd32ls	mvax0, mvfx0, mvfx12, mvfx0
    46a0:	03000000 	movweq	r0, #0
    46a4:	00000a28 	andeq	r0, r0, r8, lsr #20
    46a8:	00432c07 	subeq	r2, r3, r7, lsl #24
    46ac:	0f030000 	svceq	0x00030000
    46b0:	07000008 	streq	r0, [r0, -r8]
    46b4:	00004372 	andeq	r4, r0, r2, ror r3
    46b8:	06b60b00 	ldrteq	r0, [r6], r0, lsl #22
    46bc:	65080000 	strvs	r0, [r8, #-0]
    46c0:	0000a501 	andeq	sl, r0, r1, lsl #10
    46c4:	07040c00 	streq	r0, [r4, -r0, lsl #24]
    46c8:	00019ea6 	andeq	r9, r1, r6, lsr #29
    46cc:	06b00d00 	ldrteq	r0, [r0], r0, lsl #26
    46d0:	a8070000 	stmdage	r7, {}	; <UNPREDICTABLE>
    46d4:	00000173 	andeq	r0, r0, r3, ror r1
    46d8:	0006560d 	andeq	r5, r6, sp, lsl #12
    46dc:	9ea90700 	cdpls	7, 10, cr0, cr9, cr0, {0}
    46e0:	00000001 	andeq	r0, r0, r1
    46e4:	0000670e 	andeq	r6, r0, lr, lsl #14
    46e8:	0001ae00 	andeq	sl, r1, r0, lsl #28
    46ec:	00a50f00 	adceq	r0, r5, r0, lsl #30
    46f0:	00030000 	andeq	r0, r3, r0
    46f4:	a3070810 	movwge	r0, #30736	; 0x7810
    46f8:	000001cf 	andeq	r0, r0, pc, asr #3
    46fc:	0007f111 	andeq	pc, r7, r1, lsl r1	; <UNPREDICTABLE>
    4700:	9ea50700 	cdpls	7, 10, cr0, cr5, cr0, {0}
    4704:	00000000 	andeq	r0, r0, r0
    4708:	0007f911 	andeq	pc, r7, r1, lsl r9	; <UNPREDICTABLE>
    470c:	7faa0700 	svcvc	0x00aa0700
    4710:	04000001 	streq	r0, [r0], #-1
    4714:	07690300 	strbeq	r0, [r9, -r0, lsl #6]!
    4718:	ab070000 	blge	1c4720 <__Main_Stack_Size+0x1c4320>
    471c:	000001ae 	andeq	r0, r0, lr, lsr #3
    4720:	00061f03 	andeq	r1, r6, r3, lsl #30
    4724:	52af0700 	adcpl	r0, pc, #0, 14
    4728:	12000001 	andne	r0, r0, #1
    472c:	ed041304 	stc	3, cr1, [r4, #-16]
    4730:	02000001 	andeq	r0, r0, #1
    4734:	00950601 	addseq	r0, r5, r1, lsl #12
    4738:	ed140000 	ldc	0, cr0, [r4, #-0]
    473c:	03000001 	movweq	r0, #1
    4740:	00000857 	andeq	r0, r0, r7, asr r8
    4744:	00901609 	addseq	r1, r0, r9, lsl #12
    4748:	30150000 	andscc	r0, r5, r0
    474c:	18000006 	stmdane	r0, {r1, r2}
    4750:	02572f09 	subseq	r2, r7, #9, 30	; 0x24
    4754:	94110000 	ldrls	r0, [r1], #-0
    4758:	09000007 	stmdbeq	r0, {r0, r1, r2}
    475c:	00025731 	andeq	r5, r2, r1, lsr r7
    4760:	5f160000 	svcpl	0x00160000
    4764:	3209006b 	andcc	r0, r9, #107	; 0x6b
    4768:	0000009e 	muleq	r0, lr, r0
    476c:	07dc1104 	ldrbeq	r1, [ip, r4, lsl #2]
    4770:	32090000 	andcc	r0, r9, #0
    4774:	0000009e 	muleq	r0, lr, r0
    4778:	06191108 	ldreq	r1, [r9], -r8, lsl #2
    477c:	32090000 	andcc	r0, r9, #0
    4780:	0000009e 	muleq	r0, lr, r0
    4784:	088c110c 	stmeq	ip, {r2, r3, r8, ip}
    4788:	32090000 	andcc	r0, r9, #0
    478c:	0000009e 	muleq	r0, lr, r0
    4790:	785f1610 	ldmdavc	pc, {r4, r9, sl, ip}^	; <UNPREDICTABLE>
    4794:	5d330900 			; <UNDEFINED> instruction: 0x5d330900
    4798:	14000002 	strne	r0, [r0], #-2
    479c:	04041300 	streq	r1, [r4], #-768	; 0xfffffd00
    47a0:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
    47a4:	000001f9 	strdeq	r0, [r0], -r9
    47a8:	0000026d 	andeq	r0, r0, sp, ror #4
    47ac:	0000a50f 	andeq	sl, r0, pc, lsl #10
    47b0:	15000000 	strne	r0, [r0, #-0]
    47b4:	00000651 	andeq	r0, r0, r1, asr r6
    47b8:	e6370924 	ldrt	r0, [r7], -r4, lsr #18
    47bc:	11000002 	tstne	r0, r2
    47c0:	00000555 	andeq	r0, r0, r5, asr r5
    47c4:	009e3909 	addseq	r3, lr, r9, lsl #18
    47c8:	11000000 	mrsne	r0, (UNDEF: 0)
    47cc:	00000817 	andeq	r0, r0, r7, lsl r8
    47d0:	009e3a09 	addseq	r3, lr, r9, lsl #20
    47d4:	11040000 	mrsne	r0, (UNDEF: 4)
    47d8:	0000056a 	andeq	r0, r0, sl, ror #10
    47dc:	009e3b09 	addseq	r3, lr, r9, lsl #22
    47e0:	11080000 	mrsne	r0, (UNDEF: 8)
    47e4:	00000905 	andeq	r0, r0, r5, lsl #18
    47e8:	009e3c09 	addseq	r3, lr, r9, lsl #24
    47ec:	110c0000 	mrsne	r0, (UNDEF: 12)
    47f0:	000006fa 	strdeq	r0, [r0], -sl
    47f4:	009e3d09 	addseq	r3, lr, r9, lsl #26
    47f8:	11100000 	tstne	r0, r0
    47fc:	000006cb 	andeq	r0, r0, fp, asr #13
    4800:	009e3e09 	addseq	r3, lr, r9, lsl #28
    4804:	11140000 	tstne	r4, r0
    4808:	00000891 	muleq	r0, r1, r8
    480c:	009e3f09 	addseq	r3, lr, r9, lsl #30
    4810:	11180000 	tstne	r8, r0
    4814:	0000074b 	andeq	r0, r0, fp, asr #14
    4818:	009e4009 	addseq	r4, lr, r9
    481c:	111c0000 	tstne	ip, r0
    4820:	000008cc 	andeq	r0, r0, ip, asr #17
    4824:	009e4109 	addseq	r4, lr, r9, lsl #2
    4828:	00200000 	eoreq	r0, r0, r0
    482c:	00057917 	andeq	r7, r5, r7, lsl r9
    4830:	09010800 	stmdbeq	r1, {fp}
    4834:	0003264a 	andeq	r2, r3, sl, asr #12
    4838:	06071100 	streq	r1, [r7], -r0, lsl #2
    483c:	4b090000 	blmi	244844 <__Main_Stack_Size+0x244444>
    4840:	00000326 	andeq	r0, r0, r6, lsr #6
    4844:	04e51100 	strbteq	r1, [r5], #256	; 0x100
    4848:	4c090000 	stcmi	0, cr0, [r9], {-0}
    484c:	00000326 	andeq	r0, r0, r6, lsr #6
    4850:	08491880 	stmdaeq	r9, {r7, fp, ip}^
    4854:	4e090000 	cdpmi	0, 0, cr0, cr9, cr0, {0}
    4858:	000001f9 	strdeq	r0, [r0], -r9
    485c:	bc180100 	ldflts	f0, [r8], {-0}
    4860:	09000005 	stmdbeq	r0, {r0, r2}
    4864:	0001f951 	andeq	pc, r1, r1, asr r9	; <UNPREDICTABLE>
    4868:	00010400 	andeq	r0, r1, r0, lsl #8
    486c:	0001e50e 	andeq	lr, r1, lr, lsl #10
    4870:	00033600 	andeq	r3, r3, r0, lsl #12
    4874:	00a50f00 	adceq	r0, r5, r0, lsl #30
    4878:	001f0000 	andseq	r0, pc, r0
    487c:	00070317 	andeq	r0, r7, r7, lsl r3
    4880:	09019000 	stmdbeq	r1, {ip, pc}
    4884:	0003745d 	andeq	r7, r3, sp, asr r4
    4888:	07941100 	ldreq	r1, [r4, r0, lsl #2]
    488c:	5e090000 	cdppl	0, 0, cr0, cr9, cr0, {0}
    4890:	00000374 	andeq	r0, r0, r4, ror r3
    4894:	07ac1100 	streq	r1, [ip, r0, lsl #2]!
    4898:	5f090000 	svcpl	0x00090000
    489c:	0000009e 	muleq	r0, lr, r0
    48a0:	060f1104 	streq	r1, [pc], -r4, lsl #2
    48a4:	61090000 	mrsvs	r0, (UNDEF: 9)
    48a8:	0000037a 	andeq	r0, r0, sl, ror r3
    48ac:	05791108 	ldrbeq	r1, [r9, #-264]!	; 0xfffffef8
    48b0:	62090000 	andvs	r0, r9, #0
    48b4:	000002e6 	andeq	r0, r0, r6, ror #5
    48b8:	04130088 	ldreq	r0, [r3], #-136	; 0xffffff78
    48bc:	00000336 	andeq	r0, r0, r6, lsr r3
    48c0:	00038a0e 	andeq	r8, r3, lr, lsl #20
    48c4:	00038a00 	andeq	r8, r3, r0, lsl #20
    48c8:	00a50f00 	adceq	r0, r5, r0, lsl #30
    48cc:	001f0000 	andseq	r0, pc, r0
    48d0:	03900413 	orrseq	r0, r0, #318767104	; 0x13000000
    48d4:	15190000 	ldrne	r0, [r9, #-0]
    48d8:	00000755 	andeq	r0, r0, r5, asr r7
    48dc:	b6750908 	ldrbtlt	r0, [r5], -r8, lsl #18
    48e0:	11000003 	tstne	r0, r3
    48e4:	00000564 	andeq	r0, r0, r4, ror #10
    48e8:	03b67609 			; <UNDEFINED> instruction: 0x03b67609
    48ec:	11000000 	mrsne	r0, (UNDEF: 0)
    48f0:	00000b48 	andeq	r0, r0, r8, asr #22
    48f4:	009e7709 	addseq	r7, lr, r9, lsl #14
    48f8:	00040000 	andeq	r0, r4, r0
    48fc:	00670413 	rsbeq	r0, r7, r3, lsl r4
    4900:	74150000 	ldrvc	r0, [r5], #-0
    4904:	68000007 	stmdavs	r0, {r0, r1, r2}
    4908:	04e6b509 	strbteq	fp, [r6], #1289	; 0x509
    490c:	5f160000 	svcpl	0x00160000
    4910:	b6090070 			; <UNDEFINED> instruction: 0xb6090070
    4914:	000003b6 			; <UNDEFINED> instruction: 0x000003b6
    4918:	725f1600 	subsvc	r1, pc, #0, 12
    491c:	9eb70900 	vmovls.f16	s0, #112	; 0x3f800000  1.0	; <UNPREDICTABLE>
    4920:	04000000 	streq	r0, [r0], #-0
    4924:	00775f16 	rsbseq	r5, r7, r6, lsl pc
    4928:	009eb809 	addseq	fp, lr, r9, lsl #16
    492c:	11080000 	mrsne	r0, (UNDEF: 8)
    4930:	000005b5 			; <UNDEFINED> instruction: 0x000005b5
    4934:	002cb909 	eoreq	fp, ip, r9, lsl #18
    4938:	110c0000 	mrsne	r0, (UNDEF: 12)
    493c:	0000066d 	andeq	r0, r0, sp, ror #12
    4940:	002cba09 	eoreq	fp, ip, r9, lsl #20
    4944:	160e0000 	strne	r0, [lr], -r0
    4948:	0066625f 	rsbeq	r6, r6, pc, asr r2
    494c:	0391bb09 	orrseq	fp, r1, #9216	; 0x2400
    4950:	11100000 	tstne	r0, r0
    4954:	00000524 	andeq	r0, r0, r4, lsr #10
    4958:	009ebc09 	addseq	fp, lr, r9, lsl #24
    495c:	11180000 	tstne	r8, r0
    4960:	00000587 	andeq	r0, r0, r7, lsl #11
    4964:	01e5c309 	mvneq	ip, r9, lsl #6
    4968:	111c0000 	tstne	ip, r0
    496c:	00000e73 	andeq	r0, r0, r3, ror lr
    4970:	0641c509 	strbeq	ip, [r1], -r9, lsl #10
    4974:	11200000 			; <UNDEFINED> instruction: 0x11200000
    4978:	00001407 	andeq	r1, r0, r7, lsl #8
    497c:	066bc709 	strbteq	ip, [fp], -r9, lsl #14
    4980:	11240000 			; <UNDEFINED> instruction: 0x11240000
    4984:	00000801 	andeq	r0, r0, r1, lsl #16
    4988:	068fca09 	streq	ip, [pc], r9, lsl #20
    498c:	11280000 			; <UNDEFINED> instruction: 0x11280000
    4990:	000008e6 	andeq	r0, r0, r6, ror #17
    4994:	06a9cb09 	strteq	ip, [r9], r9, lsl #22
    4998:	162c0000 	strtne	r0, [ip], -r0
    499c:	0062755f 	rsbeq	r7, r2, pc, asr r5
    49a0:	0391ce09 	orrseq	ip, r1, #9, 28	; 0x90
    49a4:	16300000 	ldrtne	r0, [r0], -r0
    49a8:	0070755f 	rsbseq	r7, r0, pc, asr r5
    49ac:	03b6cf09 			; <UNDEFINED> instruction: 0x03b6cf09
    49b0:	16380000 	ldrtne	r0, [r8], -r0
    49b4:	0072755f 	rsbseq	r7, r2, pc, asr r5
    49b8:	009ed009 	addseq	sp, lr, r9
    49bc:	113c0000 	teqne	ip, r0
    49c0:	0000055e 	andeq	r0, r0, lr, asr r5
    49c4:	06afd309 	strteq	sp, [pc], r9, lsl #6
    49c8:	11400000 	mrsne	r0, (UNDEF: 64)
    49cc:	000008be 			; <UNDEFINED> instruction: 0x000008be
    49d0:	06bfd409 	ldrteq	sp, [pc], r9, lsl #8
    49d4:	16430000 	strbne	r0, [r3], -r0
    49d8:	00626c5f 	rsbeq	r6, r2, pc, asr ip
    49dc:	0391d709 	orrseq	sp, r1, #2359296	; 0x240000
    49e0:	11440000 	mrsne	r0, (UNDEF: 68)
    49e4:	00000be2 	andeq	r0, r0, r2, ror #23
    49e8:	009eda09 	addseq	sp, lr, r9, lsl #20
    49ec:	114c0000 	mrsne	r0, (UNDEF: 76)
    49f0:	000005e0 	andeq	r0, r0, r0, ror #11
    49f4:	015ddb09 	cmpeq	sp, r9, lsl #22
    49f8:	11500000 	cmpne	r0, r0
    49fc:	000009d9 	ldrdeq	r0, [r0], -r9
    4a00:	0504de09 	streq	sp, [r4, #-3593]	; 0xfffff1f7
    4a04:	11540000 	cmpne	r4, r0
    4a08:	000006bd 			; <UNDEFINED> instruction: 0x000006bd
    4a0c:	01dae209 	bicseq	lr, sl, r9, lsl #4
    4a10:	11580000 	cmpne	r8, r0
    4a14:	00000786 	andeq	r0, r0, r6, lsl #15
    4a18:	01cfe409 	biceq	lr, pc, r9, lsl #8
    4a1c:	115c0000 	cmpne	ip, r0
    4a20:	000006c3 	andeq	r0, r0, r3, asr #13
    4a24:	009ee509 	addseq	lr, lr, r9, lsl #10
    4a28:	00640000 	rsbeq	r0, r4, r0
    4a2c:	00009e1a 	andeq	r9, r0, sl, lsl lr
    4a30:	00050400 	andeq	r0, r5, r0, lsl #8
    4a34:	05041b00 	streq	r1, [r4, #-2816]	; 0xfffff500
    4a38:	e51b0000 	ldr	r0, [fp, #-0]
    4a3c:	1b000001 	blne	4a48 <__Main_Stack_Size+0x4648>
    4a40:	000001e7 	andeq	r0, r0, r7, ror #3
    4a44:	00009e1b 	andeq	r9, r0, fp, lsl lr
    4a48:	04130000 	ldreq	r0, [r3], #-0
    4a4c:	0000050f 	andeq	r0, r0, pc, lsl #10
    4a50:	00050414 	andeq	r0, r5, r4, lsl r4
    4a54:	07e41c00 	strbeq	r1, [r4, r0, lsl #24]!
    4a58:	04280000 	strteq	r0, [r8], #-0
    4a5c:	41023909 	tstmi	r2, r9, lsl #18
    4a60:	0a000006 	beq	4a80 <__Main_Stack_Size+0x4680>
    4a64:	00000598 	muleq	r0, r8, r5
    4a68:	9e023b09 	vmlals.f64	d3, d2, d9
    4a6c:	00000000 	andeq	r0, r0, r0
    4a70:	0005c40a 	andeq	ip, r5, sl, lsl #8
    4a74:	02400900 	subeq	r0, r0, #0, 18
    4a78:	00000716 	andeq	r0, r0, r6, lsl r7
    4a7c:	065d0a04 	ldrbeq	r0, [sp], -r4, lsl #20
    4a80:	40090000 	andmi	r0, r9, r0
    4a84:	00071602 	andeq	r1, r7, r2, lsl #12
    4a88:	280a0800 	stmdacs	sl, {fp}
    4a8c:	09000006 	stmdbeq	r0, {r1, r2}
    4a90:	07160240 	ldreq	r0, [r6, -r0, asr #4]
    4a94:	0a0c0000 	beq	304a9c <__Main_Stack_Size+0x30469c>
    4a98:	000007a7 	andeq	r0, r0, r7, lsr #15
    4a9c:	9e024209 	cdpls	2, 0, cr4, cr2, cr9, {0}
    4aa0:	10000000 	andne	r0, r0, r0
    4aa4:	0004f90a 	andeq	pc, r4, sl, lsl #18
    4aa8:	02430900 	subeq	r0, r3, #0, 18
    4aac:	000008f8 	strdeq	r0, [r0], -r8
    4ab0:	07c30a14 	bfieq	r0, r4, (invalid: 20:3)
    4ab4:	46090000 	strmi	r0, [r9], -r0
    4ab8:	00009e02 	andeq	r9, r0, r2, lsl #28
    4abc:	b10a3000 	mrslt	r3, (UNDEF: 10)
    4ac0:	09000007 	stmdbeq	r0, {r0, r1, r2}
    4ac4:	090d0247 	stmdbeq	sp, {r0, r1, r2, r6, r9}
    4ac8:	0a340000 	beq	d04ad0 <__Main_Stack_Size+0xd046d0>
    4acc:	0000070b 	andeq	r0, r0, fp, lsl #14
    4ad0:	9e024909 	vmlals.f16	s8, s4, s18	; <UNPREDICTABLE>
    4ad4:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    4ad8:	0007b90a 	andeq	fp, r7, sl, lsl #18
    4adc:	024b0900 	subeq	r0, fp, #0, 18
    4ae0:	0000091e 	andeq	r0, r0, lr, lsl r9
    4ae4:	06a80a3c 			; <UNDEFINED> instruction: 0x06a80a3c
    4ae8:	4e090000 	cdpmi	0, 0, cr0, cr9, cr0, {0}
    4aec:	00025702 	andeq	r5, r2, r2, lsl #14
    4af0:	470a4000 	strmi	r4, [sl, -r0]
    4af4:	09000006 	stmdbeq	r0, {r1, r2}
    4af8:	009e024f 	addseq	r0, lr, pc, asr #4
    4afc:	0a440000 	beq	1104b04 <__Main_Stack_Size+0x1104704>
    4b00:	00000900 	andeq	r0, r0, r0, lsl #18
    4b04:	57025009 	strpl	r5, [r2, -r9]
    4b08:	48000002 	stmdami	r0, {r1}
    4b0c:	0007160a 	andeq	r1, r7, sl, lsl #12
    4b10:	02510900 	subseq	r0, r1, #0, 18
    4b14:	00000924 	andeq	r0, r0, r4, lsr #18
    4b18:	06650a4c 	strbteq	r0, [r5], -ip, asr #20
    4b1c:	54090000 	strpl	r0, [r9], #-0
    4b20:	00009e02 	andeq	r9, r0, r2, lsl #28
    4b24:	d80a5000 	stmdale	sl, {ip, lr}
    4b28:	09000005 	stmdbeq	r0, {r0, r2}
    4b2c:	01e70255 	mvneq	r0, r5, asr r2
    4b30:	0a540000 	beq	1504b38 <__Main_Stack_Size+0x1504738>
    4b34:	0000073d 	andeq	r0, r0, sp, lsr r7
    4b38:	d6027809 	strle	r7, [r2], -r9, lsl #16
    4b3c:	58000008 	stmdapl	r0, {r3}
    4b40:	0007031d 	andeq	r0, r7, sp, lsl r3
    4b44:	027c0900 	rsbseq	r0, ip, #0, 18
    4b48:	00000374 	andeq	r0, r0, r4, ror r3
    4b4c:	861d0148 	ldrhi	r0, [sp], -r8, asr #2
    4b50:	09000006 	stmdbeq	r0, {r1, r2}
    4b54:	0336027d 	teqeq	r6, #-805306361	; 0xd0000007
    4b58:	014c0000 	mrseq	r0, (UNDEF: 76)
    4b5c:	0008b41d 	andeq	fp, r8, sp, lsl r4
    4b60:	02810900 	addeq	r0, r1, #0, 18
    4b64:	00000935 	andeq	r0, r0, r5, lsr r9
    4b68:	8f1d02dc 	svchi	0x001d02dc
    4b6c:	09000005 	stmdbeq	r0, {r0, r2}
    4b70:	06db0286 	ldrbeq	r0, [fp], r6, lsl #5
    4b74:	02e00000 	rsceq	r0, r0, #0
    4b78:	0005741d 	andeq	r7, r5, sp, lsl r4
    4b7c:	02870900 	addeq	r0, r7, #0, 18
    4b80:	00000941 	andeq	r0, r0, r1, asr #18
    4b84:	130002ec 	movwne	r0, #748	; 0x2ec
    4b88:	0004e604 	andeq	lr, r4, r4, lsl #12
    4b8c:	009e1a00 	addseq	r1, lr, r0, lsl #20
    4b90:	06650000 	strbteq	r0, [r5], -r0
    4b94:	041b0000 	ldreq	r0, [fp], #-0
    4b98:	1b000005 	blne	4bb4 <__Main_Stack_Size+0x47b4>
    4b9c:	000001e5 	andeq	r0, r0, r5, ror #3
    4ba0:	0006651b 	andeq	r6, r6, fp, lsl r5
    4ba4:	009e1b00 	addseq	r1, lr, r0, lsl #22
    4ba8:	13000000 	movwne	r0, #0
    4bac:	0001f404 	andeq	pc, r1, r4, lsl #8
    4bb0:	47041300 	strmi	r1, [r4, -r0, lsl #6]
    4bb4:	1a000006 	bne	4bd4 <__Main_Stack_Size+0x47d4>
    4bb8:	00000168 	andeq	r0, r0, r8, ror #2
    4bbc:	0000068f 	andeq	r0, r0, pc, lsl #13
    4bc0:	0005041b 	andeq	r0, r5, fp, lsl r4
    4bc4:	01e51b00 	mvneq	r1, r0, lsl #22
    4bc8:	681b0000 	ldmdavs	fp, {}	; <UNPREDICTABLE>
    4bcc:	1b000001 	blne	4bd8 <__Main_Stack_Size+0x47d8>
    4bd0:	0000009e 	muleq	r0, lr, r0
    4bd4:	71041300 	mrsvc	r1, LR_abt
    4bd8:	1a000006 	bne	4bf8 <__Main_Stack_Size+0x47f8>
    4bdc:	0000009e 	muleq	r0, lr, r0
    4be0:	000006a9 	andeq	r0, r0, r9, lsr #13
    4be4:	0005041b 	andeq	r0, r5, fp, lsl r4
    4be8:	01e51b00 	mvneq	r1, r0, lsl #22
    4bec:	13000000 	movwne	r0, #0
    4bf0:	00069504 	andeq	r9, r6, r4, lsl #10
    4bf4:	00670e00 	rsbeq	r0, r7, r0, lsl #28
    4bf8:	06bf0000 	ldrteq	r0, [pc], r0
    4bfc:	a50f0000 	strge	r0, [pc, #-0]	; 4c04 <__Main_Stack_Size+0x4804>
    4c00:	02000000 	andeq	r0, r0, #0
    4c04:	00670e00 	rsbeq	r0, r7, r0, lsl #28
    4c08:	06cf0000 	strbeq	r0, [pc], r0
    4c0c:	a50f0000 	strge	r0, [pc, #-0]	; 4c14 <__Main_Stack_Size+0x4814>
    4c10:	00000000 	andeq	r0, r0, r0
    4c14:	07620b00 	strbeq	r0, [r2, -r0, lsl #22]!
    4c18:	1f090000 	svcne	0x00090000
    4c1c:	0003bc01 	andeq	fp, r3, r1, lsl #24
    4c20:	089b1e00 	ldmeq	fp, {r9, sl, fp, ip}
    4c24:	090c0000 	stmdbeq	ip, {}	; <UNPREDICTABLE>
    4c28:	07100123 	ldreq	r0, [r0, -r3, lsr #2]
    4c2c:	940a0000 	strls	r0, [sl], #-0
    4c30:	09000007 	stmdbeq	r0, {r0, r1, r2}
    4c34:	07100125 	ldreq	r0, [r0, -r5, lsr #2]
    4c38:	0a000000 	beq	4c40 <__Main_Stack_Size+0x4840>
    4c3c:	00000673 	andeq	r0, r0, r3, ror r6
    4c40:	9e012609 	cfmadd32ls	mvax0, mvfx2, mvfx1, mvfx9
    4c44:	04000000 	streq	r0, [r0], #-0
    4c48:	00075c0a 	andeq	r5, r7, sl, lsl #24
    4c4c:	01270900 			; <UNDEFINED> instruction: 0x01270900
    4c50:	00000716 	andeq	r0, r0, r6, lsl r7
    4c54:	04130008 	ldreq	r0, [r3], #-8
    4c58:	000006db 	ldrdeq	r0, [r0], -fp
    4c5c:	06cf0413 			; <UNDEFINED> instruction: 0x06cf0413
    4c60:	f11e0000 			; <UNDEFINED> instruction: 0xf11e0000
    4c64:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    4c68:	51013f09 	tstpl	r1, r9, lsl #30
    4c6c:	0a000007 	beq	4c90 <__Main_Stack_Size+0x4890>
    4c70:	000007eb 	andeq	r0, r0, fp, ror #15
    4c74:	51014009 	tstpl	r1, r9
    4c78:	00000007 	andeq	r0, r0, r7
    4c7c:	0008360a 	andeq	r3, r8, sl, lsl #12
    4c80:	01410900 	cmpeq	r1, r0, lsl #18
    4c84:	00000751 	andeq	r0, r0, r1, asr r7
    4c88:	08520a06 	ldmdaeq	r2, {r1, r2, r9, fp}^
    4c8c:	42090000 	andmi	r0, r9, #0
    4c90:	00007901 	andeq	r7, r0, r1, lsl #18
    4c94:	0e000c00 	cdpeq	12, 0, cr0, cr0, cr0, {0}
    4c98:	00000079 	andeq	r0, r0, r9, ror r0
    4c9c:	00000761 	andeq	r0, r0, r1, ror #14
    4ca0:	0000a50f 	andeq	sl, r0, pc, lsl #10
    4ca4:	08000200 	stmdaeq	r0, {r9}
    4ca8:	025909d0 	subseq	r0, r9, #208, 18	; 0x340000
    4cac:	00000862 	andeq	r0, r0, r2, ror #16
    4cb0:	00087f0a 	andeq	r7, r8, sl, lsl #30
    4cb4:	025b0900 	subseq	r0, fp, #0, 18
    4cb8:	000000a5 	andeq	r0, r0, r5, lsr #1
    4cbc:	083c0a00 	ldmdaeq	ip!, {r9, fp}
    4cc0:	5c090000 	stcpl	0, cr0, [r9], {-0}
    4cc4:	0001e702 	andeq	lr, r1, r2, lsl #14
    4cc8:	9b0a0400 	blls	285cd0 <__Main_Stack_Size+0x2858d0>
    4ccc:	09000006 	stmdbeq	r0, {r1, r2}
    4cd0:	0862025d 	stmdaeq	r2!, {r0, r2, r3, r4, r6, r9}^
    4cd4:	0a080000 	beq	204cdc <__Main_Stack_Size+0x2048dc>
    4cd8:	000008d7 	ldrdeq	r0, [r0], -r7
    4cdc:	6d025e09 	stcvs	14, cr5, [r2, #-36]	; 0xffffffdc
    4ce0:	24000002 	strcs	r0, [r0], #-2
    4ce4:	0006380a 	andeq	r3, r6, sl, lsl #16
    4ce8:	025f0900 	subseq	r0, pc, #0, 18
    4cec:	0000009e 	muleq	r0, lr, r0
    4cf0:	078f0a48 	streq	r0, [pc, r8, asr #20]
    4cf4:	60090000 	andvs	r0, r9, r0
    4cf8:	00009702 	andeq	r9, r0, r2, lsl #14
    4cfc:	ed0a5000 	stc	0, cr5, [sl, #-0]
    4d00:	09000008 	stmdbeq	r0, {r3}
    4d04:	071c0261 	ldreq	r0, [ip, -r1, ror #4]
    4d08:	0a580000 	beq	1604d10 <__Main_Stack_Size+0x1604910>
    4d0c:	0000079a 	muleq	r0, sl, r7
    4d10:	cf026209 	svcgt	0x00026209
    4d14:	68000001 	stmdavs	r0, {r0}
    4d18:	0008f20a 	andeq	pc, r8, sl, lsl #4
    4d1c:	02630900 	rsbeq	r0, r3, #0, 18
    4d20:	000001cf 	andeq	r0, r0, pc, asr #3
    4d24:	05470a70 	strbeq	r0, [r7, #-2672]	; 0xfffff590
    4d28:	64090000 	strvs	r0, [r9], #-0
    4d2c:	0001cf02 	andeq	ip, r1, r2, lsl #30
    4d30:	aa0a7800 	bge	2a2d38 <__Main_Stack_Size+0x2a2938>
    4d34:	09000008 	stmdbeq	r0, {r3}
    4d38:	08720265 	ldmdaeq	r2!, {r0, r2, r5, r6, r9}^
    4d3c:	0a800000 	beq	fe004d44 <_estack+0xddfffd44>
    4d40:	0000068f 	andeq	r0, r0, pc, lsl #13
    4d44:	82026609 	andhi	r6, r2, #9437184	; 0x900000
    4d48:	88000008 	stmdahi	r0, {r3}
    4d4c:	00085f0a 	andeq	r5, r8, sl, lsl #30
    4d50:	02670900 	rsbeq	r0, r7, #0, 18
    4d54:	0000009e 	muleq	r0, lr, r0
    4d58:	05f90aa0 	ldrbeq	r0, [r9, #2720]!	; 0xaa0
    4d5c:	68090000 	stmdavs	r9, {}	; <UNPREDICTABLE>
    4d60:	0001cf02 	andeq	ip, r1, r2, lsl #30
    4d64:	380aa400 	stmdacc	sl, {sl, sp, pc}
    4d68:	09000005 	stmdbeq	r0, {r0, r2}
    4d6c:	01cf0269 	biceq	r0, pc, r9, ror #4
    4d70:	0aac0000 	beq	feb04d78 <_estack+0xdeaffd78>
    4d74:	000005e8 	andeq	r0, r0, r8, ror #11
    4d78:	cf026a09 	svcgt	0x00026a09
    4d7c:	b4000001 	strlt	r0, [r0], #-1
    4d80:	0005040a 	andeq	r0, r5, sl, lsl #8
    4d84:	026b0900 	rsbeq	r0, fp, #0, 18
    4d88:	000001cf 	andeq	r0, r0, pc, asr #3
    4d8c:	05130abc 	ldreq	r0, [r3, #-2748]	; 0xfffff544
    4d90:	6c090000 	stcvs	0, cr0, [r9], {-0}
    4d94:	0001cf02 	andeq	ip, r1, r2, lsl #30
    4d98:	420ac400 	andmi	ip, sl, #0, 8
    4d9c:	09000007 	stmdbeq	r0, {r0, r1, r2}
    4da0:	009e026d 	addseq	r0, lr, sp, ror #4
    4da4:	00cc0000 	sbceq	r0, ip, r0
    4da8:	0001ed0e 	andeq	lr, r1, lr, lsl #26
    4dac:	00087200 	andeq	r7, r8, r0, lsl #4
    4db0:	00a50f00 	adceq	r0, r5, r0, lsl #30
    4db4:	00190000 	andseq	r0, r9, r0
    4db8:	0001ed0e 	andeq	lr, r1, lr, lsl #26
    4dbc:	00088200 	andeq	r8, r8, r0, lsl #4
    4dc0:	00a50f00 	adceq	r0, r5, r0, lsl #30
    4dc4:	00070000 	andeq	r0, r7, r0
    4dc8:	0001ed0e 	andeq	lr, r1, lr, lsl #26
    4dcc:	00089200 	andeq	r9, r8, r0, lsl #4
    4dd0:	00a50f00 	adceq	r0, r5, r0, lsl #30
    4dd4:	00170000 	andseq	r0, r7, r0
    4dd8:	7209f008 	andvc	pc, r9, #8
    4ddc:	0008b602 	andeq	fp, r8, r2, lsl #12
    4de0:	06f30a00 	ldrbteq	r0, [r3], r0, lsl #20
    4de4:	75090000 	strvc	r0, [r9, #-0]
    4de8:	0008b602 	andeq	fp, r8, r2, lsl #12
    4dec:	a10a0000 	mrsge	r0, (UNDEF: 10)
    4df0:	09000008 	stmdbeq	r0, {r3}
    4df4:	08c60276 	stmiaeq	r6, {r1, r2, r4, r5, r6, r9}^
    4df8:	00780000 	rsbseq	r0, r8, r0
    4dfc:	0003b60e 	andeq	fp, r3, lr, lsl #12
    4e00:	0008c600 	andeq	ip, r8, r0, lsl #12
    4e04:	00a50f00 	adceq	r0, r5, r0, lsl #30
    4e08:	001d0000 	andseq	r0, sp, r0
    4e0c:	0000a50e 	andeq	sl, r0, lr, lsl #10
    4e10:	0008d600 	andeq	sp, r8, r0, lsl #12
    4e14:	00a50f00 	adceq	r0, r5, r0, lsl #30
    4e18:	001d0000 	andseq	r0, sp, r0
    4e1c:	5709f01f 	smuadpl	r9, pc, r0	; <UNPREDICTABLE>
    4e20:	0008f802 	andeq	pc, r8, r2, lsl #16
    4e24:	07e42000 	strbeq	r2, [r4, r0]!
    4e28:	6e090000 	cdpvs	0, 0, cr0, cr9, cr0, {0}
    4e2c:	00076102 	andeq	r6, r7, r2, lsl #2
    4e30:	08c42000 	stmiaeq	r4, {sp}^
    4e34:	77090000 	strvc	r0, [r9, -r0]
    4e38:	00089202 	andeq	r9, r8, r2, lsl #4
    4e3c:	ed0e0000 	stc	0, cr0, [lr, #-0]
    4e40:	08000001 	stmdaeq	r0, {r0}
    4e44:	0f000009 	svceq	0x00000009
    4e48:	000000a5 	andeq	r0, r0, r5, lsr #1
    4e4c:	2d210018 	stccs	0, cr0, [r1, #-96]!	; 0xffffffa0
    4e50:	13000005 	movwne	r0, #5
    4e54:	00090804 	andeq	r0, r9, r4, lsl #16
    4e58:	091e2200 	ldmdbeq	lr, {r9, sp}
    4e5c:	041b0000 	ldreq	r0, [fp], #-0
    4e60:	00000005 	andeq	r0, r0, r5
    4e64:	09130413 	ldmdbeq	r3, {r0, r1, r4, sl}
    4e68:	04130000 	ldreq	r0, [r3], #-0
    4e6c:	00000257 	andeq	r0, r0, r7, asr r2
    4e70:	00093522 	andeq	r3, r9, r2, lsr #10
    4e74:	009e1b00 	addseq	r1, lr, r0, lsl #22
    4e78:	13000000 	movwne	r0, #0
    4e7c:	00093b04 	andeq	r3, r9, r4, lsl #22
    4e80:	2a041300 	bcs	109a88 <__Main_Stack_Size+0x109688>
    4e84:	0e000009 	cdpeq	0, 0, cr0, cr0, cr9, {0}
    4e88:	000006cf 	andeq	r0, r0, pc, asr #13
    4e8c:	00000951 	andeq	r0, r0, r1, asr r9
    4e90:	0000a50f 	andeq	sl, r0, pc, lsl #10
    4e94:	06000200 	streq	r0, [r0], -r0, lsl #4
    4e98:	00000873 	andeq	r0, r0, r3, ror r8
    4e9c:	0402fe09 	streq	pc, [r2], #-3593	; 0xfffff1f7
    4ea0:	06000005 	streq	r0, [r0], -r5
    4ea4:	0000086c 	andeq	r0, r0, ip, ror #16
    4ea8:	0a02ff09 	beq	c4ad4 <__Main_Stack_Size+0xc46d4>
    4eac:	07000005 	streq	r0, [r0, -r5]
    4eb0:	00000f8d 	andeq	r0, r0, sp, lsl #31
    4eb4:	01e7630a 	mvneq	r6, sl, lsl #6
    4eb8:	20100000 	andscs	r0, r0, r0
    4ebc:	09cb140b 	stmibeq	fp, {r0, r1, r3, sl, ip}^
    4ec0:	56160000 	ldrpl	r0, [r6], -r0
    4ec4:	160b004c 	strne	r0, [fp], -ip, asr #32
    4ec8:	00000033 	andeq	r0, r0, r3, lsr r0
    4ecc:	664b1600 	strbvs	r1, [fp], -r0, lsl #12
    4ed0:	33170b00 	tstcc	r7, #0, 22
    4ed4:	04000000 	streq	r0, [r0], #-0
    4ed8:	00704b16 	rsbseq	r4, r0, r6, lsl fp
    4edc:	0033180b 	eorseq	r1, r3, fp, lsl #16
    4ee0:	16080000 	strne	r0, [r8], -r0
    4ee4:	0b00694b 	bleq	1f418 <__Main_Stack_Size+0x1f018>
    4ee8:	00003319 	andeq	r3, r0, r9, lsl r3
    4eec:	4b160c00 	blmi	587ef4 <__Main_Stack_Size+0x587af4>
    4ef0:	1a0b0064 	bne	2c5088 <__Main_Stack_Size+0x2c4c88>
    4ef4:	00000033 	andeq	r0, r0, r3, lsr r0
    4ef8:	674b1610 	smlaldvs	r1, fp, r0, r6
    4efc:	331b0b00 	tstcc	fp, #0, 22
    4f00:	14000000 	strne	r0, [r0], #-0
    4f04:	000e4a11 	andeq	r4, lr, r1, lsl sl
    4f08:	4a1c0b00 	bmi	707b10 <__Main_Stack_Size+0x707710>
    4f0c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    4f10:	0f570300 	svceq	0x00570300
    4f14:	1d0b0000 	stcne	0, cr0, [fp, #-0]
    4f18:	00000974 	andeq	r0, r0, r4, ror r9
    4f1c:	0009cb14 	andeq	ip, r9, r4, lsl fp
    4f20:	09d60e00 	ldmibeq	r6, {r9, sl, fp}^
    4f24:	09eb0000 	stmibeq	fp!, {}^	; <UNPREDICTABLE>
    4f28:	a50f0000 	strge	r0, [pc, #-0]	; 4f30 <__Main_Stack_Size+0x4b30>
    4f2c:	1f000000 	svcne	0x00000000
    4f30:	09db1400 	ldmibeq	fp, {sl, ip}^
    4f34:	d0070000 	andle	r0, r7, r0
    4f38:	0c00000c 	stceq	0, cr0, [r0], {12}
    4f3c:	0009eb0b 	andeq	lr, r9, fp, lsl #22
    4f40:	09f02300 	ldmibeq	r0!, {r8, r9, sp}^
    4f44:	09010000 	stmdbeq	r1, {}	; <UNPREDICTABLE>
    4f48:	04000305 	streq	r0, [r0], #-773	; 0xfffffcfb
    4f4c:	02240800 	eoreq	r0, r4, #0, 16
    4f50:	01000014 	tsteq	r0, r4, lsl r0
    4f54:	0a3f013c 	beq	fc544c <__Main_Stack_Size+0xfc504c>
    4f58:	da250000 	ble	944f60 <__Main_Stack_Size+0x944b60>
    4f5c:	01000009 	tsteq	r0, r9
    4f60:	0003b63c 	andeq	fp, r3, ip, lsr r6
    4f64:	05ad2500 	streq	r2, [sp, #1280]!	; 0x500
    4f68:	3c010000 	stccc	0, cr0, [r1], {-0}
    4f6c:	000000a5 	andeq	r0, r0, r5, lsr #1
    4f70:	0007f325 	andeq	pc, r7, r5, lsr #6
    4f74:	a53c0100 	ldrge	r0, [ip, #-256]!	; 0xffffff00
    4f78:	26000000 	strcs	r0, [r0], -r0
    4f7c:	3e010069 	cdpcc	0, 0, cr0, cr1, cr9, {3}
    4f80:	000000a5 	andeq	r0, r0, r5, lsr #1
    4f84:	13f62400 	mvnsne	r2, #0, 8
    4f88:	2a010000 	bcs	44f90 <__Main_Stack_Size+0x44b90>
    4f8c:	000a5701 	andeq	r5, sl, r1, lsl #14
    4f90:	13c32500 	bicne	r2, r3, #0, 10
    4f94:	2a010000 	bcs	44f9c <__Main_Stack_Size+0x44b9c>
    4f98:	000000a5 	andeq	r0, r0, r5, lsr #1
    4f9c:	0eab2700 	cdpeq	7, 10, cr2, cr11, cr0, {0}
    4fa0:	1f010000 	svcne	0x00010000
    4fa4:	08000f14 	stmdaeq	r0, {r2, r4, r8, r9, sl, fp}
    4fa8:	000000b8 	strheq	r0, [r0], -r8
    4fac:	0b369c01 	bleq	dabfb8 <__Main_Stack_Size+0xdabbb8>
    4fb0:	e8280000 	stmda	r8!, {}	; <UNPREDICTABLE>
    4fb4:	01000013 	tsteq	r0, r3, lsl r0
    4fb8:	00005c1f 	andeq	r5, r0, pc, lsl ip
    4fbc:	00071e00 	andeq	r1, r7, r0, lsl #28
    4fc0:	69702900 	ldmdbvs	r0!, {r8, fp, sp}^
    4fc4:	1f010064 	svcne	0x00010064
    4fc8:	00000b36 	andeq	r0, r0, r6, lsr fp
    4fcc:	0000073f 	andeq	r0, r0, pc, lsr r7
    4fd0:	0013cf2a 	andseq	ip, r3, sl, lsr #30
    4fd4:	3c210100 	stfccs	f0, [r1], #-0
    4fd8:	0300000b 	movweq	r0, #11
    4fdc:	2b7dd091 	blcs	1f79228 <__Main_Stack_Size+0x1f78e28>
    4fe0:	00000a3f 	andeq	r0, r0, pc, lsr sl
    4fe4:	08000f36 	stmdaeq	r0, {r1, r2, r4, r5, r8, r9, sl, fp}
    4fe8:	0000003a 	andeq	r0, r0, sl, lsr r0
    4fec:	0ab92601 	beq	fee4e7f8 <_estack+0xdee497f8>
    4ff0:	4b2c0000 	blmi	b04ff8 <__Main_Stack_Size+0xb04bf8>
    4ff4:	0600000a 	streq	r0, [r0], -sl
    4ff8:	00040003 	andeq	r0, r4, r3
    4ffc:	2b009f08 	blcs	2cc24 <__Main_Stack_Size+0x2c824>
    5000:	00000a08 	andeq	r0, r0, r8, lsl #20
    5004:	08000f70 	stmdaeq	r0, {r4, r5, r6, r8, r9, sl, fp}
    5008:	00000050 	andeq	r0, r0, r0, asr r0
    500c:	0aef2701 	beq	ffbcec18 <_estack+0xdfbc9c18>
    5010:	2a2d0000 	bcs	b45018 <__Main_Stack_Size+0xb44c18>
    5014:	2d00000a 	stccs	0, cr0, [r0, #-40]	; 0xffffffd8
    5018:	00000a1f 	andeq	r0, r0, pc, lsl sl
    501c:	000a142d 	andeq	r1, sl, sp, lsr #8
    5020:	0f702e00 	svceq	0x00702e00
    5024:	00500800 	subseq	r0, r0, r0, lsl #16
    5028:	352f0000 	strcc	r0, [pc, #-0]!	; 5030 <__Main_Stack_Size+0x4c30>
    502c:	6b00000a 	blvs	505c <__Main_Stack_Size+0x4c5c>
    5030:	00000007 	andeq	r0, r0, r7
    5034:	0f2a3000 	svceq	0x002a3000
    5038:	0bd40800 	bleq	ff507040 <_estack+0xdf502040>
    503c:	0b100000 	bleq	405044 <__Main_Stack_Size+0x404c44>
    5040:	01310000 	teqeq	r1, r0
    5044:	007d0250 	rsbseq	r0, sp, r0, asr r2
    5048:	02510131 	subseq	r0, r1, #1073741836	; 0x4000000c
    504c:	01310074 	teqeq	r1, r4, ror r0
    5050:	000a0352 	andeq	r0, sl, r2, asr r3
    5054:	36320001 	ldrtcc	r0, [r2], -r1
    5058:	d408000f 	strle	r0, [r8], #-15
    505c:	3100000b 	tstcc	r0, fp
    5060:	750b5001 	strvc	r5, [fp, #-1]
    5064:	91243500 			; <UNDEFINED> instruction: 0x91243500
    5068:	300a2200 	andcc	r2, sl, r0, lsl #4
    506c:	01311c01 	teqeq	r1, r1, lsl #24
    5070:	00760251 	rsbseq	r0, r6, r1, asr r2
    5074:	02520131 	subseq	r0, r2, #1073741836	; 0x4000000c
    5078:	00002008 	andeq	r2, r0, r8
    507c:	09cb0413 	stmibeq	fp, {r0, r1, r4, sl}^
    5080:	cb0e0000 	blgt	385088 <__Main_Stack_Size+0x384c88>
    5084:	4c000009 	stcmi	0, cr0, [r0], {9}
    5088:	0f00000b 	svceq	0x0000000b
    508c:	000000a5 	andeq	r0, r0, r5, lsr #1
    5090:	b4270008 	strtlt	r0, [r7], #-8
    5094:	0100000f 	tsteq	r0, pc
    5098:	000ed415 	andeq	sp, lr, r5, lsl r4
    509c:	00004008 	andeq	r4, r0, r8
    50a0:	c49c0100 	ldrgt	r0, [ip], #256	; 0x100
    50a4:	2800000b 	stmdacs	r0, {r0, r1, r3}
    50a8:	000013e8 	andeq	r1, r0, r8, ror #7
    50ac:	005c1501 	subseq	r1, ip, r1, lsl #10
    50b0:	077e0000 	ldrbeq	r0, [lr, -r0]!
    50b4:	73330000 	teqvc	r3, #0
    50b8:	01007274 	tsteq	r0, r4, ror r2
    50bc:	000bc417 	andeq	ip, fp, r7, lsl r4
    50c0:	f0910300 			; <UNDEFINED> instruction: 0xf0910300
    50c4:	0f00307d 	svceq	0x0000307d
    50c8:	0bdf0800 	bleq	ff7c70d0 <_estack+0xdf7c20d0>
    50cc:	0bb20000 	bleq	fec850d4 <_estack+0xdec800d4>
    50d0:	01310000 	teqeq	r1, r0
    50d4:	f0910350 			; <UNDEFINED> instruction: 0xf0910350
    50d8:	5101317d 	tstpl	r1, sp, ror r1
    50dc:	01000a03 	tsteq	r0, r3, lsl #20
    50e0:	05520131 	ldrbeq	r0, [r2, #-305]	; 0xfffffecf
    50e4:	001d2c03 	andseq	r2, sp, r3, lsl #24
    50e8:	7d023108 	stfvcs	f3, [r2, #-32]	; 0xffffffe0
    50ec:	0074020c 	rsbseq	r0, r4, ip, lsl #4
    50f0:	107d0231 	rsbsne	r0, sp, r1, lsr r2
    50f4:	00007502 	andeq	r7, r0, r2, lsl #10
    50f8:	000f0632 	andeq	r0, pc, r2, lsr r6	; <UNPREDICTABLE>
    50fc:	000beb08 	andeq	lr, fp, r8, lsl #22
    5100:	50013100 	andpl	r3, r1, r0, lsl #2
    5104:	7df09103 	ldfvcp	f1, [r0, #12]!
    5108:	ed0e0000 	stc	0, cr0, [lr, #-0]
    510c:	d4000001 	strle	r0, [r0], #-1
    5110:	0f00000b 	svceq	0x0000000b
    5114:	000000a5 	andeq	r0, r0, r5, lsr #1
    5118:	d43400ff 	ldrtle	r0, [r4], #-255	; 0xffffff01
    511c:	d4000013 	strle	r0, [r0], #-19	; 0xffffffed
    5120:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
    5124:	13ed351b 	mvnne	r3, #113246208	; 0x6c00000
    5128:	13ed0000 	mvnne	r0, #0
    512c:	0a0e0000 	beq	385134 <__Main_Stack_Size+0x384d34>
    5130:	0f6a3401 	svceq	0x006a3401
    5134:	0f6a0000 	svceq	0x006a0000
    5138:	0a0f0000 	beq	3c5140 <__Main_Stack_Size+0x3c4d40>
    513c:	0009d800 	andeq	sp, r9, r0, lsl #16
    5140:	da000400 	ble	6148 <__Main_Stack_Size+0x5d48>
    5144:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
    5148:	00016701 	andeq	r6, r1, r1, lsl #14
    514c:	142f0c00 	strtne	r0, [pc], #-3072	; 5154 <__Main_Stack_Size+0x4d54>
    5150:	00480000 	subeq	r0, r8, r0
    5154:	03480000 	movteq	r0, #32768	; 0x8000
    5158:	00000000 	andeq	r0, r0, r0
    515c:	0df30000 	ldcleq	0, cr0, [r3]
    5160:	c7020000 	strgt	r0, [r2, -r0]
    5164:	05000010 	streq	r0, [r0, #-16]
    5168:	00016901 	andeq	r6, r1, r1, lsl #18
    516c:	69a70300 	stmibvs	r7!, {r8, r9}
    5170:	03000001 	movweq	r0, #1
    5174:	0000127c 	andeq	r1, r0, ip, ror r2
    5178:	10e60372 	rscne	r0, r6, r2, ror r3
    517c:	03740000 	cmneq	r4, #0
    5180:	0000120e 	andeq	r1, r0, lr, lsl #4
    5184:	13170375 	tstne	r7, #-738197503	; 0xd4000001
    5188:	03760000 	cmneq	r6, #0
    518c:	0000133c 	andeq	r1, r0, ip, lsr r3
    5190:	1305037b 	movwne	r0, #21371	; 0x537b
    5194:	037c0000 	cmneq	ip, #0
    5198:	000010cc 	andeq	r1, r0, ip, asr #1
    519c:	12ee037e 	rscne	r0, lr, #-134217727	; 0xf8000001
    51a0:	047f0000 	ldrbteq	r0, [pc], #-0	; 51a8 <__Main_Stack_Size+0x4da8>
    51a4:	00001204 	andeq	r1, r0, r4, lsl #4
    51a8:	12270400 	eorne	r0, r7, #0, 8
    51ac:	04010000 	streq	r0, [r1], #-0
    51b0:	00001397 	muleq	r0, r7, r3
    51b4:	12670402 	rsbne	r0, r7, #33554432	; 0x2000000
    51b8:	04030000 	streq	r0, [r3], #-0
    51bc:	000010a0 	andeq	r1, r0, r0, lsr #1
    51c0:	10d80404 	sbcsne	r0, r8, r4, lsl #8
    51c4:	04050000 	streq	r0, [r5], #-0
    51c8:	000010ab 	andeq	r1, r0, fp, lsr #1
    51cc:	12af0406 	adcne	r0, pc, #100663296	; 0x6000000
    51d0:	04070000 	streq	r0, [r7], #-0
    51d4:	000011a6 	andeq	r1, r0, r6, lsr #3
    51d8:	136f0408 	cmnne	pc, #8, 8	; 0x8000000
    51dc:	04090000 	streq	r0, [r9], #-0
    51e0:	0000121c 	andeq	r1, r0, ip, lsl r2
    51e4:	11e2040a 	mvnne	r0, sl, lsl #8
    51e8:	040b0000 	streq	r0, [fp], #-0
    51ec:	0000108d 	andeq	r1, r0, sp, lsl #1
    51f0:	1235040c 	eorsne	r0, r5, #12, 8	; 0xc000000
    51f4:	040d0000 	streq	r0, [sp], #-0
    51f8:	00001133 	andeq	r1, r0, r3, lsr r1
    51fc:	135c040e 	cmpne	ip, #234881024	; 0xe000000
    5200:	040f0000 	streq	r0, [pc], #-0	; 5208 <__Main_Stack_Size+0x4e08>
    5204:	000011c5 	andeq	r1, r0, r5, asr #3
    5208:	105a0410 	subsne	r0, sl, r0, lsl r4
    520c:	04110000 	ldreq	r0, [r1], #-0
    5210:	0000137f 	andeq	r1, r0, pc, ror r3
    5214:	116e0412 	cmnne	lr, r2, lsl r4
    5218:	04130000 	ldreq	r0, [r3], #-0
    521c:	0000102c 	andeq	r1, r0, ip, lsr #32
    5220:	11600414 	cmnne	r0, r4, lsl r4
    5224:	04150000 	ldreq	r0, [r5], #-0
    5228:	0000104c 	andeq	r1, r0, ip, asr #32
    522c:	132f0416 			; <UNDEFINED> instruction: 0x132f0416
    5230:	04170000 	ldreq	r0, [r7], #-0
    5234:	0000110c 	andeq	r1, r0, ip, lsl #2
    5238:	12550418 	subsne	r0, r5, #24, 8	; 0x18000000
    523c:	04190000 	ldreq	r0, [r9], #-0
    5240:	000012cf 	andeq	r1, r0, pc, asr #5
    5244:	129b041a 	addsne	r0, fp, #436207616	; 0x1a000000
    5248:	041b0000 	ldreq	r0, [fp], #-0
    524c:	000012fb 	strdeq	r1, [r0], -fp
    5250:	11d8041c 	bicsne	r0, r8, ip, lsl r4
    5254:	041d0000 	ldreq	r0, [sp], #-0
    5258:	00001083 	andeq	r1, r0, r3, lsl #1
    525c:	1248041e 	subne	r0, r8, #503316480	; 0x1e000000
    5260:	041f0000 	ldreq	r0, [pc], #-0	; 5268 <__Main_Stack_Size+0x4e68>
    5264:	000012e1 	andeq	r1, r0, r1, ror #5
    5268:	11b80420 			; <UNDEFINED> instruction: 0x11b80420
    526c:	04210000 	strteq	r0, [r1], #-0
    5270:	0000106d 	andeq	r1, r0, sp, rrx
    5274:	11290422 			; <UNDEFINED> instruction: 0x11290422
    5278:	04230000 	strteq	r0, [r3], #-0
    527c:	0000134d 	andeq	r1, r0, sp, asr #6
    5280:	12700424 	rsbsne	r0, r0, #36, 8	; 0x24000000
    5284:	04250000 	strteq	r0, [r5], #-0
    5288:	0000118c 	andeq	r1, r0, ip, lsl #3
    528c:	138b0426 	orrne	r0, fp, #637534208	; 0x26000000
    5290:	04270000 	strteq	r0, [r7], #-0
    5294:	000010bd 	strheq	r1, [r0], -sp
    5298:	13b50428 			; <UNDEFINED> instruction: 0x13b50428
    529c:	04290000 	strteq	r0, [r9], #-0
    52a0:	000011f5 	strdeq	r1, [r0], -r5
    52a4:	0105002a 	tsteq	r5, sl, lsr #32
    52a8:	00008e06 	andeq	r8, r0, r6, lsl #28
    52ac:	11820600 	orrne	r0, r2, r0, lsl #12
    52b0:	d8030000 	stmdale	r3, {}	; <UNPREDICTABLE>
    52b4:	00002501 	andeq	r2, r0, r1, lsl #10
    52b8:	05020500 	streq	r0, [r2, #-1280]	; 0xfffffb00
    52bc:	00000213 	andeq	r0, r0, r3, lsl r2
    52c0:	000ae407 	andeq	lr, sl, r7, lsl #8
    52c4:	93280400 			; <UNDEFINED> instruction: 0x93280400
    52c8:	08000001 	stmdaeq	r0, {r0}
    52cc:	00000183 	andeq	r0, r0, r3, lsl #3
    52d0:	2f050405 	svccs	0x00050405
    52d4:	05000001 	streq	r0, [r0, #-1]
    52d8:	012a0508 			; <UNDEFINED> instruction: 0x012a0508
    52dc:	7d070000 	stcvc	0, cr0, [r7, #-0]
    52e0:	04000002 	streq	r0, [r0], #-2
    52e4:	0001b12e 	andeq	fp, r1, lr, lsr #2
    52e8:	01a10800 			; <UNDEFINED> instruction: 0x01a10800
    52ec:	01050000 	mrseq	r0, (UNDEF: 5)
    52f0:	00008c08 	andeq	r8, r0, r8, lsl #24
    52f4:	03190700 	tsteq	r9, #0, 14
    52f8:	31040000 	mrscc	r0, (UNDEF: 4)
    52fc:	000001c8 	andeq	r0, r0, r8, asr #3
    5300:	0001b808 	andeq	fp, r1, r8, lsl #16
    5304:	07020500 	streq	r0, [r2, -r0, lsl #10]
    5308:	000000a8 	andeq	r0, r0, r8, lsr #1
    530c:	000ae307 	andeq	lr, sl, r7, lsl #6
    5310:	e4340400 	ldrt	r0, [r4], #-1024	; 0xfffffc00
    5314:	08000001 	stmdaeq	r0, {r0}
    5318:	000001cf 	andeq	r0, r0, pc, asr #3
    531c:	0001da09 	andeq	sp, r1, r9, lsl #20
    5320:	07040500 	streq	r0, [r4, -r0, lsl #10]
    5324:	000000e4 	andeq	r0, r0, r4, ror #1
    5328:	df070805 	svcle	0x00070805
    532c:	0a000000 	beq	5334 <__Main_Stack_Size+0x4f34>
    5330:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    5334:	04050074 	streq	r0, [r5], #-116	; 0xffffff8c
    5338:	0000e907 	andeq	lr, r0, r7, lsl #18
    533c:	0e040b00 	vmlaeq.f64	d0, d4, d0
    5340:	bc013b02 			; <UNDEFINED> instruction: 0xbc013b02
    5344:	0c000002 	stceq	0, cr0, [r0], {2}
    5348:	00001107 	andeq	r1, r0, r7, lsl #2
    534c:	cc013d02 	stcgt	13, cr3, [r1], {2}
    5350:	00000002 	andeq	r0, r0, r2
    5354:	00026e0c 	andeq	r6, r2, ip, lsl #28
    5358:	013e0200 	teqeq	lr, r0, lsl #4
    535c:	000002d1 	ldrdeq	r0, [r0], -r1
    5360:	13480c20 	movtne	r0, #35872	; 0x8c20
    5364:	3f020000 	svccc	0x00020000
    5368:	0002cc01 	andeq	ip, r2, r1, lsl #24
    536c:	200c8000 	andcs	r8, ip, r0
    5370:	02000011 	andeq	r0, r0, #17
    5374:	02d10140 	sbcseq	r0, r1, #64, 2
    5378:	0da00000 	stceq	0, cr0, [r0]
    537c:	0000137a 	andeq	r1, r0, sl, ror r3
    5380:	cc014102 	stfgts	f4, [r1], {2}
    5384:	00000002 	andeq	r0, r0, r2
    5388:	0ddc0d01 	ldcleq	13, cr0, [ip, #4]
    538c:	42020000 	andmi	r0, r2, #0
    5390:	0002d101 	andeq	sp, r2, r1, lsl #2
    5394:	0d012000 	stceq	0, cr2, [r1, #-0]
    5398:	00001230 	andeq	r1, r0, r0, lsr r2
    539c:	cc014302 	stcgt	3, cr4, [r1], {2}
    53a0:	80000002 	andhi	r0, r0, r2
    53a4:	0d800d01 	stceq	13, cr0, [r0, #4]
    53a8:	44020000 	strmi	r0, [r2], #-0
    53ac:	0002d101 	andeq	sp, r2, r1, lsl #2
    53b0:	0d01a000 	stceq	0, cr10, [r1, #-0]
    53b4:	00001357 	andeq	r1, r0, r7, asr r3
    53b8:	cc014502 	cfstr32gt	mvfx4, [r1], {2}
    53bc:	00000002 	andeq	r0, r0, r2
    53c0:	0d8a0d02 	stceq	13, cr0, [sl, #8]
    53c4:	46020000 	strmi	r0, [r2], -r0
    53c8:	0002e101 	andeq	lr, r2, r1, lsl #2
    53cc:	0e022000 	cdpeq	0, 0, cr2, cr2, cr0, {0}
    53d0:	02005049 	andeq	r5, r0, #73	; 0x49
    53d4:	03010147 	movweq	r0, #4423	; 0x1147
    53d8:	03000000 	movweq	r0, #0
    53dc:	000d940d 	andeq	r9, sp, sp, lsl #8
    53e0:	01480200 	mrseq	r0, (UNDEF: 104)
    53e4:	00000306 	andeq	r0, r0, r6, lsl #6
    53e8:	620d03f0 	andvs	r0, sp, #240, 6	; 0xc0000003
    53ec:	02000012 	andeq	r0, r0, #18
    53f0:	01da0149 	bicseq	r0, sl, r9, asr #2
    53f4:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    53f8:	01da0f00 	bicseq	r0, sl, r0, lsl #30
    53fc:	02cc0000 	sbceq	r0, ip, #0
    5400:	f9100000 			; <UNDEFINED> instruction: 0xf9100000
    5404:	07000001 	streq	r0, [r0, -r1]
    5408:	02bc0800 	adcseq	r0, ip, #0, 16
    540c:	cf0f0000 	svcgt	0x000f0000
    5410:	e1000001 	tst	r0, r1
    5414:	10000002 	andne	r0, r0, r2
    5418:	000001f9 	strdeq	r0, [r0], -r9
    541c:	cf0f0017 	svcgt	0x000f0017
    5420:	f1000001 	cps	#1
    5424:	10000002 	andne	r0, r0, r2
    5428:	000001f9 	strdeq	r0, [r0], -r9
    542c:	ac0f0037 	stcge	0, cr0, [pc], {55}	; 0x37
    5430:	01000001 	tsteq	r0, r1
    5434:	10000003 	andne	r0, r0, r3
    5438:	000001f9 	strdeq	r0, [r0], -r9
    543c:	f10800ef 			; <UNDEFINED> instruction: 0xf10800ef
    5440:	0f000002 	svceq	0x00000002
    5444:	000001cf 	andeq	r0, r0, pc, asr #3
    5448:	00000317 	andeq	r0, r0, r7, lsl r3
    544c:	0001f911 	andeq	pc, r1, r1, lsl r9	; <UNPREDICTABLE>
    5450:	00028300 	andeq	r8, r2, r0, lsl #6
    5454:	0012ba06 	andseq	fp, r2, r6, lsl #20
    5458:	014a0200 	mrseq	r0, (UNDEF: 106)
    545c:	00000200 	andeq	r0, r0, r0, lsl #4
    5460:	5b028c12 	blpl	a84b0 <__Main_Stack_Size+0xa80b0>
    5464:	00043e01 	andeq	r3, r4, r1, lsl #28
    5468:	02680c00 	rsbeq	r0, r8, #0, 24
    546c:	5d020000 	stcpl	0, cr0, [r2, #-0]
    5470:	0001df01 	andeq	sp, r1, r1, lsl #30
    5474:	a50c0000 	strge	r0, [ip, #-0]
    5478:	02000002 	andeq	r0, r0, #2
    547c:	01da015e 	bicseq	r0, sl, lr, asr r1
    5480:	0c040000 	stceq	0, cr0, [r4], {-0}
    5484:	0000034f 	andeq	r0, r0, pc, asr #6
    5488:	da015f02 	ble	5d098 <__Main_Stack_Size+0x5cc98>
    548c:	08000001 	stmdaeq	r0, {r0}
    5490:	0002f30c 	andeq	pc, r2, ip, lsl #6
    5494:	01600200 	cmneq	r0, r0, lsl #4
    5498:	000001da 	ldrdeq	r0, [r0], -sl
    549c:	4353130c 	cmpmi	r3, #12, 6	; 0x30000000
    54a0:	61020052 	qaddvs	r0, r2, r2
    54a4:	0001da01 	andeq	sp, r1, r1, lsl #20
    54a8:	43131000 	tstmi	r3, #0
    54ac:	02005243 	andeq	r5, r0, #805306372	; 0x30000004
    54b0:	01da0162 	bicseq	r0, sl, r2, ror #2
    54b4:	13140000 	tstne	r4, #0
    54b8:	00504853 	subseq	r4, r0, r3, asr r8
    54bc:	4e016302 	cdpmi	3, 0, cr6, cr1, cr2, {0}
    54c0:	18000004 	stmdane	r0, {r2}
    54c4:	0003220c 	andeq	r2, r3, ip, lsl #4
    54c8:	01640200 	cmneq	r4, r0, lsl #4
    54cc:	000001da 	ldrdeq	r0, [r0], -sl
    54d0:	02d40c24 	sbcseq	r0, r4, #36, 24	; 0x2400
    54d4:	65020000 	strvs	r0, [r2, #-0]
    54d8:	0001da01 	andeq	sp, r1, r1, lsl #20
    54dc:	6e0c2800 	cdpvs	8, 0, cr2, cr12, cr0, {0}
    54e0:	02000003 	andeq	r0, r0, #3
    54e4:	01da0166 	bicseq	r0, sl, r6, ror #2
    54e8:	0c2c0000 	stceq	0, cr0, [ip], #-0
    54ec:	00000359 	andeq	r0, r0, r9, asr r3
    54f0:	da016702 	ble	5f100 <__Main_Stack_Size+0x5ed00>
    54f4:	30000001 	andcc	r0, r0, r1
    54f8:	00033e0c 	andeq	r3, r3, ip, lsl #28
    54fc:	01680200 	cmneq	r8, r0, lsl #4
    5500:	000001da 	ldrdeq	r0, [r0], -sl
    5504:	02b20c34 	adcseq	r0, r2, #52, 24	; 0x3400
    5508:	69020000 	stmdbvs	r2, {}	; <UNPREDICTABLE>
    550c:	0001da01 	andeq	sp, r1, r1, lsl #20
    5510:	980c3800 	stmdals	ip, {fp, ip, sp}
    5514:	02000003 	andeq	r0, r0, #3
    5518:	01da016a 	bicseq	r0, sl, sl, ror #2
    551c:	133c0000 	teqne	ip, #0
    5520:	00524650 	subseq	r4, r2, r0, asr r6
    5524:	68016b02 	stmdavs	r1, {r1, r8, r9, fp, sp, lr}
    5528:	40000004 	andmi	r0, r0, r4
    552c:	52464413 	subpl	r4, r6, #318767104	; 0x13000000
    5530:	016c0200 	cmneq	ip, r0, lsl #4
    5534:	000001df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    5538:	44411348 	strbmi	r1, [r1], #-840	; 0xfffffcb8
    553c:	6d020052 	stcvs	0, cr0, [r2, #-328]	; 0xfffffeb8
    5540:	0001df01 	andeq	sp, r1, r1, lsl #30
    5544:	730c4c00 	movwvc	r4, #52224	; 0xcc00
    5548:	02000003 	andeq	r0, r0, #3
    554c:	0482016e 	streq	r0, [r2], #366	; 0x16e
    5550:	0c500000 	mraeq	r0, r0, acc0
    5554:	00000354 	andeq	r0, r0, r4, asr r3
    5558:	9c016f02 	stcls	15, cr6, [r1], {2}
    555c:	60000004 	andvs	r0, r0, r4
    5560:	00026e0c 	andeq	r6, r2, ip, lsl #28
    5564:	01700200 	cmneq	r0, r0, lsl #4
    5568:	000004a1 	andeq	r0, r0, r1, lsr #9
    556c:	03c10c74 	biceq	r0, r1, #116, 24	; 0x7400
    5570:	71020000 	mrsvc	r0, (UNDEF: 2)
    5574:	0001da01 	andeq	sp, r1, r1, lsl #20
    5578:	0f008800 	svceq	0x00008800
    557c:	000001ac 	andeq	r0, r0, ip, lsr #3
    5580:	0000044e 	andeq	r0, r0, lr, asr #8
    5584:	0001f910 	andeq	pc, r1, r0, lsl r9	; <UNPREDICTABLE>
    5588:	08000b00 	stmdaeq	r0, {r8, r9, fp}
    558c:	0000043e 	andeq	r0, r0, lr, lsr r4
    5590:	0001df0f 	andeq	sp, r1, pc, lsl #30
    5594:	00046300 	andeq	r6, r4, r0, lsl #6
    5598:	01f91000 	mvnseq	r1, r0
    559c:	00010000 	andeq	r0, r1, r0
    55a0:	00045309 	andeq	r5, r4, r9, lsl #6
    55a4:	04630800 	strbteq	r0, [r3], #-2048	; 0xfffff800
    55a8:	df0f0000 	svcle	0x000f0000
    55ac:	7d000001 	stcvc	0, cr0, [r0, #-4]
    55b0:	10000004 	andne	r0, r0, r4
    55b4:	000001f9 	strdeq	r0, [r0], -r9
    55b8:	6d090003 	stcvs	0, cr0, [r9, #-12]
    55bc:	08000004 	stmdaeq	r0, {r2}
    55c0:	0000047d 	andeq	r0, r0, sp, ror r4
    55c4:	0001df0f 	andeq	sp, r1, pc, lsl #30
    55c8:	00049700 	andeq	r9, r4, r0, lsl #14
    55cc:	01f91000 	mvnseq	r1, r0
    55d0:	00040000 	andeq	r0, r4, r0
    55d4:	00048709 	andeq	r8, r4, r9, lsl #14
    55d8:	04970800 	ldreq	r0, [r7], #2048	; 0x800
    55dc:	cf0f0000 	svcgt	0x000f0000
    55e0:	b1000001 	tstlt	r0, r1
    55e4:	10000004 	andne	r0, r0, r4
    55e8:	000001f9 	strdeq	r0, [r0], -r9
    55ec:	f9060004 			; <UNDEFINED> instruction: 0xf9060004
    55f0:	02000002 	andeq	r0, r0, #2
    55f4:	03230172 			; <UNDEFINED> instruction: 0x03230172
    55f8:	10120000 	andsne	r0, r2, r0
    55fc:	fb026102 	blx	9da0e <__Main_Stack_Size+0x9d60e>
    5600:	0c000004 	stceq	0, cr0, [r0], {4}
    5604:	00001469 	andeq	r1, r0, r9, ror #8
    5608:	da026302 	ble	9e218 <__Main_Stack_Size+0x9de18>
    560c:	00000001 	andeq	r0, r0, r1
    5610:	00141f0c 	andseq	r1, r4, ip, lsl #30
    5614:	02640200 	rsbeq	r0, r4, #0, 4
    5618:	000001da 	ldrdeq	r0, [r0], -sl
    561c:	41561304 	cmpmi	r6, r4, lsl #6
    5620:	6502004c 	strvs	r0, [r2, #-76]	; 0xffffffb4
    5624:	0001da02 	andeq	sp, r1, r2, lsl #20
    5628:	290c0800 	stmdbcs	ip, {fp}
    562c:	02000014 	andeq	r0, r0, #20
    5630:	01df0266 	bicseq	r0, pc, r6, ror #4
    5634:	000c0000 	andeq	r0, ip, r0
    5638:	00146e06 	andseq	r6, r4, r6, lsl #28
    563c:	02670200 	rsbeq	r0, r7, #0, 4
    5640:	000004bd 			; <UNDEFINED> instruction: 0x000004bd
    5644:	0003b414 	andeq	fp, r3, r4, lsl r4
    5648:	06290200 	strteq	r0, [r9], -r0, lsl #4
    564c:	0000018e 	andeq	r0, r0, lr, lsl #3
    5650:	00035e15 	andeq	r5, r3, r5, lsl lr
    5654:	cf350500 	svcgt	0x00350500
    5658:	12000001 	andne	r0, r0, #1
    565c:	03770318 	cmneq	r7, #24, 6	; 0x60000000
    5660:	00000575 	andeq	r0, r0, r5, ror r5
    5664:	524d4913 	subpl	r4, sp, #311296	; 0x4c000
    5668:	03790300 	cmneq	r9, #0, 6
    566c:	000001da 	ldrdeq	r0, [r0], -sl
    5670:	4d451300 	stclmi	3, cr1, [r5, #-0]
    5674:	7a030052 	bvc	c57c4 <__Main_Stack_Size+0xc53c4>
    5678:	0001da03 	andeq	sp, r1, r3, lsl #20
    567c:	2f0c0400 	svccs	0x000c0400
    5680:	0300000d 	movweq	r0, #13
    5684:	01da037b 	bicseq	r0, sl, fp, ror r3
    5688:	0c080000 	stceq	0, cr0, [r8], {-0}
    568c:	00000ce5 	andeq	r0, r0, r5, ror #25
    5690:	da037c03 	ble	e46a4 <__Main_Stack_Size+0xe42a4>
    5694:	0c000001 	stceq	0, cr0, [r0], {1}
    5698:	000ea50c 	andeq	sl, lr, ip, lsl #10
    569c:	037d0300 	cmneq	sp, #0, 6
    56a0:	000001da 	ldrdeq	r0, [r0], -sl
    56a4:	52501310 	subspl	r1, r0, #16, 6	; 0x40000000
    56a8:	037e0300 	cmneq	lr, #0, 6
    56ac:	000001da 	ldrdeq	r0, [r0], -sl
    56b0:	34060014 	strcc	r0, [r6], #-20	; 0xffffffec
    56b4:	0300000d 	movweq	r0, #13
    56b8:	051e037f 	ldreq	r0, [lr, #-895]	; 0xfffffc81
    56bc:	1c120000 	ldcne	0, cr0, [r2], {-0}
    56c0:	e603e903 	str	lr, [r3], -r3, lsl #18
    56c4:	13000005 	movwne	r0, #5
    56c8:	004c5243 	subeq	r5, ip, r3, asr #4
    56cc:	da03eb03 	ble	1002e0 <__Main_Stack_Size+0xffee0>
    56d0:	00000001 	andeq	r0, r0, r1
    56d4:	48524313 	ldmdami	r2, {r0, r1, r4, r8, r9, lr}^
    56d8:	03ec0300 	mvneq	r0, #0, 6
    56dc:	000001da 	ldrdeq	r0, [r0], -sl
    56e0:	44491304 	strbmi	r1, [r9], #-772	; 0xfffffcfc
    56e4:	ed030052 	stc	0, cr0, [r3, #-328]	; 0xfffffeb8
    56e8:	0001da03 	andeq	sp, r1, r3, lsl #20
    56ec:	4f130800 	svcmi	0x00130800
    56f0:	03005244 	movweq	r5, #580	; 0x244
    56f4:	01da03ee 	bicseq	r0, sl, lr, ror #7
    56f8:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    56fc:	00000fa2 	andeq	r0, r0, r2, lsr #31
    5700:	da03ef03 	ble	101314 <__Main_Stack_Size+0x100f14>
    5704:	10000001 	andne	r0, r0, r1
    5708:	52524213 	subspl	r4, r2, #805306369	; 0x30000001
    570c:	03f00300 	mvnseq	r0, #0, 6
    5710:	000001da 	ldrdeq	r0, [r0], -sl
    5714:	0e160c14 	mrceq	12, 0, r0, cr6, cr4, {0}
    5718:	f1030000 			; <UNDEFINED> instruction: 0xf1030000
    571c:	0001da03 	andeq	sp, r1, r3, lsl #20
    5720:	06001800 	streq	r1, [r0], -r0, lsl #16
    5724:	00000fa7 	andeq	r0, r0, r7, lsr #31
    5728:	8103f203 	tsthi	r3, r3, lsl #4	; <UNPREDICTABLE>
    572c:	12000005 	andne	r0, r0, #5
    5730:	03f80320 	mvnseq	r0, #32, 6	; 0x80000000
    5734:	0000063d 	andeq	r0, r0, sp, lsr r6
    5738:	00148a0c 	andseq	r8, r4, ip, lsl #20
    573c:	03fa0300 	mvnseq	r0, #0, 6
    5740:	000001da 	ldrdeq	r0, [r0], -sl
    5744:	14240c00 	strtne	r0, [r4], #-3072	; 0xfffff400
    5748:	fb030000 	blx	c5752 <__Main_Stack_Size+0xc5352>
    574c:	0001da03 	andeq	sp, r1, r3, lsl #20
    5750:	620c0400 	andvs	r0, ip, #0, 8
    5754:	03000014 	movweq	r0, #20
    5758:	064d03fc 			; <UNDEFINED> instruction: 0x064d03fc
    575c:	0c080000 	stceq	0, cr0, [r8], {-0}
    5760:	0000026e 	andeq	r0, r0, lr, ror #4
    5764:	cf03fd03 	svcgt	0x0003fd03
    5768:	18000001 	stmdane	r0, {r0}
    576c:	0014840c 	andseq	r8, r4, ip, lsl #8
    5770:	03fe0300 	mvnseq	r0, #0, 6
    5774:	000001da 	ldrdeq	r0, [r0], -sl
    5778:	da0f001c 	ble	3c57f0 <__Main_Stack_Size+0x3c53f0>
    577c:	4d000001 	stcmi	0, cr0, [r0, #-4]
    5780:	10000006 	andne	r0, r0, r6
    5784:	000001f9 	strdeq	r0, [r0], -r9
    5788:	3d080003 	stccc	0, cr0, [r8, #-12]
    578c:	06000006 	streq	r0, [r0], -r6
    5790:	00001455 	andeq	r1, r0, r5, asr r4
    5794:	f203ff03 	vmax.f32	d15, d3, d3
    5798:	12000005 	andne	r0, r0, #5
    579c:	04340328 	ldrteq	r0, [r4], #-808	; 0xfffffcd8
    57a0:	000006e9 	andeq	r0, r0, r9, ror #13
    57a4:	00524313 	subseq	r4, r2, r3, lsl r3
    57a8:	da043603 	ble	112fbc <__Main_Stack_Size+0x112bbc>
    57ac:	00000001 	andeq	r0, r0, r1
    57b0:	0002780c 	andeq	r7, r2, ip, lsl #16
    57b4:	04370300 	ldrteq	r0, [r7], #-768	; 0xfffffd00
    57b8:	000001da 	ldrdeq	r0, [r0], -sl
    57bc:	49431304 	stmdbmi	r3, {r2, r8, r9, ip}^
    57c0:	38030052 	stmdacc	r3, {r1, r4, r6}
    57c4:	0001da04 	andeq	sp, r1, r4, lsl #20
    57c8:	c60c0800 	strgt	r0, [ip], -r0, lsl #16
    57cc:	03000002 	movweq	r0, #2
    57d0:	01da0439 	bicseq	r0, sl, r9, lsr r4
    57d4:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    57d8:	00000250 	andeq	r0, r0, r0, asr r2
    57dc:	da043a03 	ble	113ff0 <__Main_Stack_Size+0x113bf0>
    57e0:	10000001 	andne	r0, r0, r1
    57e4:	0002bf0c 	andeq	fp, r2, ip, lsl #30
    57e8:	043b0300 	ldrteq	r0, [fp], #-768	; 0xfffffd00
    57ec:	000001da 	ldrdeq	r0, [r0], -sl
    57f0:	03020c14 	movweq	r0, #11284	; 0x2c14
    57f4:	3c030000 	stccc	0, cr0, [r3], {-0}
    57f8:	0001da04 	andeq	sp, r1, r4, lsl #20
    57fc:	850c1800 	strhi	r1, [ip, #-2048]	; 0xfffff800
    5800:	03000002 	movweq	r0, #2
    5804:	01da043d 	bicseq	r0, sl, sp, lsr r4
    5808:	0c1c0000 	ldceq	0, cr0, [ip], {-0}
    580c:	00000259 	andeq	r0, r0, r9, asr r2
    5810:	da043e03 	ble	115024 <__Main_Stack_Size+0x114c24>
    5814:	20000001 	andcs	r0, r0, r1
    5818:	52534313 	subspl	r4, r3, #1275068416	; 0x4c000000
    581c:	043f0300 	ldrteq	r0, [pc], #-768	; 5824 <__Main_Stack_Size+0x5424>
    5820:	000001da 	ldrdeq	r0, [r0], -sl
    5824:	44060024 	strmi	r0, [r6], #-36	; 0xffffffdc
    5828:	03000002 	movweq	r0, #2
    582c:	065e044a 	ldrbeq	r0, [lr], -sl, asr #8
    5830:	50120000 	andspl	r0, r2, r0
    5834:	0604a203 	streq	sl, [r4], -r3, lsl #4
    5838:	13000009 	movwne	r0, #9
    583c:	00315243 	eorseq	r5, r1, r3, asr #4
    5840:	c304a403 	movwgt	sl, #17411	; 0x4403
    5844:	00000001 	andeq	r0, r0, r1
    5848:	00026e0c 	andeq	r6, r2, ip, lsl #28
    584c:	04a50300 	strteq	r0, [r5], #768	; 0x300
    5850:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
    5854:	52431302 	subpl	r1, r3, #134217728	; 0x8000000
    5858:	a6030032 			; <UNDEFINED> instruction: 0xa6030032
    585c:	0001c304 	andeq	ip, r1, r4, lsl #6
    5860:	760c0400 	strvc	r0, [ip], -r0, lsl #8
    5864:	0300000d 	movweq	r0, #13
    5868:	01b804a7 			; <UNDEFINED> instruction: 0x01b804a7
    586c:	0c060000 	stceq	0, cr0, [r6], {-0}
    5870:	00000f48 	andeq	r0, r0, r8, asr #30
    5874:	c304a803 	movwgt	sl, #18435	; 0x4803
    5878:	08000001 	stmdaeq	r0, {r0}
    587c:	000ddc0c 	andeq	sp, sp, ip, lsl #24
    5880:	04a90300 	strteq	r0, [r9], #768	; 0x300
    5884:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
    5888:	0e110c0a 	cdpeq	12, 1, cr0, cr1, cr10, {0}
    588c:	aa030000 	bge	c5894 <__Main_Stack_Size+0xc5494>
    5890:	0001c304 	andeq	ip, r1, r4, lsl #6
    5894:	800c0c00 	andhi	r0, ip, r0, lsl #24
    5898:	0300000d 	movweq	r0, #13
    589c:	01b804ab 			; <UNDEFINED> instruction: 0x01b804ab
    58a0:	130e0000 	movwne	r0, #57344	; 0xe000
    58a4:	03005253 	movweq	r5, #595	; 0x253
    58a8:	01c304ac 	biceq	r0, r3, ip, lsr #9
    58ac:	0c100000 	ldceq	0, cr0, [r0], {-0}
    58b0:	00000d8a 	andeq	r0, r0, sl, lsl #27
    58b4:	b804ad03 	stmdalt	r4, {r0, r1, r8, sl, fp, sp, pc}
    58b8:	12000001 	andne	r0, r0, #1
    58bc:	52474513 	subpl	r4, r7, #79691776	; 0x4c00000
    58c0:	04ae0300 	strteq	r0, [lr], #768	; 0x300
    58c4:	000001c3 	andeq	r0, r0, r3, asr #3
    58c8:	0d940c14 	ldceq	12, cr0, [r4, #80]	; 0x50
    58cc:	af030000 	svcge	0x00030000
    58d0:	0001b804 	andeq	fp, r1, r4, lsl #16
    58d4:	e60c1600 	str	r1, [ip], -r0, lsl #12
    58d8:	0300000d 	movweq	r0, #13
    58dc:	01c304b0 	strheq	r0, [r3, #64]	; 0x40
    58e0:	0c180000 	ldceq	0, cr0, [r8], {-0}
    58e4:	00000d9e 	muleq	r0, lr, sp
    58e8:	b804b103 	stmdalt	r4, {r0, r1, r8, ip, sp, pc}
    58ec:	1a000001 	bne	58f8 <__Main_Stack_Size+0x54f8>
    58f0:	000dec0c 	andeq	lr, sp, ip, lsl #24
    58f4:	04b20300 	ldrteq	r0, [r2], #768	; 0x300
    58f8:	000001c3 	andeq	r0, r0, r3, asr #3
    58fc:	0da80c1c 	stceq	12, cr0, [r8, #112]!	; 0x70
    5900:	b3030000 	movwlt	r0, #12288	; 0x3000
    5904:	0001b804 	andeq	fp, r1, r4, lsl #16
    5908:	dc0c1e00 	stcle	14, cr1, [ip], {-0}
    590c:	0300000e 	movweq	r0, #14
    5910:	01c304b4 	strheq	r0, [r3, #68]	; 0x44
    5914:	0c200000 	stceq	0, cr0, [r0], #-0
    5918:	00000db2 			; <UNDEFINED> instruction: 0x00000db2
    591c:	b804b503 	stmdalt	r4, {r0, r1, r8, sl, ip, sp, pc}
    5920:	22000001 	andcs	r0, r0, #1
    5924:	544e4313 	strbpl	r4, [lr], #-787	; 0xfffffced
    5928:	04b60300 	ldrteq	r0, [r6], #768	; 0x300
    592c:	000001c3 	andeq	r0, r0, r3, asr #3
    5930:	0dbc0c24 	ldceq	12, cr0, [ip, #144]!	; 0x90
    5934:	b7030000 	strlt	r0, [r3, -r0]
    5938:	0001b804 	andeq	fp, r1, r4, lsl #16
    593c:	50132600 	andspl	r2, r3, r0, lsl #12
    5940:	03004353 	movweq	r4, #851	; 0x353
    5944:	01c304b8 	strheq	r0, [r3, #72]	; 0x48
    5948:	0c280000 	stceq	0, cr0, [r8], #-0
    594c:	00000ed1 	ldrdeq	r0, [r0], -r1
    5950:	b804b903 	stmdalt	r4, {r0, r1, r8, fp, ip, sp, pc}
    5954:	2a000001 	bcs	5960 <__Main_Stack_Size+0x5560>
    5958:	52524113 	subspl	r4, r2, #-1073741820	; 0xc0000004
    595c:	04ba0300 	ldrteq	r0, [sl], #768	; 0x300
    5960:	000001c3 	andeq	r0, r0, r3, asr #3
    5964:	10040c2c 	andne	r0, r4, ip, lsr #24
    5968:	bb030000 	bllt	c5970 <__Main_Stack_Size+0xc5570>
    596c:	0001b804 	andeq	fp, r1, r4, lsl #16
    5970:	52132e00 	andspl	r2, r3, #0, 28
    5974:	03005243 	movweq	r5, #579	; 0x243
    5978:	01c304bc 	strheq	r0, [r3, #76]	; 0x4c
    597c:	0c300000 	ldceq	0, cr0, [r0], #-0
    5980:	00000ee1 	andeq	r0, r0, r1, ror #29
    5984:	b804bd03 	stmdalt	r4, {r0, r1, r8, sl, fp, ip, sp, pc}
    5988:	32000001 	andcc	r0, r0, #1
    598c:	000cea0c 	andeq	lr, ip, ip, lsl #20
    5990:	04be0300 	ldrteq	r0, [lr], #768	; 0x300
    5994:	000001c3 	andeq	r0, r0, r3, asr #3
    5998:	0eec0c34 	mcreq	12, 7, r0, cr12, cr4, {1}
    599c:	bf030000 	svclt	0x00030000
    59a0:	0001b804 	andeq	fp, r1, r4, lsl #16
    59a4:	ef0c3600 	svc	0x000c3600
    59a8:	0300000c 	movweq	r0, #12
    59ac:	01c304c0 	biceq	r0, r3, r0, asr #9
    59b0:	0c380000 	ldceq	0, cr0, [r8], #-0
    59b4:	00000ef7 	strdeq	r0, [r0], -r7
    59b8:	b804c103 	stmdalt	r4, {r0, r1, r8, lr, pc}
    59bc:	3a000001 	bcc	59c8 <__Main_Stack_Size+0x55c8>
    59c0:	000cf40c 	andeq	pc, ip, ip, lsl #8
    59c4:	04c20300 	strbeq	r0, [r2], #768	; 0x300
    59c8:	000001c3 	andeq	r0, r0, r3, asr #3
    59cc:	0f020c3c 	svceq	0x00020c3c
    59d0:	c3030000 	movwgt	r0, #12288	; 0x3000
    59d4:	0001b804 	andeq	fp, r1, r4, lsl #16
    59d8:	f90c3e00 			; <UNDEFINED> instruction: 0xf90c3e00
    59dc:	0300000c 	movweq	r0, #12
    59e0:	01c304c4 	biceq	r0, r3, r4, asr #9
    59e4:	0c400000 	mareq	acc0, r0, r0
    59e8:	00000f0d 	andeq	r0, r0, sp, lsl #30
    59ec:	b804c503 	stmdalt	r4, {r0, r1, r8, sl, lr, pc}
    59f0:	42000001 	andmi	r0, r0, #1
    59f4:	000fdc0c 	andeq	sp, pc, ip, lsl #24
    59f8:	04c60300 	strbeq	r0, [r6], #768	; 0x300
    59fc:	000001c3 	andeq	r0, r0, r3, asr #3
    5a00:	0f180c44 	svceq	0x00180c44
    5a04:	c7030000 	strgt	r0, [r3, -r0]
    5a08:	0001b804 	andeq	fp, r1, r4, lsl #16
    5a0c:	44134600 	ldrmi	r4, [r3], #-1536	; 0xfffffa00
    5a10:	03005243 	movweq	r5, #579	; 0x243
    5a14:	01c304c8 	biceq	r0, r3, r8, asr #9
    5a18:	0c480000 	mareq	acc0, r0, r8
    5a1c:	00000f23 	andeq	r0, r0, r3, lsr #30
    5a20:	b804c903 	stmdalt	r4, {r0, r1, r8, fp, lr, pc}
    5a24:	4a000001 	bmi	5a30 <__Main_Stack_Size+0x5630>
    5a28:	000cdb0c 	andeq	sp, ip, ip, lsl #22
    5a2c:	04ca0300 	strbeq	r0, [sl], #768	; 0x300
    5a30:	000001c3 	andeq	r0, r0, r3, asr #3
    5a34:	0f2e0c4c 	svceq	0x002e0c4c
    5a38:	cb030000 	blgt	c5a40 <__Main_Stack_Size+0xc5640>
    5a3c:	0001b804 	andeq	fp, r1, r4, lsl #16
    5a40:	06004e00 	streq	r4, [r0], -r0, lsl #28
    5a44:	00000d54 	andeq	r0, r0, r4, asr sp
    5a48:	f504cc03 			; <UNDEFINED> instruction: 0xf504cc03
    5a4c:	16000006 	strne	r0, [r0], -r6
    5a50:	00000df2 	strdeq	r0, [r0], -r2
    5a54:	0fcc0401 	svceq	0x00cc0401
    5a58:	012c0800 			; <UNDEFINED> instruction: 0x012c0800
    5a5c:	9c010000 	stcls	0, cr0, [r1], {-0}
    5a60:	00000981 	andeq	r0, r0, r1, lsl #19
    5a64:	0009c517 	andeq	ip, r9, r7, lsl r5
    5a68:	000ff000 	andeq	pc, pc, r0
    5a6c:	0002e808 	andeq	lr, r2, r8, lsl #16
    5a70:	44410100 	strbmi	r0, [r1], #-256	; 0xffffff00
    5a74:	18000009 	stmdane	r0, {r0, r3}
    5a78:	000009ce 	andeq	r0, r0, lr, asr #19
    5a7c:	0000079f 	muleq	r0, pc, r7	; <UNPREDICTABLE>
    5a80:	09811900 	stmibeq	r1, {r8, fp, ip}
    5a84:	10580000 	subsne	r0, r8, r0
    5a88:	03000800 	movweq	r0, #2048	; 0x800
    5a8c:	5a010000 	bpl	45a94 <__Main_Stack_Size+0x45694>
    5a90:	00099218 	andeq	r9, r9, r8, lsl r2
    5a94:	0007b400 	andeq	fp, r7, r0, lsl #8
    5a98:	099f1a00 	ldmibeq	pc, {r9, fp, ip}	; <UNPREDICTABLE>
    5a9c:	10580000 	subsne	r0, r8, r0
    5aa0:	03280800 			; <UNDEFINED> instruction: 0x03280800
    5aa4:	14020000 	strne	r0, [r2], #-0
    5aa8:	09b81806 	ldmibeq	r8!, {r1, r2, fp, ip}
    5aac:	07cc0000 	strbeq	r0, [ip, r0]
    5ab0:	ac180000 	ldcge	0, cr0, [r8], {-0}
    5ab4:	e0000009 	and	r0, r0, r9
    5ab8:	00000007 	andeq	r0, r0, r7
    5abc:	401b0000 	andsmi	r0, fp, r0
    5ac0:	02000014 	andeq	r0, r0, #20
    5ac4:	01cf060f 	biceq	r0, pc, pc, lsl #12
    5ac8:	9f030000 	svcls	0x00030000
    5acc:	1c000009 	stcne	0, cr0, [r0], {9}
    5ad0:	0000144f 	andeq	r1, r0, pc, asr #8
    5ad4:	cf060f02 	svcgt	0x00060f02
    5ad8:	00000001 	andeq	r0, r0, r1
    5adc:	00140e1d 	andseq	r0, r4, sp, lsl lr
    5ae0:	05900200 	ldreq	r0, [r0, #512]	; 0x200
    5ae4:	0009c503 	andeq	ip, r9, r3, lsl #10
    5ae8:	10c71c00 	sbcne	r1, r7, r0, lsl #24
    5aec:	90020000 	andls	r0, r2, r0
    5af0:	00017005 	andeq	r7, r1, r5
    5af4:	147b1c00 	ldrbtne	r1, [fp], #-3072	; 0xfffff400
    5af8:	90020000 	andls	r0, r2, r0
    5afc:	0001cf05 	andeq	ip, r1, r5, lsl #30
    5b00:	461e0000 	ldrmi	r0, [lr], -r0
    5b04:	02000011 	andeq	r0, r0, #17
    5b08:	1c03053e 	cfstr32ne	mvfx0, [r3], {62}	; 0x3e
    5b0c:	000010c7 	andeq	r1, r0, r7, asr #1
    5b10:	70053e02 	andvc	r3, r5, r2, lsl #28
    5b14:	00000001 	andeq	r0, r0, r1
    5b18:	000d0e00 	andeq	r0, sp, r0, lsl #28
    5b1c:	76000400 	strvc	r0, [r0], -r0, lsl #8
    5b20:	04000015 	streq	r0, [r0], #-21	; 0xffffffeb
    5b24:	00016701 	andeq	r6, r1, r1, lsl #14
    5b28:	14d10c00 	ldrbne	r0, [r1], #3072	; 0xc00
    5b2c:	00480000 	subeq	r0, r8, r0
    5b30:	03800000 	orreq	r0, r0, #0
    5b34:	00000000 	andeq	r0, r0, r0
    5b38:	0f5a0000 	svceq	0x005a0000
    5b3c:	01020000 	mrseq	r0, (UNDEF: 2)
    5b40:	00008e06 	andeq	r8, r0, r6, lsl #28
    5b44:	031a0300 	tsteq	sl, #0, 6
    5b48:	25030000 	strcs	r0, [r3, #-0]
    5b4c:	00000037 	andeq	r0, r0, r7, lsr r0
    5b50:	13050202 	movwne	r0, #20994	; 0x5202
    5b54:	03000002 	movweq	r0, #2
    5b58:	00000ae4 	andeq	r0, r0, r4, ror #21
    5b5c:	004e2803 	subeq	r2, lr, r3, lsl #16
    5b60:	3e040000 	cdpcc	0, 0, cr0, cr4, cr0, {0}
    5b64:	02000000 	andeq	r0, r0, #0
    5b68:	012f0504 			; <UNDEFINED> instruction: 0x012f0504
    5b6c:	1b030000 	blne	c5b74 <__Main_Stack_Size+0xc5774>
    5b70:	03000010 	movweq	r0, #16
    5b74:	0000602b 	andeq	r6, r0, fp, lsr #32
    5b78:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
    5b7c:	0000012a 	andeq	r0, r0, sl, lsr #2
    5b80:	00027d03 	andeq	r7, r2, r3, lsl #26
    5b84:	722e0300 	eorvc	r0, lr, #0, 6
    5b88:	02000000 	andeq	r0, r0, #0
    5b8c:	008c0801 	addeq	r0, ip, r1, lsl #16
    5b90:	02020000 	andeq	r0, r2, #0
    5b94:	0000a807 	andeq	sl, r0, r7, lsl #16
    5b98:	0ae30300 	beq	ff8c67a0 <_estack+0xdf8c17a0>
    5b9c:	34030000 	strcc	r0, [r3], #-0
    5ba0:	0000008b 	andeq	r0, r0, fp, lsl #1
    5ba4:	e4070402 	str	r0, [r7], #-1026	; 0xfffffbfe
    5ba8:	02000000 	andeq	r0, r0, #0
    5bac:	00df0708 	sbcseq	r0, pc, r8, lsl #14
    5bb0:	04050000 	streq	r0, [r5], #-0
    5bb4:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    5bb8:	07040200 	streq	r0, [r4, -r0, lsl #4]
    5bbc:	000000e9 	andeq	r0, r0, r9, ror #1
    5bc0:	0003b406 	andeq	fp, r3, r6, lsl #8
    5bc4:	06290400 	strteq	r0, [r9], -r0, lsl #8
    5bc8:	00000049 	andeq	r0, r0, r9, asr #32
    5bcc:	00035e07 	andeq	r5, r3, r7, lsl #28
    5bd0:	80350500 	eorshi	r0, r5, r0, lsl #10
    5bd4:	02000000 	andeq	r0, r0, #0
    5bd8:	06e70408 	strbteq	r0, [r7], r8, lsl #8
    5bdc:	d5030000 	strle	r0, [r3, #-0]
    5be0:	06000006 	streq	r0, [r0], -r6
    5be4:	0000990c 	andeq	r9, r0, ip, lsl #18
    5be8:	0a280300 	beq	a067f0 <__Main_Stack_Size+0xa063f0>
    5bec:	2c070000 	stccs	0, cr0, [r7], {-0}
    5bf0:	0000004e 	andeq	r0, r0, lr, asr #32
    5bf4:	00080f03 	andeq	r0, r8, r3, lsl #30
    5bf8:	4e720700 	cdpmi	7, 7, cr0, cr2, cr0, {0}
    5bfc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    5c00:	000006b6 			; <UNDEFINED> instruction: 0x000006b6
    5c04:	a0016508 	andge	r6, r1, r8, lsl #10
    5c08:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    5c0c:	11a60704 			; <UNDEFINED> instruction: 0x11a60704
    5c10:	0a000001 	beq	5c1c <__Main_Stack_Size+0x581c>
    5c14:	000006b0 			; <UNDEFINED> instruction: 0x000006b0
    5c18:	00e6a807 	rsceq	sl, r6, r7, lsl #16
    5c1c:	560a0000 	strpl	r0, [sl], -r0
    5c20:	07000006 	streq	r0, [r0, -r6]
    5c24:	000111a9 	andeq	r1, r1, r9, lsr #3
    5c28:	720b0000 	andvc	r0, fp, #0
    5c2c:	21000000 	mrscs	r0, (UNDEF: 0)
    5c30:	0c000001 	stceq	0, cr0, [r0], {1}
    5c34:	000000a0 	andeq	r0, r0, r0, lsr #1
    5c38:	080d0003 	stmdaeq	sp, {r0, r1}
    5c3c:	0142a307 	cmpeq	r2, r7, lsl #6
    5c40:	f10e0000 	cpsid	,#0
    5c44:	07000007 	streq	r0, [r0, -r7]
    5c48:	000099a5 	andeq	r9, r0, r5, lsr #19
    5c4c:	f90e0000 			; <UNDEFINED> instruction: 0xf90e0000
    5c50:	07000007 	streq	r0, [r0, -r7]
    5c54:	0000f2aa 	andeq	pc, r0, sl, lsr #5
    5c58:	03000400 	movweq	r0, #1024	; 0x400
    5c5c:	00000769 	andeq	r0, r0, r9, ror #14
    5c60:	0121ab07 			; <UNDEFINED> instruction: 0x0121ab07
    5c64:	1f030000 	svcne	0x00030000
    5c68:	07000006 	streq	r0, [r0, -r6]
    5c6c:	0000c5af 	andeq	ip, r0, pc, lsr #11
    5c70:	10040f00 	andne	r0, r4, r0, lsl #30
    5c74:	00016004 	andeq	r6, r1, r4
    5c78:	06010200 	streq	r0, [r1], -r0, lsl #4
    5c7c:	00000095 	muleq	r0, r5, r0
    5c80:	00016011 	andeq	r6, r1, r1, lsl r0
    5c84:	08570300 	ldmdaeq	r7, {r8, r9}^
    5c88:	16090000 	strne	r0, [r9], -r0
    5c8c:	0000008b 	andeq	r0, r0, fp, lsl #1
    5c90:	00063012 	andeq	r3, r6, r2, lsl r0
    5c94:	2f091800 	svccs	0x00091800
    5c98:	000001ca 	andeq	r0, r0, sl, asr #3
    5c9c:	0007940e 	andeq	r9, r7, lr, lsl #8
    5ca0:	ca310900 	bgt	c480a8 <__Main_Stack_Size+0xc47ca8>
    5ca4:	00000001 	andeq	r0, r0, r1
    5ca8:	006b5f13 	rsbeq	r5, fp, r3, lsl pc
    5cac:	00993209 	addseq	r3, r9, r9, lsl #4
    5cb0:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    5cb4:	000007dc 	ldrdeq	r0, [r0], -ip
    5cb8:	00993209 	addseq	r3, r9, r9, lsl #4
    5cbc:	0e080000 	cdpeq	0, 0, cr0, cr8, cr0, {0}
    5cc0:	00000619 	andeq	r0, r0, r9, lsl r6
    5cc4:	00993209 	addseq	r3, r9, r9, lsl #4
    5cc8:	0e0c0000 	cdpeq	0, 0, cr0, cr12, cr0, {0}
    5ccc:	0000088c 	andeq	r0, r0, ip, lsl #17
    5cd0:	00993209 	addseq	r3, r9, r9, lsl #4
    5cd4:	13100000 	tstne	r0, #0
    5cd8:	0900785f 	stmdbeq	r0, {r0, r1, r2, r3, r4, r6, fp, ip, sp, lr}
    5cdc:	0001d033 	andeq	sp, r1, r3, lsr r0
    5ce0:	10001400 	andne	r1, r0, r0, lsl #8
    5ce4:	00017704 	andeq	r7, r1, r4, lsl #14
    5ce8:	016c0b00 	cmneq	ip, r0, lsl #22
    5cec:	01e00000 	mvneq	r0, r0
    5cf0:	a00c0000 	andge	r0, ip, r0
    5cf4:	00000000 	andeq	r0, r0, r0
    5cf8:	06511200 	ldrbeq	r1, [r1], -r0, lsl #4
    5cfc:	09240000 	stmdbeq	r4!, {}	; <UNPREDICTABLE>
    5d00:	00025937 	andeq	r5, r2, r7, lsr r9
    5d04:	05550e00 	ldrbeq	r0, [r5, #-3584]	; 0xfffff200
    5d08:	39090000 	stmdbcc	r9, {}	; <UNPREDICTABLE>
    5d0c:	00000099 	muleq	r0, r9, r0
    5d10:	08170e00 	ldmdaeq	r7, {r9, sl, fp}
    5d14:	3a090000 	bcc	245d1c <__Main_Stack_Size+0x24591c>
    5d18:	00000099 	muleq	r0, r9, r0
    5d1c:	056a0e04 	strbeq	r0, [sl, #-3588]!	; 0xfffff1fc
    5d20:	3b090000 	blcc	245d28 <__Main_Stack_Size+0x245928>
    5d24:	00000099 	muleq	r0, r9, r0
    5d28:	09050e08 	stmdbeq	r5, {r3, r9, sl, fp}
    5d2c:	3c090000 	stccc	0, cr0, [r9], {-0}
    5d30:	00000099 	muleq	r0, r9, r0
    5d34:	06fa0e0c 	ldrbteq	r0, [sl], ip, lsl #28
    5d38:	3d090000 	stccc	0, cr0, [r9, #-0]
    5d3c:	00000099 	muleq	r0, r9, r0
    5d40:	06cb0e10 			; <UNDEFINED> instruction: 0x06cb0e10
    5d44:	3e090000 	cdpcc	0, 0, cr0, cr9, cr0, {0}
    5d48:	00000099 	muleq	r0, r9, r0
    5d4c:	08910e14 	ldmeq	r1, {r2, r4, r9, sl, fp}
    5d50:	3f090000 	svccc	0x00090000
    5d54:	00000099 	muleq	r0, r9, r0
    5d58:	074b0e18 	smlaldeq	r0, fp, r8, lr
    5d5c:	40090000 	andmi	r0, r9, r0
    5d60:	00000099 	muleq	r0, r9, r0
    5d64:	08cc0e1c 	stmiaeq	ip, {r2, r3, r4, r9, sl, fp}^
    5d68:	41090000 	mrsmi	r0, (UNDEF: 9)
    5d6c:	00000099 	muleq	r0, r9, r0
    5d70:	79140020 	ldmdbvc	r4, {r5}
    5d74:	08000005 	stmdaeq	r0, {r0, r2}
    5d78:	994a0901 	stmdbls	sl, {r0, r8, fp}^
    5d7c:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
    5d80:	00000607 	andeq	r0, r0, r7, lsl #12
    5d84:	02994b09 	addseq	r4, r9, #9216	; 0x2400
    5d88:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    5d8c:	000004e5 	andeq	r0, r0, r5, ror #9
    5d90:	02994c09 	addseq	r4, r9, #2304	; 0x900
    5d94:	15800000 	strne	r0, [r0]
    5d98:	00000849 	andeq	r0, r0, r9, asr #16
    5d9c:	016c4e09 	cmneq	ip, r9, lsl #28
    5da0:	01000000 	mrseq	r0, (UNDEF: 0)
    5da4:	0005bc15 	andeq	fp, r5, r5, lsl ip
    5da8:	6c510900 	mrrcvs	9, 0, r0, r1, cr0	; <UNPREDICTABLE>
    5dac:	04000001 	streq	r0, [r0], #-1
    5db0:	580b0001 	stmdapl	fp, {r0}
    5db4:	a9000001 	stmdbge	r0, {r0}
    5db8:	0c000002 	stceq	0, cr0, [r0], {2}
    5dbc:	000000a0 	andeq	r0, r0, r0, lsr #1
    5dc0:	0314001f 	tsteq	r4, #31
    5dc4:	90000007 	andls	r0, r0, r7
    5dc8:	e75d0901 	ldrb	r0, [sp, -r1, lsl #18]
    5dcc:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
    5dd0:	00000794 	muleq	r0, r4, r7
    5dd4:	02e75e09 	rsceq	r5, r7, #9, 28	; 0x90
    5dd8:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    5ddc:	000007ac 	andeq	r0, r0, ip, lsr #15
    5de0:	00995f09 	addseq	r5, r9, r9, lsl #30
    5de4:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    5de8:	0000060f 	andeq	r0, r0, pc, lsl #12
    5dec:	02ed6109 	rsceq	r6, sp, #1073741826	; 0x40000002
    5df0:	0e080000 	cdpeq	0, 0, cr0, cr8, cr0, {0}
    5df4:	00000579 	andeq	r0, r0, r9, ror r5
    5df8:	02596209 	subseq	r6, r9, #-1879048192	; 0x90000000
    5dfc:	00880000 	addeq	r0, r8, r0
    5e00:	02a90410 	adceq	r0, r9, #16, 8	; 0x10000000
    5e04:	fd0b0000 	stc2	0, cr0, [fp, #-0]
    5e08:	fd000002 	stc2	0, cr0, [r0, #-8]
    5e0c:	0c000002 	stceq	0, cr0, [r0], {2}
    5e10:	000000a0 	andeq	r0, r0, r0, lsr #1
    5e14:	0410001f 	ldreq	r0, [r0], #-31	; 0xffffffe1
    5e18:	00000303 	andeq	r0, r0, r3, lsl #6
    5e1c:	07551216 	smmlaeq	r5, r6, r2, r1
    5e20:	09080000 	stmdbeq	r8, {}	; <UNPREDICTABLE>
    5e24:	00032975 	andeq	r2, r3, r5, ror r9
    5e28:	05640e00 	strbeq	r0, [r4, #-3584]!	; 0xfffff200
    5e2c:	76090000 	strvc	r0, [r9], -r0
    5e30:	00000329 	andeq	r0, r0, r9, lsr #6
    5e34:	0b480e00 	bleq	120963c <__Main_Stack_Size+0x120923c>
    5e38:	77090000 	strvc	r0, [r9, -r0]
    5e3c:	00000099 	muleq	r0, r9, r0
    5e40:	04100004 	ldreq	r0, [r0], #-4
    5e44:	00000072 	andeq	r0, r0, r2, ror r0
    5e48:	00077412 	andeq	r7, r7, r2, lsl r4
    5e4c:	b5096800 	strlt	r6, [r9, #-2048]	; 0xfffff800
    5e50:	00000459 	andeq	r0, r0, r9, asr r4
    5e54:	00705f13 	rsbseq	r5, r0, r3, lsl pc
    5e58:	0329b609 			; <UNDEFINED> instruction: 0x0329b609
    5e5c:	13000000 	movwne	r0, #0
    5e60:	0900725f 	stmdbeq	r0, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
    5e64:	000099b7 			; <UNDEFINED> instruction: 0x000099b7
    5e68:	5f130400 	svcpl	0x00130400
    5e6c:	b8090077 	stmdalt	r9, {r0, r1, r2, r4, r5, r6}
    5e70:	00000099 	muleq	r0, r9, r0
    5e74:	05b50e08 	ldreq	r0, [r5, #3592]!	; 0xe08
    5e78:	b9090000 	stmdblt	r9, {}	; <UNPREDICTABLE>
    5e7c:	00000037 	andeq	r0, r0, r7, lsr r0
    5e80:	066d0e0c 	strbteq	r0, [sp], -ip, lsl #28
    5e84:	ba090000 	blt	245e8c <__Main_Stack_Size+0x245a8c>
    5e88:	00000037 	andeq	r0, r0, r7, lsr r0
    5e8c:	625f130e 	subsvs	r1, pc, #939524096	; 0x38000000
    5e90:	bb090066 	bllt	246030 <__Main_Stack_Size+0x245c30>
    5e94:	00000304 	andeq	r0, r0, r4, lsl #6
    5e98:	05240e10 	streq	r0, [r4, #-3600]!	; 0xfffff1f0
    5e9c:	bc090000 	stclt	0, cr0, [r9], {-0}
    5ea0:	00000099 	muleq	r0, r9, r0
    5ea4:	05870e18 	streq	r0, [r7, #3608]	; 0xe18
    5ea8:	c3090000 	movwgt	r0, #36864	; 0x9000
    5eac:	00000158 	andeq	r0, r0, r8, asr r1
    5eb0:	0e730e1c 	mrceq	14, 3, r0, cr3, cr12, {0}
    5eb4:	c5090000 	strgt	r0, [r9, #-0]
    5eb8:	000005b4 			; <UNDEFINED> instruction: 0x000005b4
    5ebc:	14070e20 	strne	r0, [r7], #-3616	; 0xfffff1e0
    5ec0:	c7090000 	strgt	r0, [r9, -r0]
    5ec4:	000005de 	ldrdeq	r0, [r0], -lr
    5ec8:	08010e24 	stmdaeq	r1, {r2, r5, r9, sl, fp}
    5ecc:	ca090000 	bgt	245ed4 <__Main_Stack_Size+0x245ad4>
    5ed0:	00000602 	andeq	r0, r0, r2, lsl #12
    5ed4:	08e60e28 	stmiaeq	r6!, {r3, r5, r9, sl, fp}^
    5ed8:	cb090000 	blgt	245ee0 <__Main_Stack_Size+0x245ae0>
    5edc:	0000061c 	andeq	r0, r0, ip, lsl r6
    5ee0:	755f132c 	ldrbvc	r1, [pc, #-812]	; 5bbc <__Main_Stack_Size+0x57bc>
    5ee4:	ce090062 	cdpgt	0, 0, cr0, cr9, cr2, {3}
    5ee8:	00000304 	andeq	r0, r0, r4, lsl #6
    5eec:	755f1330 	ldrbvc	r1, [pc, #-816]	; 5bc4 <__Main_Stack_Size+0x57c4>
    5ef0:	cf090070 	svcgt	0x00090070
    5ef4:	00000329 	andeq	r0, r0, r9, lsr #6
    5ef8:	755f1338 	ldrbvc	r1, [pc, #-824]	; 5bc8 <__Main_Stack_Size+0x57c8>
    5efc:	d0090072 	andle	r0, r9, r2, ror r0
    5f00:	00000099 	muleq	r0, r9, r0
    5f04:	055e0e3c 	ldrbeq	r0, [lr, #-3644]	; 0xfffff1c4
    5f08:	d3090000 	movwle	r0, #36864	; 0x9000
    5f0c:	00000622 	andeq	r0, r0, r2, lsr #12
    5f10:	08be0e40 	ldmeq	lr!, {r6, r9, sl, fp}
    5f14:	d4090000 	strle	r0, [r9], #-0
    5f18:	00000632 	andeq	r0, r0, r2, lsr r6
    5f1c:	6c5f1343 	mrrcvs	3, 4, r1, pc, cr3	; <UNPREDICTABLE>
    5f20:	d7090062 	strle	r0, [r9, -r2, rrx]
    5f24:	00000304 	andeq	r0, r0, r4, lsl #6
    5f28:	0be20e44 	bleq	ff889840 <_estack+0xdf884840>
    5f2c:	da090000 	ble	245f34 <__Main_Stack_Size+0x245b34>
    5f30:	00000099 	muleq	r0, r9, r0
    5f34:	05e00e4c 	strbeq	r0, [r0, #3660]!	; 0xe4c
    5f38:	db090000 	blle	245f40 <__Main_Stack_Size+0x245b40>
    5f3c:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    5f40:	09d90e50 	ldmibeq	r9, {r4, r6, r9, sl, fp}^
    5f44:	de090000 	cdple	0, 0, cr0, cr9, cr0, {0}
    5f48:	00000477 	andeq	r0, r0, r7, ror r4
    5f4c:	06bd0e54 	ssateq	r0, #30, r4, asr #28
    5f50:	e2090000 	and	r0, r9, #0
    5f54:	0000014d 	andeq	r0, r0, sp, asr #2
    5f58:	07860e58 			; <UNDEFINED> instruction: 0x07860e58
    5f5c:	e4090000 	str	r0, [r9], #-0
    5f60:	00000142 	andeq	r0, r0, r2, asr #2
    5f64:	06c30e5c 			; <UNDEFINED> instruction: 0x06c30e5c
    5f68:	e5090000 	str	r0, [r9, #-0]
    5f6c:	00000099 	muleq	r0, r9, r0
    5f70:	99170064 	ldmdbls	r7, {r2, r5, r6}
    5f74:	77000000 	strvc	r0, [r0, -r0]
    5f78:	18000004 	stmdane	r0, {r2}
    5f7c:	00000477 	andeq	r0, r0, r7, ror r4
    5f80:	00015818 	andeq	r5, r1, r8, lsl r8
    5f84:	015a1800 	cmpeq	sl, r0, lsl #16
    5f88:	99180000 	ldmdbls	r8, {}	; <UNPREDICTABLE>
    5f8c:	00000000 	andeq	r0, r0, r0
    5f90:	04820410 	streq	r0, [r2], #1040	; 0x410
    5f94:	77110000 	ldrvc	r0, [r1, -r0]
    5f98:	19000004 	stmdbne	r0, {r2}
    5f9c:	000007e4 	andeq	r0, r0, r4, ror #15
    5fa0:	39090428 	stmdbcc	r9, {r3, r5, sl}
    5fa4:	0005b402 	andeq	fp, r5, r2, lsl #8
    5fa8:	05981a00 	ldreq	r1, [r8, #2560]	; 0xa00
    5fac:	3b090000 	blcc	245fb4 <__Main_Stack_Size+0x245bb4>
    5fb0:	00009902 	andeq	r9, r0, r2, lsl #18
    5fb4:	c41a0000 	ldrgt	r0, [sl], #-0
    5fb8:	09000005 	stmdbeq	r0, {r0, r2}
    5fbc:	06890240 	streq	r0, [r9], r0, asr #4
    5fc0:	1a040000 	bne	105fc8 <__Main_Stack_Size+0x105bc8>
    5fc4:	0000065d 	andeq	r0, r0, sp, asr r6
    5fc8:	89024009 	stmdbhi	r2, {r0, r3, lr}
    5fcc:	08000006 	stmdaeq	r0, {r1, r2}
    5fd0:	0006281a 	andeq	r2, r6, sl, lsl r8
    5fd4:	02400900 	subeq	r0, r0, #0, 18
    5fd8:	00000689 	andeq	r0, r0, r9, lsl #13
    5fdc:	07a71a0c 	streq	r1, [r7, ip, lsl #20]!
    5fe0:	42090000 	andmi	r0, r9, #0
    5fe4:	00009902 	andeq	r9, r0, r2, lsl #18
    5fe8:	f91a1000 			; <UNDEFINED> instruction: 0xf91a1000
    5fec:	09000004 	stmdbeq	r0, {r2}
    5ff0:	086b0243 	stmdaeq	fp!, {r0, r1, r6, r9}^
    5ff4:	1a140000 	bne	505ffc <__Main_Stack_Size+0x505bfc>
    5ff8:	000007c3 	andeq	r0, r0, r3, asr #15
    5ffc:	99024609 	stmdbls	r2, {r0, r3, r9, sl, lr}
    6000:	30000000 	andcc	r0, r0, r0
    6004:	0007b11a 	andeq	fp, r7, sl, lsl r1
    6008:	02470900 	subeq	r0, r7, #0, 18
    600c:	00000880 	andeq	r0, r0, r0, lsl #17
    6010:	070b1a34 	smladxeq	fp, r4, sl, r1
    6014:	49090000 	stmdbmi	r9, {}	; <UNPREDICTABLE>
    6018:	00009902 	andeq	r9, r0, r2, lsl #18
    601c:	b91a3800 	ldmdblt	sl, {fp, ip, sp}
    6020:	09000007 	stmdbeq	r0, {r0, r1, r2}
    6024:	0891024b 	ldmeq	r1, {r0, r1, r3, r6, r9}
    6028:	1a3c0000 	bne	f06030 <__Main_Stack_Size+0xf05c30>
    602c:	000006a8 	andeq	r0, r0, r8, lsr #13
    6030:	ca024e09 	bgt	9985c <__Main_Stack_Size+0x9945c>
    6034:	40000001 	andmi	r0, r0, r1
    6038:	0006471a 	andeq	r4, r6, sl, lsl r7
    603c:	024f0900 	subeq	r0, pc, #0, 18
    6040:	00000099 	muleq	r0, r9, r0
    6044:	09001a44 	stmdbeq	r0, {r2, r6, r9, fp, ip}
    6048:	50090000 	andpl	r0, r9, r0
    604c:	0001ca02 	andeq	ip, r1, r2, lsl #20
    6050:	161a4800 	ldrne	r4, [sl], -r0, lsl #16
    6054:	09000007 	stmdbeq	r0, {r0, r1, r2}
    6058:	08970251 	ldmeq	r7, {r0, r4, r6, r9}
    605c:	1a4c0000 	bne	1306064 <__Main_Stack_Size+0x1305c64>
    6060:	00000665 	andeq	r0, r0, r5, ror #12
    6064:	99025409 	stmdbls	r2, {r0, r3, sl, ip, lr}
    6068:	50000000 	andpl	r0, r0, r0
    606c:	0005d81a 	andeq	sp, r5, sl, lsl r8
    6070:	02550900 	subseq	r0, r5, #0, 18
    6074:	0000015a 	andeq	r0, r0, sl, asr r1
    6078:	073d1a54 			; <UNDEFINED> instruction: 0x073d1a54
    607c:	78090000 	stmdavc	r9, {}	; <UNPREDICTABLE>
    6080:	00084902 	andeq	r4, r8, r2, lsl #18
    6084:	031b5800 	tsteq	fp, #0, 16
    6088:	09000007 	stmdbeq	r0, {r0, r1, r2}
    608c:	02e7027c 	rsceq	r0, r7, #124, 4	; 0xc0000007
    6090:	01480000 	mrseq	r0, (UNDEF: 72)
    6094:	0006861b 	andeq	r8, r6, fp, lsl r6
    6098:	027d0900 	rsbseq	r0, sp, #0, 18
    609c:	000002a9 	andeq	r0, r0, r9, lsr #5
    60a0:	b41b014c 	ldrlt	r0, [fp], #-332	; 0xfffffeb4
    60a4:	09000008 	stmdbeq	r0, {r3}
    60a8:	08a80281 	stmiaeq	r8!, {r0, r7, r9}
    60ac:	02dc0000 	sbcseq	r0, ip, #0
    60b0:	00058f1b 	andeq	r8, r5, fp, lsl pc
    60b4:	02860900 	addeq	r0, r6, #0, 18
    60b8:	0000064e 	andeq	r0, r0, lr, asr #12
    60bc:	741b02e0 	ldrvc	r0, [fp], #-736	; 0xfffffd20
    60c0:	09000005 	stmdbeq	r0, {r0, r2}
    60c4:	08b40287 	ldmeq	r4!, {r0, r1, r2, r7, r9}
    60c8:	02ec0000 	rsceq	r0, ip, #0
    60cc:	59041000 	stmdbpl	r4, {ip}
    60d0:	17000004 	strne	r0, [r0, -r4]
    60d4:	00000099 	muleq	r0, r9, r0
    60d8:	000005d8 	ldrdeq	r0, [r0], -r8
    60dc:	00047718 	andeq	r7, r4, r8, lsl r7
    60e0:	01581800 	cmpeq	r8, r0, lsl #16
    60e4:	d8180000 	ldmdale	r8, {}	; <UNPREDICTABLE>
    60e8:	18000005 	stmdane	r0, {r0, r2}
    60ec:	00000099 	muleq	r0, r9, r0
    60f0:	67041000 	strvs	r1, [r4, -r0]
    60f4:	10000001 	andne	r0, r0, r1
    60f8:	0005ba04 	andeq	fp, r5, r4, lsl #20
    60fc:	00db1700 	sbcseq	r1, fp, r0, lsl #14
    6100:	06020000 	streq	r0, [r2], -r0
    6104:	77180000 	ldrvc	r0, [r8, -r0]
    6108:	18000004 	stmdane	r0, {r2}
    610c:	00000158 	andeq	r0, r0, r8, asr r1
    6110:	0000db18 	andeq	sp, r0, r8, lsl fp
    6114:	00991800 	addseq	r1, r9, r0, lsl #16
    6118:	10000000 	andne	r0, r0, r0
    611c:	0005e404 	andeq	lr, r5, r4, lsl #8
    6120:	00991700 	addseq	r1, r9, r0, lsl #14
    6124:	061c0000 	ldreq	r0, [ip], -r0
    6128:	77180000 	ldrvc	r0, [r8, -r0]
    612c:	18000004 	stmdane	r0, {r2}
    6130:	00000158 	andeq	r0, r0, r8, asr r1
    6134:	08041000 	stmdaeq	r4, {ip}
    6138:	0b000006 	bleq	6158 <__Main_Stack_Size+0x5d58>
    613c:	00000072 	andeq	r0, r0, r2, ror r0
    6140:	00000632 	andeq	r0, r0, r2, lsr r6
    6144:	0000a00c 	andeq	sl, r0, ip
    6148:	0b000200 	bleq	6950 <__Main_Stack_Size+0x6550>
    614c:	00000072 	andeq	r0, r0, r2, ror r0
    6150:	00000642 	andeq	r0, r0, r2, asr #12
    6154:	0000a00c 	andeq	sl, r0, ip
    6158:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    615c:	00000762 	andeq	r0, r0, r2, ror #14
    6160:	2f011f09 	svccs	0x00011f09
    6164:	1c000003 	stcne	0, cr0, [r0], {3}
    6168:	0000089b 	muleq	r0, fp, r8
    616c:	0123090c 			; <UNDEFINED> instruction: 0x0123090c
    6170:	00000683 	andeq	r0, r0, r3, lsl #13
    6174:	0007941a 	andeq	r9, r7, sl, lsl r4
    6178:	01250900 			; <UNDEFINED> instruction: 0x01250900
    617c:	00000683 	andeq	r0, r0, r3, lsl #13
    6180:	06731a00 	ldrbteq	r1, [r3], -r0, lsl #20
    6184:	26090000 	strcs	r0, [r9], -r0
    6188:	00009901 	andeq	r9, r0, r1, lsl #18
    618c:	5c1a0400 	cfldrspl	mvf0, [sl], {-0}
    6190:	09000007 	stmdbeq	r0, {r0, r1, r2}
    6194:	06890127 	streq	r0, [r9], r7, lsr #2
    6198:	00080000 	andeq	r0, r8, r0
    619c:	064e0410 			; <UNDEFINED> instruction: 0x064e0410
    61a0:	04100000 	ldreq	r0, [r0], #-0
    61a4:	00000642 	andeq	r0, r0, r2, asr #12
    61a8:	0004f11c 	andeq	pc, r4, ip, lsl r1	; <UNPREDICTABLE>
    61ac:	3f090e00 	svccc	0x00090e00
    61b0:	0006c401 	andeq	ip, r6, r1, lsl #8
    61b4:	07eb1a00 	strbeq	r1, [fp, r0, lsl #20]!
    61b8:	40090000 	andmi	r0, r9, r0
    61bc:	0006c401 	andeq	ip, r6, r1, lsl #8
    61c0:	361a0000 	ldrcc	r0, [sl], -r0
    61c4:	09000008 	stmdbeq	r0, {r3}
    61c8:	06c40141 	strbeq	r0, [r4], r1, asr #2
    61cc:	1a060000 	bne	1861d4 <__Main_Stack_Size+0x185dd4>
    61d0:	00000852 	andeq	r0, r0, r2, asr r8
    61d4:	79014209 	stmdbvc	r1, {r0, r3, r9, lr}
    61d8:	0c000000 	stceq	0, cr0, [r0], {-0}
    61dc:	00790b00 	rsbseq	r0, r9, r0, lsl #22
    61e0:	06d40000 	ldrbeq	r0, [r4], r0
    61e4:	a00c0000 	andge	r0, ip, r0
    61e8:	02000000 	andeq	r0, r0, #0
    61ec:	09d01d00 	ldmibeq	r0, {r8, sl, fp, ip}^
    61f0:	07d50259 			; <UNDEFINED> instruction: 0x07d50259
    61f4:	7f1a0000 	svcvc	0x001a0000
    61f8:	09000008 	stmdbeq	r0, {r3}
    61fc:	00a0025b 	adceq	r0, r0, fp, asr r2
    6200:	1a000000 	bne	6208 <__Main_Stack_Size+0x5e08>
    6204:	0000083c 	andeq	r0, r0, ip, lsr r8
    6208:	5a025c09 	bpl	9d234 <__Main_Stack_Size+0x9ce34>
    620c:	04000001 	streq	r0, [r0], #-1
    6210:	00069b1a 	andeq	r9, r6, sl, lsl fp
    6214:	025d0900 	subseq	r0, sp, #0, 18
    6218:	000007d5 	ldrdeq	r0, [r0], -r5
    621c:	08d71a08 	ldmeq	r7, {r3, r9, fp, ip}^
    6220:	5e090000 	cdppl	0, 0, cr0, cr9, cr0, {0}
    6224:	0001e002 	andeq	lr, r1, r2
    6228:	381a2400 	ldmdacc	sl, {sl, sp}
    622c:	09000006 	stmdbeq	r0, {r1, r2}
    6230:	0099025f 	addseq	r0, r9, pc, asr r2
    6234:	1a480000 	bne	120623c <__Main_Stack_Size+0x1205e3c>
    6238:	0000078f 	andeq	r0, r0, pc, lsl #15
    623c:	92026009 	andls	r6, r2, #9
    6240:	50000000 	andpl	r0, r0, r0
    6244:	0008ed1a 	andeq	lr, r8, sl, lsl sp
    6248:	02610900 	rsbeq	r0, r1, #0, 18
    624c:	0000068f 	andeq	r0, r0, pc, lsl #13
    6250:	079a1a58 			; <UNDEFINED> instruction: 0x079a1a58
    6254:	62090000 	andvs	r0, r9, #0
    6258:	00014202 	andeq	r4, r1, r2, lsl #4
    625c:	f21a6800 	vadd.i16	d6, d10, d0
    6260:	09000008 	stmdbeq	r0, {r3}
    6264:	01420263 	cmpeq	r2, r3, ror #4
    6268:	1a700000 	bne	1c06270 <__Main_Stack_Size+0x1c05e70>
    626c:	00000547 	andeq	r0, r0, r7, asr #10
    6270:	42026409 	andmi	r6, r2, #150994944	; 0x9000000
    6274:	78000001 	stmdavc	r0, {r0}
    6278:	0008aa1a 	andeq	sl, r8, sl, lsl sl
    627c:	02650900 	rsbeq	r0, r5, #0, 18
    6280:	000007e5 	andeq	r0, r0, r5, ror #15
    6284:	068f1a80 	streq	r1, [pc], r0, lsl #21
    6288:	66090000 	strvs	r0, [r9], -r0
    628c:	0007f502 	andeq	pc, r7, r2, lsl #10
    6290:	5f1a8800 	svcpl	0x001a8800
    6294:	09000008 	stmdbeq	r0, {r3}
    6298:	00990267 	addseq	r0, r9, r7, ror #4
    629c:	1aa00000 	bne	fe8062a4 <_estack+0xde8012a4>
    62a0:	000005f9 	strdeq	r0, [r0], -r9
    62a4:	42026809 	andmi	r6, r2, #589824	; 0x90000
    62a8:	a4000001 	strge	r0, [r0], #-1
    62ac:	0005381a 	andeq	r3, r5, sl, lsl r8
    62b0:	02690900 	rsbeq	r0, r9, #0, 18
    62b4:	00000142 	andeq	r0, r0, r2, asr #2
    62b8:	05e81aac 	strbeq	r1, [r8, #2732]!	; 0xaac
    62bc:	6a090000 	bvs	2462c4 <__Main_Stack_Size+0x245ec4>
    62c0:	00014202 	andeq	r4, r1, r2, lsl #4
    62c4:	041ab400 	ldreq	fp, [sl], #-1024	; 0xfffffc00
    62c8:	09000005 	stmdbeq	r0, {r0, r2}
    62cc:	0142026b 	cmpeq	r2, fp, ror #4
    62d0:	1abc0000 	bne	fef062d8 <_estack+0xdef012d8>
    62d4:	00000513 	andeq	r0, r0, r3, lsl r5
    62d8:	42026c09 	andmi	r6, r2, #2304	; 0x900
    62dc:	c4000001 	strgt	r0, [r0], #-1
    62e0:	0007421a 	andeq	r4, r7, sl, lsl r2
    62e4:	026d0900 	rsbeq	r0, sp, #0, 18
    62e8:	00000099 	muleq	r0, r9, r0
    62ec:	600b00cc 	andvs	r0, fp, ip, asr #1
    62f0:	e5000001 	str	r0, [r0, #-1]
    62f4:	0c000007 	stceq	0, cr0, [r0], {7}
    62f8:	000000a0 	andeq	r0, r0, r0, lsr #1
    62fc:	600b0019 	andvs	r0, fp, r9, lsl r0
    6300:	f5000001 			; <UNDEFINED> instruction: 0xf5000001
    6304:	0c000007 	stceq	0, cr0, [r0], {7}
    6308:	000000a0 	andeq	r0, r0, r0, lsr #1
    630c:	600b0007 	andvs	r0, fp, r7
    6310:	05000001 	streq	r0, [r0, #-1]
    6314:	0c000008 	stceq	0, cr0, [r0], {8}
    6318:	000000a0 	andeq	r0, r0, r0, lsr #1
    631c:	f01d0017 			; <UNDEFINED> instruction: 0xf01d0017
    6320:	29027209 	stmdbcs	r2, {r0, r3, r9, ip, sp, lr}
    6324:	1a000008 	bne	634c <__Main_Stack_Size+0x5f4c>
    6328:	000006f3 	strdeq	r0, [r0], -r3
    632c:	29027509 	stmdbcs	r2, {r0, r3, r8, sl, ip, sp, lr}
    6330:	00000008 	andeq	r0, r0, r8
    6334:	0008a11a 	andeq	sl, r8, sl, lsl r1
    6338:	02760900 	rsbseq	r0, r6, #0, 18
    633c:	00000839 	andeq	r0, r0, r9, lsr r8
    6340:	290b0078 	stmdbcs	fp, {r3, r4, r5, r6}
    6344:	39000003 	stmdbcc	r0, {r0, r1}
    6348:	0c000008 	stceq	0, cr0, [r0], {8}
    634c:	000000a0 	andeq	r0, r0, r0, lsr #1
    6350:	a00b001d 	andge	r0, fp, sp, lsl r0
    6354:	49000000 	stmdbmi	r0, {}	; <UNPREDICTABLE>
    6358:	0c000008 	stceq	0, cr0, [r0], {8}
    635c:	000000a0 	andeq	r0, r0, r0, lsr #1
    6360:	f01e001d 			; <UNDEFINED> instruction: 0xf01e001d
    6364:	6b025709 	blvs	9bf90 <__Main_Stack_Size+0x9bb90>
    6368:	1f000008 	svcne	0x00000008
    636c:	000007e4 	andeq	r0, r0, r4, ror #15
    6370:	d4026e09 	strle	r6, [r2], #-3593	; 0xfffff1f7
    6374:	1f000006 	svcne	0x00000006
    6378:	000008c4 	andeq	r0, r0, r4, asr #17
    637c:	05027709 	streq	r7, [r2, #-1801]	; 0xfffff8f7
    6380:	00000008 	andeq	r0, r0, r8
    6384:	0001600b 	andeq	r6, r1, fp
    6388:	00087b00 	andeq	r7, r8, r0, lsl #22
    638c:	00a00c00 	adceq	r0, r0, r0, lsl #24
    6390:	00180000 	andseq	r0, r8, r0
    6394:	00052d20 	andeq	r2, r5, r0, lsr #26
    6398:	7b041000 	blvc	10a3a0 <__Main_Stack_Size+0x109fa0>
    639c:	21000008 	tstcs	r0, r8
    63a0:	00000891 	muleq	r0, r1, r8
    63a4:	00047718 	andeq	r7, r4, r8, lsl r7
    63a8:	04100000 	ldreq	r0, [r0], #-0
    63ac:	00000886 	andeq	r0, r0, r6, lsl #17
    63b0:	01ca0410 	biceq	r0, sl, r0, lsl r4
    63b4:	a8210000 	stmdage	r1!, {}	; <UNPREDICTABLE>
    63b8:	18000008 	stmdane	r0, {r3}
    63bc:	00000099 	muleq	r0, r9, r0
    63c0:	ae041000 	cdpge	0, 0, cr1, cr4, cr0, {0}
    63c4:	10000008 	andne	r0, r0, r8
    63c8:	00089d04 	andeq	r9, r8, r4, lsl #26
    63cc:	06420b00 	strbeq	r0, [r2], -r0, lsl #22
    63d0:	08c40000 	stmiaeq	r4, {}^	; <UNPREDICTABLE>
    63d4:	a00c0000 	andge	r0, ip, r0
    63d8:	02000000 	andeq	r0, r0, #0
    63dc:	08730600 	ldmdaeq	r3!, {r9, sl}^
    63e0:	fe090000 	cdp2	0, 0, cr0, cr9, cr0, {0}
    63e4:	00047702 	andeq	r7, r4, r2, lsl #14
    63e8:	086c0600 	stmdaeq	ip!, {r9, sl}^
    63ec:	ff090000 			; <UNDEFINED> instruction: 0xff090000
    63f0:	00047d02 	andeq	r7, r4, r2, lsl #26
    63f4:	0dd12200 	lfmeq	f2, 2, [r1]
    63f8:	01070000 	mrseq	r0, (UNDEF: 7)
    63fc:	00000072 	andeq	r0, r0, r2, ror r0
    6400:	09060c0a 	stmdbeq	r6, {r1, r3, sl, fp}
    6404:	aa230000 	bge	8c640c <__Main_Stack_Size+0x8c600c>
    6408:	0000000c 	andeq	r0, r0, ip
    640c:	000dfe23 	andeq	pc, sp, r3, lsr #28
    6410:	fe230100 	cdp2	1, 2, cr0, cr3, cr0, {0}
    6414:	0200000c 	andeq	r0, r0, #12
    6418:	4d575024 	ldclmi	0, cr5, [r7, #-144]	; 0xffffff70
    641c:	0d000300 	stceq	3, cr0, [r0, #-0]
    6420:	5d140a20 	vldrpl	s0, [r4, #-128]	; 0xffffff80
    6424:	13000009 	movwne	r0, #9
    6428:	0a004c56 	beq	19588 <__Main_Stack_Size+0x19188>
    642c:	00003e16 	andeq	r3, r0, r6, lsl lr
    6430:	4b130000 	blmi	4c6438 <__Main_Stack_Size+0x4c6038>
    6434:	170a0066 	strne	r0, [sl, -r6, rrx]
    6438:	0000003e 	andeq	r0, r0, lr, lsr r0
    643c:	704b1304 	subvc	r1, fp, r4, lsl #6
    6440:	3e180a00 	vnmlscc.f32	s0, s16, s0
    6444:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    6448:	00694b13 	rsbeq	r4, r9, r3, lsl fp
    644c:	003e190a 	eorseq	r1, lr, sl, lsl #18
    6450:	130c0000 	movwne	r0, #49152	; 0xc000
    6454:	0a00644b 	beq	1f588 <__Main_Stack_Size+0x1f188>
    6458:	00003e1a 	andeq	r3, r0, sl, lsl lr
    645c:	4b131000 	blmi	4ca464 <__Main_Stack_Size+0x4ca064>
    6460:	1b0a0067 	blne	286604 <__Main_Stack_Size+0x286204>
    6464:	0000003e 	andeq	r0, r0, lr, lsr r0
    6468:	0e4a0e14 	mcreq	14, 2, r0, cr10, cr4, {0}
    646c:	1c0a0000 	stcne	0, cr0, [sl], {-0}
    6470:	00000055 	andeq	r0, r0, r5, asr r0
    6474:	57030018 	smladpl	r3, r8, r0, r0
    6478:	0a00000f 	beq	64bc <__Main_Stack_Size+0x60bc>
    647c:	0009061d 	andeq	r0, r9, sp, lsl r6
    6480:	095d1100 	ldmdbeq	sp, {r8, ip}^
    6484:	580d0000 	stmdapl	sp, {}	; <UNPREDICTABLE>
    6488:	0a1e1f0a 	beq	78e0b8 <__Main_Stack_Size+0x78dcb8>
    648c:	70130000 	andsvc	r0, r3, r0
    6490:	0a006469 	beq	1f63c <__Main_Stack_Size+0x1f23c>
    6494:	00095d21 	andeq	r5, r9, r1, lsr #26
    6498:	c90e0000 	stmdbgt	lr, {}	; <UNPREDICTABLE>
    649c:	0a00000c 	beq	64d4 <__Main_Stack_Size+0x60d4>
    64a0:	00003e22 	andeq	r3, r0, r2, lsr #28
    64a4:	d10e2000 	mrsle	r2, (UNDEF: 14)
    64a8:	0a00000d 	beq	64e4 <__Main_Stack_Size+0x60e4>
    64ac:	00003e23 	andeq	r3, r0, r3, lsr #28
    64b0:	230e2400 	movwcs	r2, #58368	; 0xe400
    64b4:	0a000010 	beq	64fc <__Main_Stack_Size+0x60fc>
    64b8:	00003e24 	andeq	r3, r0, r4, lsr #28
    64bc:	750e2800 	strvc	r2, [lr, #-2048]	; 0xfffff800
    64c0:	0a00000f 	beq	6504 <__Main_Stack_Size+0x6104>
    64c4:	00003e25 	andeq	r3, r0, r5, lsr #28
    64c8:	5b0e2c00 	blpl	3914d0 <__Main_Stack_Size+0x3910d0>
    64cc:	0a00000e 	beq	650c <__Main_Stack_Size+0x610c>
    64d0:	00003e26 	andeq	r3, r0, r6, lsr #28
    64d4:	0f0e3000 	svceq	0x000e3000
    64d8:	0a00000d 	beq	6514 <__Main_Stack_Size+0x6114>
    64dc:	00003e27 	andeq	r3, r0, r7, lsr #28
    64e0:	390e3400 	stmdbcc	lr, {sl, ip, sp}
    64e4:	0a00000f 	beq	6528 <__Main_Stack_Size+0x6128>
    64e8:	00003e28 	andeq	r3, r0, r8, lsr #28
    64ec:	500e3800 	andpl	r3, lr, r0, lsl #16
    64f0:	0a00000e 	beq	6530 <__Main_Stack_Size+0x6130>
    64f4:	00003e29 	andeq	r3, r0, r9, lsr #28
    64f8:	840e3c00 	strhi	r3, [lr], #-3072	; 0xfffff400
    64fc:	0a00000e 	beq	653c <__Main_Stack_Size+0x613c>
    6500:	00003e2a 	andeq	r3, r0, sl, lsr #28
    6504:	0f0e4000 	svceq	0x000e4000
    6508:	0a000010 	beq	6550 <__Main_Stack_Size+0x6150>
    650c:	00003e2b 	andeq	r3, r0, fp, lsr #28
    6510:	290e4400 	stmdbcs	lr, {sl, lr}
    6514:	0a00000e 	beq	6554 <__Main_Stack_Size+0x6154>
    6518:	000a1e2c 	andeq	r1, sl, ip, lsr #28
    651c:	230e4800 	movwcs	r4, #59392	; 0xe800
    6520:	0a00000e 	beq	6560 <__Main_Stack_Size+0x6160>
    6524:	000a1e2d 	andeq	r1, sl, sp, lsr #28
    6528:	c10e4c00 	tstgt	lr, r0, lsl #24
    652c:	0a00000c 	beq	6564 <__Main_Stack_Size+0x6164>
    6530:	000a1e2e 	andeq	r1, sl, lr, lsr #28
    6534:	10005000 	andne	r5, r0, r0
    6538:	00008004 	andeq	r8, r0, r4
    653c:	0f4d0300 	svceq	0x004d0300
    6540:	2f0a0000 	svccs	0x000a0000
    6544:	0000096d 	andeq	r0, r0, sp, ror #18
    6548:	00148f25 	andseq	r8, r4, r5, lsr #30
    654c:	3e040100 	adfccs	f0, f4, f0
    6550:	05000000 	streq	r0, [r0, #-0]
    6554:	0014b003 	andseq	fp, r4, r3
    6558:	0d6d2620 	stcleq	6, cr2, [sp, #-128]!	; 0xffffff80
    655c:	90010000 	andls	r0, r1, r0
    6560:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
    6564:	00000040 	andeq	r0, r0, r0, asr #32
    6568:	0ae49c01 	beq	ff92d574 <_estack+0xdf928574>
    656c:	aa270000 	bge	9c6574 <__Main_Stack_Size+0x9c6174>
    6570:	01000014 	tsteq	r0, r4, lsl r0
    6574:	000ae490 	muleq	sl, r0, r4
    6578:	0007f500 	andeq	pc, r7, r0, lsl #10
    657c:	14b32700 	ldrtne	r2, [r3], #1792	; 0x700
    6580:	90010000 	andls	r0, r1, r0
    6584:	00000aea 	andeq	r0, r0, sl, ror #21
    6588:	00000813 	andeq	r0, r0, r3, lsl r8
    658c:	00100f27 	andseq	r0, r0, r7, lsr #30
    6590:	3e910100 	fmlccs	f0, f1, f0
    6594:	31000000 	mrscc	r0, (UNDEF: 0)
    6598:	27000008 	strcs	r0, [r0, -r8]
    659c:	00000e29 	andeq	r0, r0, r9, lsr #28
    65a0:	0a1e9101 	beq	7aa9ac <__Main_Stack_Size+0x7aa5ac>
    65a4:	085c0000 	ldmdaeq	ip, {}^	; <UNPREDICTABLE>
    65a8:	23280000 			; <UNDEFINED> instruction: 0x23280000
    65ac:	0100000e 	tsteq	r0, lr
    65b0:	000a1e91 	muleq	sl, r1, lr
    65b4:	00910200 	addseq	r0, r1, r0, lsl #4
    65b8:	000cc128 	andeq	ip, ip, r8, lsr #2
    65bc:	1e910100 	fmlnes	f0, f1, f0
    65c0:	0200000a 	andeq	r0, r0, #10
    65c4:	a0290491 	mlage	r9, r1, r4, r0
    65c8:	fb080012 	blx	20661a <__Main_Stack_Size+0x20621a>
    65cc:	c700000c 	strgt	r0, [r0, -ip]
    65d0:	2a00000a 	bcs	6600 <__Main_Stack_Size+0x6200>
    65d4:	74025001 	strvc	r5, [r2], #-1
    65d8:	51012a00 	tstpl	r1, r0, lsl #20
    65dc:	00580802 	subseq	r0, r8, r2, lsl #16
    65e0:	0012bc2b 	andseq	fp, r2, fp, lsr #24
    65e4:	000d0608 	andeq	r0, sp, r8, lsl #12
    65e8:	50012a00 	andpl	r2, r1, r0, lsl #20
    65ec:	2a007402 	bcs	235fc <__Main_Stack_Size+0x231fc>
    65f0:	78025101 	stmdavc	r2, {r0, r8, ip, lr}
    65f4:	52012a00 	andpl	r2, r1, #0, 20
    65f8:	00200802 	eoreq	r0, r0, r2, lsl #16
    65fc:	24041000 	strcs	r1, [r4], #-0
    6600:	1000000a 	andne	r0, r0, sl
    6604:	00096804 	andeq	r6, r9, r4, lsl #16
    6608:	0e792600 	cdpeq	6, 7, cr2, cr9, cr0, {0}
    660c:	48010000 	stmdami	r1, {}	; <UNPREDICTABLE>
    6610:	08001160 	stmdaeq	r0, {r5, r6, r8, ip}
    6614:	0000012c 	andeq	r0, r0, ip, lsr #2
    6618:	0b8e9c01 	bleq	fe3ad624 <_estack+0xde3a8624>
    661c:	aa280000 	bge	a06624 <__Main_Stack_Size+0xa06224>
    6620:	01000014 	tsteq	r0, r4, lsl r0
    6624:	000ae448 	andeq	lr, sl, r8, asr #8
    6628:	27500100 	ldrbcs	r0, [r0, -r0, lsl #2]
    662c:	000014bd 			; <UNDEFINED> instruction: 0x000014bd
    6630:	00674801 	rsbeq	r4, r7, r1, lsl #16
    6634:	087a0000 	ldmdaeq	sl!, {}^	; <UNPREDICTABLE>
    6638:	6f2c0000 	svcvs	0x002c0000
    663c:	01007475 	tsteq	r0, r5, ror r4
    6640:	00005554 	andeq	r5, r0, r4, asr r5
    6644:	0008cd00 	andeq	ip, r8, r0, lsl #26
    6648:	0e552d00 	cdpeq	13, 5, cr2, cr5, cr0, {0}
    664c:	56010000 	strpl	r0, [r1], -r0
    6650:	0000003e 	andeq	r0, r0, lr, lsr r0
    6654:	000008f5 	strdeq	r0, [r0], -r5
    6658:	0014db25 	andseq	sp, r4, r5, lsr #22
    665c:	49580100 	ldmdbmi	r8, {r8}^
    6660:	02000000 	andeq	r0, r0, #0
    6664:	c52e6491 	strgt	r6, [lr, #-1169]!	; 0xfffffb6f
    6668:	8400000c 	strhi	r0, [r0], #-12
    666c:	02080011 	andeq	r0, r8, #17
    6670:	01000000 	mrseq	r0, (UNDEF: 0)
    6674:	0cce2e5b 	stcleq	14, cr2, [lr], {91}	; 0x5b
    6678:	11920000 	orrsne	r0, r2, r0
    667c:	00020800 	andeq	r0, r2, r0, lsl #16
    6680:	5d010000 	stcpl	0, cr0, [r1, #-0]
    6684:	000b8e2f 	andeq	r8, fp, pc, lsr #28
    6688:	0011ce00 	andseq	ip, r1, r0, lsl #28
    668c:	00001608 	andeq	r1, r0, r8, lsl #12
    6690:	308b0100 	addcc	r0, fp, r0, lsl #2
    6694:	00000ba5 	andeq	r0, r0, r5, lsr #23
    6698:	00000914 	andeq	r0, r0, r4, lsl r9
    669c:	000b9a30 	andeq	r9, fp, r0, lsr sl
    66a0:	00092700 	andeq	r2, r9, r0, lsl #14
    66a4:	31000000 	mrscc	r0, (UNDEF: 0)
    66a8:	0000149e 	muleq	r0, lr, r4
    66ac:	b1034101 	tstlt	r3, r1, lsl #2
    66b0:	3200000b 	andcc	r0, r0, #11
    66b4:	000014aa 	andeq	r1, r0, sl, lsr #9
    66b8:	0ae44101 	beq	ff916ac4 <_estack+0xdf911ac4>
    66bc:	70330000 	eorsvc	r0, r3, r0
    66c0:	01006d77 	tsteq	r0, r7, ror sp
    66c4:	00003e41 	andeq	r3, r0, r1, asr #28
    66c8:	e1260000 			; <UNDEFINED> instruction: 0xe1260000
    66cc:	0100000f 	tsteq	r0, pc
    66d0:	00115c3b 	andseq	r5, r1, fp, lsr ip
    66d4:	00000408 	andeq	r0, r0, r8, lsl #8
    66d8:	e19c0100 	orrs	r0, ip, r0, lsl #2
    66dc:	2800000b 	stmdacs	r0, {r0, r1, r3}
    66e0:	000014aa 	andeq	r1, r0, sl, lsr #9
    66e4:	0ae43b01 	beq	ff9152f0 <_estack+0xdf9102f0>
    66e8:	50010000 	andpl	r0, r1, r0
    66ec:	646d6334 	strbtvs	r6, [sp], #-820	; 0xfffffccc
    66f0:	3e3b0100 	rsfcce	f0, f3, f0
    66f4:	01000000 	mrseq	r0, (UNDEF: 0)
    66f8:	60260051 	eorvs	r0, r6, r1, asr r0
    66fc:	0100000d 	tsteq	r0, sp
    6700:	00115835 	andseq	r5, r1, r5, lsr r8
    6704:	00000408 	andeq	r0, r0, r8, lsl #8
    6708:	119c0100 	orrsne	r0, ip, r0, lsl #2
    670c:	2800000c 	stmdacs	r0, {r2, r3}
    6710:	000014aa 	andeq	r1, r0, sl, lsr #9
    6714:	0ae43501 	beq	ff913b20 <_estack+0xdf90eb20>
    6718:	50010000 	andpl	r0, r1, r0
    671c:	000dd728 	andeq	sp, sp, r8, lsr #14
    6720:	67350100 	ldrvs	r0, [r5, -r0, lsl #2]!
    6724:	01000000 	mrseq	r0, (UNDEF: 0)
    6728:	92260051 	eorls	r0, r6, #81	; 0x51
    672c:	0100000e 	tsteq	r0, lr
    6730:	0011281c 	andseq	r2, r1, ip, lsl r8
    6734:	00003008 	andeq	r3, r0, r8
    6738:	509c0100 	addspl	r0, ip, r0, lsl #2
    673c:	2800000c 	stmdacs	r0, {r2, r3}
    6740:	000014aa 	andeq	r1, r0, sl, lsr #9
    6744:	0ae41c01 	beq	ff90d750 <_estack+0xdf908750>
    6748:	50010000 	andpl	r0, r1, r0
    674c:	0007fb27 	andeq	pc, r7, r7, lsr #22
    6750:	3e1c0100 	mufcce	f0, f4, f0
    6754:	3a000000 	bcc	675c <__Main_Stack_Size+0x635c>
    6758:	28000009 	stmdacs	r0, {r0, r3}
    675c:	00000ffe 	strdeq	r0, [r0], -lr
    6760:	00671c01 	rsbeq	r1, r7, r1, lsl #24
    6764:	52010000 	andpl	r0, r1, #0
    6768:	0cb32600 	ldceq	6, cr2, [r3]
    676c:	16010000 	strne	r0, [r1], -r0
    6770:	08001124 	stmdaeq	r0, {r2, r5, r8, ip}
    6774:	00000004 	andeq	r0, r0, r4
    6778:	0c809c01 	stceq	12, cr9, [r0], {1}
    677c:	aa280000 	bge	a06784 <__Main_Stack_Size+0xa06384>
    6780:	01000014 	tsteq	r0, r4, lsl r0
    6784:	000ae416 	andeq	lr, sl, r6, lsl r4
    6788:	28500100 	ldmdacs	r0, {r8}^
    678c:	00001023 	andeq	r1, r0, r3, lsr #32
    6790:	003e1601 	eorseq	r1, lr, r1, lsl #12
    6794:	51010000 	mrspl	r0, (UNDEF: 1)
    6798:	0d182600 	ldceq	6, cr2, [r8, #-0]
    679c:	07010000 	streq	r0, [r1, -r0]
    67a0:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
    67a4:	0000002c 	andeq	r0, r0, ip, lsr #32
    67a8:	0cc59c01 	stcleq	12, cr9, [r5], {1}
    67ac:	aa280000 	bge	a067b4 <__Main_Stack_Size+0xa063b4>
    67b0:	01000014 	tsteq	r0, r4, lsl r0
    67b4:	000ae407 	andeq	lr, sl, r7, lsl #8
    67b8:	35500100 	ldrbcc	r0, [r0, #-256]	; 0xffffff00
    67bc:	00000b8e 	andeq	r0, r0, lr, lsl #23
    67c0:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
    67c4:	00000358 	andeq	r0, r0, r8, asr r3
    67c8:	a5300901 	ldrge	r0, [r0, #-2305]!	; 0xfffff6ff
    67cc:	6400000b 	strvs	r0, [r0], #-11
    67d0:	30000009 	andcc	r0, r0, r9
    67d4:	00000b9a 	muleq	r0, sl, fp
    67d8:	00000978 	andeq	r0, r0, r8, ror r9
    67dc:	2f360000 	svccs	0x00360000
    67e0:	0200000e 	andeq	r0, r0, #14
    67e4:	36030148 	strcc	r0, [r3], -r8, asr #2
    67e8:	00000e04 	andeq	r0, r0, r4, lsl #28
    67ec:	03013d02 	movweq	r3, #7426	; 0x1d02
    67f0:	000b8e37 	andeq	r8, fp, r7, lsr lr
    67f4:	00000000 	andeq	r0, r0, r0
    67f8:	00001800 	andeq	r1, r0, r0, lsl #16
    67fc:	fb9c0100 	blx	fe706c06 <_estack+0xde701c06>
    6800:	3800000c 	stmdacc	r0, {r2, r3}
    6804:	00000b9a 	muleq	r0, sl, fp
    6808:	a5305001 	ldrge	r5, [r0, #-1]!
    680c:	8b00000b 	blhi	6840 <__Main_Stack_Size+0x6440>
    6810:	00000009 	andeq	r0, r0, r9
    6814:	0014cb39 	andseq	ip, r4, r9, lsr fp
    6818:	0014cb00 	andseq	ip, r4, r0, lsl #22
    681c:	39410b00 	stmdbcc	r1, {r8, r9, fp}^
    6820:	000013d4 	ldrdeq	r1, [r0], -r4
    6824:	000013d4 	ldrdeq	r1, [r0], -r4
    6828:	Address 0x0000000000006828 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
{
       0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  _exit (1);
       4:	030b130e 	movweq	r1, #45838	; 0xb30e
       8:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xfffff4f2
       c:	10011117 	andne	r1, r1, r7, lsl r1
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
      10:	02000017 	andeq	r0, r0, #23
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
      14:	0b0b0024 	bleq	2c00ac <__Main_Stack_Size+0x2bfcac>
    *p++ = *from++;
      18:	0e030b3e 	vmoveq.16	d3[0], r0
  while (p < region_end)
      1c:	16030000 	strne	r0, [r3], -r0
		tx_cts = 0;
      20:	3a0e0300 	bcc	380c28 <__Main_Stack_Size+0x380828>
		USART2->DR = (uint8_t) c;
      24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
      28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
      2c:	0b0b0024 	bleq	2c00c4 <__Main_Stack_Size+0x2bfcc4>
      30:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
      34:	13050000 	movwne	r0, #20480	; 0x5000
      38:	3a0b0b01 	bcc	2c2c44 <__Main_Stack_Size+0x2c2844>
      3c:	010b3b0b 	tsteq	fp, fp, lsl #22
      40:	06000013 			; <UNDEFINED> instruction: 0x06000013
      44:	0803000d 	stmdaeq	r3, {r0, r2, r3}
      48:	0b3b0b3a 	bleq	ec2d38 <__Main_Stack_Size+0xec2938>
      4c:	0b381349 	bleq	e04d78 <__Main_Stack_Size+0xe04978>
      50:	2e070000 	cdpcs	0, 0, cr0, cr7, cr0, {0}
      54:	03193f00 	tsteq	r9, #0, 30
      58:	3b0b3a0e 	blcc	2ce898 <__Main_Stack_Size+0x2ce498>
      5c:	1119270b 	tstne	r9, fp, lsl #14
      60:	40061201 	andmi	r1, r6, r1, lsl #4
      64:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
      68:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
      6c:	03193f01 	tsteq	r9, #1, 30
      70:	3b0b3a0e 	blcc	2ce8b0 <__Main_Stack_Size+0x2ce4b0>
      74:	1119270b 	tstne	r9, fp, lsl #14
      78:	40061201 	andmi	r1, r6, r1, lsl #4
      7c:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
      80:	00001301 	andeq	r1, r0, r1, lsl #6
      84:	03000509 	movweq	r0, #1289	; 0x509
      88:	3b0b3a0e 	blcc	2ce8c8 <__Main_Stack_Size+0x2ce4c8>
      8c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
      90:	0a000018 	beq	f8 <_Minimum_Stack_Size-0x8>
      94:	08030005 	stmdaeq	r3, {r0, r2}
      98:	0b3b0b3a 	bleq	ec2d88 <__Main_Stack_Size+0xec2988>
      9c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
      a0:	0f0b0000 	svceq	0x000b0000
      a4:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
      a8:	00000013 	andeq	r0, r0, r3, lsl r0
      ac:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
      b0:	030b130e 	movweq	r1, #45838	; 0xb30e
      b4:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xfffff4f2
      b8:	10011117 	andne	r1, r1, r7, lsl r1
      bc:	02000017 	andeq	r0, r0, #23
      c0:	0b0b0024 	bleq	2c0158 <__Main_Stack_Size+0x2bfd58>
      c4:	0e030b3e 	vmoveq.16	d3[0], r0
      c8:	16030000 	strne	r0, [r3], -r0
      cc:	3a0e0300 	bcc	380cd4 <__Main_Stack_Size+0x3808d4>
      d0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
      d4:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
      d8:	13490035 	movtne	r0, #36917	; 0x9035
      dc:	26050000 	strcs	r0, [r5], -r0
      e0:	00134900 	andseq	r4, r3, r0, lsl #18
      e4:	00240600 	eoreq	r0, r4, r0, lsl #12
      e8:	0b3e0b0b 	bleq	f82d1c <__Main_Stack_Size+0xf8291c>
      ec:	00000803 	andeq	r0, r0, r3, lsl #16
      f0:	0b011307 	bleq	44d14 <__Main_Stack_Size+0x44914>
      f4:	3b0b3a0b 	blcc	2ce928 <__Main_Stack_Size+0x2ce528>
      f8:	00130105 	andseq	r0, r3, r5, lsl #2
      fc:	000d0800 	andeq	r0, sp, r0, lsl #16
     100:	0b3a0e03 	bleq	e83914 <__Main_Stack_Size+0xe83514>
     104:	1349053b 	movtne	r0, #38203	; 0x953b
     108:	00000b38 	andeq	r0, r0, r8, lsr fp
     10c:	03000d09 	movweq	r0, #3337	; 0xd09
     110:	3b0b3a08 	blcc	2ce938 <__Main_Stack_Size+0x2ce538>
     114:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     118:	0a00000b 	beq	14c <_Minimum_Stack_Size+0x4c>
     11c:	13490101 	movtne	r0, #37121	; 0x9101
     120:	00001301 	andeq	r1, r0, r1, lsl #6
     124:	4900210b 	stmdbmi	r0, {r0, r1, r3, r8, sp}
     128:	000b2f13 	andeq	r2, fp, r3, lsl pc
     12c:	00160c00 	andseq	r0, r6, r0, lsl #24
     130:	0b3a0e03 	bleq	e83944 <__Main_Stack_Size+0xe83544>
     134:	1349053b 	movtne	r0, #38203	; 0x953b
     138:	340d0000 	strcc	r0, [sp], #-0
     13c:	3a0e0300 	bcc	380d44 <__Main_Stack_Size+0x380944>
     140:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     144:	3c193f13 	ldccc	15, cr3, [r9], {19}
     148:	0e000019 	mcreq	0, 0, r0, cr0, cr9, {0}
     14c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     150:	0b3b0b3a 	bleq	ec2e40 <__Main_Stack_Size+0xec2a40>
     154:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
     158:	0000193c 	andeq	r1, r0, ip, lsr r9
     15c:	3e01040f 	cdpcc	4, 0, cr0, cr1, cr15, {0}
     160:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
     164:	3b0b3a13 	blcc	2ce9b8 <__Main_Stack_Size+0x2ce5b8>
     168:	00130105 	andseq	r0, r3, r5, lsl #2
     16c:	00281000 	eoreq	r1, r8, r0
     170:	0b1c0e03 	bleq	703984 <__Main_Stack_Size+0x703584>
     174:	28110000 	ldmdacs	r1, {}	; <UNPREDICTABLE>
     178:	1c080300 	stcne	3, cr0, [r8], {-0}
     17c:	1200000b 	andne	r0, r0, #11
     180:	13470034 	movtne	r0, #28724	; 0x7034
     184:	0b3b0b3a 	bleq	ec2e74 <__Main_Stack_Size+0xec2a74>
     188:	00001802 	andeq	r1, r0, r2, lsl #16
     18c:	03003413 	movweq	r3, #1043	; 0x413
     190:	3b0b3a0e 	blcc	2ce9d0 <__Main_Stack_Size+0x2ce5d0>
     194:	3f13490b 	svccc	0x0013490b
     198:	00180219 	andseq	r0, r8, r9, lsl r2
     19c:	012e1400 			; <UNDEFINED> instruction: 0x012e1400
     1a0:	0b3a0e03 	bleq	e839b4 <__Main_Stack_Size+0xe835b4>
     1a4:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
     1a8:	13010b20 	movwne	r0, #6944	; 0x1b20
     1ac:	34150000 	ldrcc	r0, [r5], #-0
     1b0:	3a0e0300 	bcc	380db8 <__Main_Stack_Size+0x3809b8>
     1b4:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     1b8:	16000013 			; <UNDEFINED> instruction: 0x16000013
     1bc:	0e03002e 	cdpeq	0, 0, cr0, cr3, cr14, {1}
     1c0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     1c4:	0b201927 	bleq	806668 <__Main_Stack_Size+0x806268>
     1c8:	2e170000 	cdpcs	0, 1, cr0, cr7, cr0, {0}
     1cc:	03193f01 	tsteq	r9, #1, 30
     1d0:	3b0b3a0e 	blcc	2cea10 <__Main_Stack_Size+0x2ce610>
     1d4:	1119270b 	tstne	r9, fp, lsl #14
     1d8:	40061201 	andmi	r1, r6, r1, lsl #4
     1dc:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     1e0:	00001301 	andeq	r1, r0, r1, lsl #6
     1e4:	03003418 	movweq	r3, #1048	; 0x418
     1e8:	3b0b3a08 	blcc	2cea10 <__Main_Stack_Size+0x2ce610>
     1ec:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     1f0:	19000017 	stmdbne	r0, {r0, r1, r2, r4}
     1f4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     1f8:	0b3b0b3a 	bleq	ec2ee8 <__Main_Stack_Size+0xec2ae8>
     1fc:	17021349 	strne	r1, [r2, -r9, asr #6]
     200:	2e1a0000 	cdpcs	0, 1, cr0, cr10, cr0, {0}
     204:	03193f01 	tsteq	r9, #1, 30
     208:	3b0b3a0e 	blcc	2cea48 <__Main_Stack_Size+0x2ce648>
     20c:	1119270b 	tstne	r9, fp, lsl #14
     210:	40061201 	andmi	r1, r6, r1, lsl #4
     214:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     218:	1d1b0000 	ldcne	0, cr0, [fp, #-0]
     21c:	52133101 	andspl	r3, r3, #1073741824	; 0x40000000
     220:	58175501 	ldmdapl	r7, {r0, r8, sl, ip, lr}
     224:	000b590b 	andeq	r5, fp, fp, lsl #18
     228:	011d1c00 	tsteq	sp, r0, lsl #24
     22c:	01521331 	cmpeq	r2, r1, lsr r3
     230:	0b581755 	bleq	1605f8c <__Main_Stack_Size+0x1605b8c>
     234:	00000559 	andeq	r0, r0, r9, asr r5
     238:	55010b1d 	strpl	r0, [r1, #-2845]	; 0xfffff4e3
     23c:	1e000017 	mcrne	0, 0, r0, cr0, cr7, {0}
     240:	13310034 	teqne	r1, #52	; 0x34
     244:	00001802 	andeq	r1, r0, r2, lsl #16
     248:	01110100 	tsteq	r1, r0, lsl #2
     24c:	0b130e25 	bleq	4c3ae8 <__Main_Stack_Size+0x4c36e8>
     250:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
     254:	01111755 	tsteq	r1, r5, asr r7
     258:	00001710 	andeq	r1, r0, r0, lsl r7
     25c:	0b002402 	bleq	926c <__Main_Stack_Size+0x8e6c>
     260:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     264:	0300000e 	movweq	r0, #14
     268:	0b0b0024 	bleq	2c0300 <__Main_Stack_Size+0x2bff00>
     26c:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     270:	34040000 	strcc	r0, [r4], #-0
     274:	3a0e0300 	bcc	380e7c <__Main_Stack_Size+0x380a7c>
     278:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     27c:	3c193f13 	ldccc	15, cr3, [r9], {19}
     280:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
     284:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
     288:	0b3b0b3a 	bleq	ec2f78 <__Main_Stack_Size+0xec2b78>
     28c:	00001349 	andeq	r1, r0, r9, asr #6
     290:	0b000f06 	bleq	3eb0 <__Main_Stack_Size+0x3ab0>
     294:	0013490b 	andseq	r4, r3, fp, lsl #18
     298:	00260700 	eoreq	r0, r6, r0, lsl #14
     29c:	00001349 	andeq	r1, r0, r9, asr #6
     2a0:	27001508 	strcs	r1, [r0, -r8, lsl #10]
     2a4:	09000019 	stmdbeq	r0, {r0, r3, r4}
     2a8:	13490101 	movtne	r0, #37121	; 0x9101
     2ac:	00001301 	andeq	r1, r0, r1, lsl #6
     2b0:	4900210a 	stmdbmi	r0, {r1, r3, r8, sp}
     2b4:	000b2f13 	andeq	r2, fp, r3, lsl pc
     2b8:	00340b00 	eorseq	r0, r4, r0, lsl #22
     2bc:	0b3a0e03 	bleq	e83ad0 <__Main_Stack_Size+0xe836d0>
     2c0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     2c4:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     2c8:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
     2cc:	03193f00 	tsteq	r9, #0, 30
     2d0:	3b0b3a0e 	blcc	2ceb10 <__Main_Stack_Size+0x2ce710>
     2d4:	11192705 	tstne	r9, r5, lsl #14
     2d8:	40061201 	andmi	r1, r6, r1, lsl #4
     2dc:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     2e0:	01000000 	mrseq	r0, (UNDEF: 0)
     2e4:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
     2e8:	0e030b13 	vmoveq.32	d3[0], r0
     2ec:	17550e1b 	smmlane	r5, fp, lr, r0
     2f0:	17100111 			; <UNDEFINED> instruction: 0x17100111
     2f4:	2e020000 	cdpcs	0, 0, cr0, cr2, cr0, {0}
     2f8:	03193f01 	tsteq	r9, #1, 30
     2fc:	3b0b3a0e 	blcc	2ceb3c <__Main_Stack_Size+0x2ce73c>
     300:	8719270b 	ldrhi	r2, [r9, -fp, lsl #14]
     304:	01111901 	tsteq	r1, r1, lsl #18
     308:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     30c:	01194297 			; <UNDEFINED> instruction: 0x01194297
     310:	03000013 	movweq	r0, #19
     314:	01018289 	smlabbeq	r1, r9, r2, r8
     318:	13310111 	teqne	r1, #1073741828	; 0x40000004
     31c:	8a040000 	bhi	100324 <__Main_Stack_Size+0xfff24>
     320:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
     324:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
     328:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
     32c:	03193f01 	tsteq	r9, #1, 30
     330:	3b0b3a0e 	blcc	2ceb70 <__Main_Stack_Size+0x2ce770>
     334:	1119270b 	tstne	r9, fp, lsl #14
     338:	40061201 	andmi	r1, r6, r1, lsl #4
     33c:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     340:	00001301 	andeq	r1, r0, r1, lsl #6
     344:	03000506 	movweq	r0, #1286	; 0x506
     348:	3b0b3a0e 	blcc	2ceb88 <__Main_Stack_Size+0x2ce788>
     34c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     350:	07000017 	smladeq	r0, r7, r0, r0
     354:	00018289 	andeq	r8, r1, r9, lsl #5
     358:	13310111 	teqne	r1, #1073741828	; 0x40000004
     35c:	24080000 	strcs	r0, [r8], #-0
     360:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     364:	0008030b 	andeq	r0, r8, fp, lsl #6
     368:	002e0900 	eoreq	r0, lr, r0, lsl #18
     36c:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     370:	0e030e6e 	cdpeq	14, 0, cr0, cr3, cr14, {3}
     374:	0b3b0b3a 	bleq	ec3064 <__Main_Stack_Size+0xec2c64>
     378:	01000000 	mrseq	r0, (UNDEF: 0)
     37c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
     380:	0e030b13 	vmoveq.32	d3[0], r0
     384:	17550e1b 	smmlane	r5, fp, lr, r0
     388:	17100111 			; <UNDEFINED> instruction: 0x17100111
     38c:	24020000 	strcs	r0, [r2], #-0
     390:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     394:	000e030b 	andeq	r0, lr, fp, lsl #6
     398:	00160300 	andseq	r0, r6, r0, lsl #6
     39c:	0b3a0e03 	bleq	e83bb0 <__Main_Stack_Size+0xe837b0>
     3a0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     3a4:	35040000 	strcc	r0, [r4, #-0]
     3a8:	00134900 	andseq	r4, r3, r0, lsl #18
     3ac:	00260500 	eoreq	r0, r6, r0, lsl #10
     3b0:	00001349 	andeq	r1, r0, r9, asr #6
     3b4:	0b002406 	bleq	93d4 <__Main_Stack_Size+0x8fd4>
     3b8:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     3bc:	07000008 	streq	r0, [r0, -r8]
     3c0:	0b0b0113 	bleq	2c0814 <__Main_Stack_Size+0x2c0414>
     3c4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     3c8:	00001301 	andeq	r1, r0, r1, lsl #6
     3cc:	03000d08 	movweq	r0, #3336	; 0xd08
     3d0:	3b0b3a0e 	blcc	2cec10 <__Main_Stack_Size+0x2ce810>
     3d4:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     3d8:	0900000b 	stmdbeq	r0, {r0, r1, r3}
     3dc:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     3e0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     3e4:	0b381349 	bleq	e05110 <__Main_Stack_Size+0xe04d10>
     3e8:	010a0000 	mrseq	r0, (UNDEF: 10)
     3ec:	01134901 	tsteq	r3, r1, lsl #18
     3f0:	0b000013 	bleq	444 <__Main_Stack_Size+0x44>
     3f4:	13490021 	movtne	r0, #36897	; 0x9021
     3f8:	00000b2f 	andeq	r0, r0, pc, lsr #22
     3fc:	0300160c 	movweq	r1, #1548	; 0x60c
     400:	3b0b3a0e 	blcc	2cec40 <__Main_Stack_Size+0x2ce840>
     404:	00134905 	andseq	r4, r3, r5, lsl #18
     408:	00340d00 	eorseq	r0, r4, r0, lsl #26
     40c:	0b3a0e03 	bleq	e83c20 <__Main_Stack_Size+0xe83820>
     410:	1349053b 	movtne	r0, #38203	; 0x953b
     414:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     418:	340e0000 	strcc	r0, [lr], #-0
     41c:	3a0e0300 	bcc	381024 <__Main_Stack_Size+0x380c24>
     420:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     424:	3c193f13 	ldccc	15, cr3, [r9], {19}
     428:	0f000019 	svceq	0x00000019
     42c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     430:	0b3a0e03 	bleq	e83c44 <__Main_Stack_Size+0xe83844>
     434:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
     438:	06120111 			; <UNDEFINED> instruction: 0x06120111
     43c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     440:	00130119 	andseq	r0, r3, r9, lsl r1
     444:	82891000 	addhi	r1, r9, #0
     448:	01110001 	tsteq	r1, r1
     44c:	31194295 			; <UNDEFINED> instruction: 0x31194295
     450:	11000013 	tstne	r0, r3, lsl r0
     454:	00018289 	andeq	r8, r1, r9, lsl #5
     458:	13310111 	teqne	r1, #1073741828	; 0x40000004
     45c:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
     460:	3c193f00 	ldccc	15, cr3, [r9], {-0}
     464:	030e6e19 	movweq	r6, #60953	; 0xee19
     468:	3b0b3a0e 	blcc	2ceca8 <__Main_Stack_Size+0x2ce8a8>
     46c:	0000000b 	andeq	r0, r0, fp
     470:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     474:	030b130e 	movweq	r1, #45838	; 0xb30e
     478:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xfffff4f2
     47c:	10011117 	andne	r1, r1, r7, lsl r1
     480:	02000017 	andeq	r0, r0, #23
     484:	0b0b0024 	bleq	2c051c <__Main_Stack_Size+0x2c011c>
     488:	0e030b3e 	vmoveq.16	d3[0], r0
     48c:	16030000 	strne	r0, [r3], -r0
     490:	3a0e0300 	bcc	381098 <__Main_Stack_Size+0x380c98>
     494:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     498:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
     49c:	13490035 	movtne	r0, #36917	; 0x9035
     4a0:	26050000 	strcs	r0, [r5], -r0
     4a4:	00134900 	andseq	r4, r3, r0, lsl #18
     4a8:	00240600 	eoreq	r0, r4, r0, lsl #12
     4ac:	0b3e0b0b 	bleq	f830e0 <__Main_Stack_Size+0xf82ce0>
     4b0:	00000803 	andeq	r0, r0, r3, lsl #16
     4b4:	0b011307 	bleq	450d8 <__Main_Stack_Size+0x44cd8>
     4b8:	3b0b3a0b 	blcc	2cecec <__Main_Stack_Size+0x2ce8ec>
     4bc:	00130105 	andseq	r0, r3, r5, lsl #2
     4c0:	000d0800 	andeq	r0, sp, r0, lsl #16
     4c4:	0b3a0e03 	bleq	e83cd8 <__Main_Stack_Size+0xe838d8>
     4c8:	1349053b 	movtne	r0, #38203	; 0x953b
     4cc:	00000b38 	andeq	r0, r0, r8, lsr fp
     4d0:	03000d09 	movweq	r0, #3337	; 0xd09
     4d4:	3b0b3a08 	blcc	2cecfc <__Main_Stack_Size+0x2ce8fc>
     4d8:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     4dc:	0a00000b 	beq	510 <__Main_Stack_Size+0x110>
     4e0:	13490101 	movtne	r0, #37121	; 0x9101
     4e4:	00001301 	andeq	r1, r0, r1, lsl #6
     4e8:	4900210b 	stmdbmi	r0, {r0, r1, r3, r8, sp}
     4ec:	000b2f13 	andeq	r2, fp, r3, lsl pc
     4f0:	00160c00 	andseq	r0, r6, r0, lsl #24
     4f4:	0b3a0e03 	bleq	e83d08 <__Main_Stack_Size+0xe83908>
     4f8:	1349053b 	movtne	r0, #38203	; 0x953b
     4fc:	340d0000 	strcc	r0, [sp], #-0
     500:	3a0e0300 	bcc	381108 <__Main_Stack_Size+0x380d08>
     504:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     508:	3c193f13 	ldccc	15, cr3, [r9], {19}
     50c:	0e000019 	mcreq	0, 0, r0, cr0, cr9, {0}
     510:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     514:	0b3b0b3a 	bleq	ec3204 <__Main_Stack_Size+0xec2e04>
     518:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
     51c:	0000193c 	andeq	r1, r0, ip, lsr r9
     520:	3f012e0f 	svccc	0x00012e0f
     524:	3a0e0319 	bcc	381190 <__Main_Stack_Size+0x380d90>
     528:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     52c:	19018719 	stmdbne	r1, {r0, r3, r4, r8, r9, sl, pc}
     530:	06120111 			; <UNDEFINED> instruction: 0x06120111
     534:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     538:	00130119 	andseq	r0, r3, r9, lsl r1
     53c:	011d1000 	tsteq	sp, r0
     540:	01111331 	tsteq	r1, r1, lsr r3
     544:	0b580612 	bleq	1601d94 <__Main_Stack_Size+0x1601994>
     548:	00000b59 	andeq	r0, r0, r9, asr fp
     54c:	31001d11 	tstcc	r0, r1, lsl sp
     550:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     554:	590b5806 	stmdbpl	fp, {r1, r2, fp, ip, lr}
     558:	12000005 	andne	r0, r0, #5
     55c:	0e03002e 	cdpeq	0, 0, cr0, cr3, cr14, {1}
     560:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     564:	01871927 	orreq	r1, r7, r7, lsr #18
     568:	000b2019 	andeq	r2, fp, r9, lsl r0
     56c:	002e1300 	eoreq	r1, lr, r0, lsl #6
     570:	0b3a0e03 	bleq	e83d84 <__Main_Stack_Size+0xe83984>
     574:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
     578:	00000b20 	andeq	r0, r0, r0, lsr #22
     57c:	01110100 	tsteq	r1, r0, lsl #2
     580:	0b130e25 	bleq	4c3e1c <__Main_Stack_Size+0x4c3a1c>
     584:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
     588:	01111755 	tsteq	r1, r5, asr r7
     58c:	00001710 	andeq	r1, r0, r0, lsl r7
     590:	0b002402 	bleq	95a0 <__Main_Stack_Size+0x91a0>
     594:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     598:	0300000e 	movweq	r0, #14
     59c:	0b0b0024 	bleq	2c0634 <__Main_Stack_Size+0x2c0234>
     5a0:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     5a4:	16040000 	strne	r0, [r4], -r0
     5a8:	3a0e0300 	bcc	3811b0 <__Main_Stack_Size+0x380db0>
     5ac:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     5b0:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
     5b4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
     5b8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     5bc:	00001349 	andeq	r1, r0, r9, asr #6
     5c0:	0b011706 	bleq	461e0 <__Main_Stack_Size+0x45de0>
     5c4:	3b0b3a0b 	blcc	2cedf8 <__Main_Stack_Size+0x2ce9f8>
     5c8:	0013010b 	andseq	r0, r3, fp, lsl #2
     5cc:	000d0700 	andeq	r0, sp, r0, lsl #14
     5d0:	0b3a0e03 	bleq	e83de4 <__Main_Stack_Size+0xe839e4>
     5d4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     5d8:	01080000 	mrseq	r0, (UNDEF: 8)
     5dc:	01134901 	tsteq	r3, r1, lsl #18
     5e0:	09000013 	stmdbeq	r0, {r0, r1, r4}
     5e4:	13490021 	movtne	r0, #36897	; 0x9021
     5e8:	00000b2f 	andeq	r0, r0, pc, lsr #22
     5ec:	0b01130a 	bleq	4521c <__Main_Stack_Size+0x44e1c>
     5f0:	3b0b3a0b 	blcc	2cee24 <__Main_Stack_Size+0x2cea24>
     5f4:	0013010b 	andseq	r0, r3, fp, lsl #2
     5f8:	000d0b00 	andeq	r0, sp, r0, lsl #22
     5fc:	0b3a0e03 	bleq	e83e10 <__Main_Stack_Size+0xe83a10>
     600:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     604:	00000b38 	andeq	r0, r0, r8, lsr fp
     608:	0b000f0c 	bleq	4240 <__Main_Stack_Size+0x3e40>
     60c:	0d00000b 	stceq	0, cr0, [r0, #-44]	; 0xffffffd4
     610:	0b0b000f 	bleq	2c0654 <__Main_Stack_Size+0x2c0254>
     614:	00001349 	andeq	r1, r0, r9, asr #6
     618:	4900260e 	stmdbmi	r0, {r1, r2, r3, r9, sl, sp}
     61c:	0f000013 	svceq	0x00000013
     620:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     624:	0b3a0b0b 	bleq	e83258 <__Main_Stack_Size+0xe82e58>
     628:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     62c:	0d100000 	ldceq	0, cr0, [r0, #-0]
     630:	3a080300 	bcc	201238 <__Main_Stack_Size+0x200e38>
     634:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     638:	000b3813 	andeq	r3, fp, r3, lsl r8
     63c:	01131100 	tsteq	r3, r0, lsl #2
     640:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
     644:	0b3b0b3a 	bleq	ec3334 <__Main_Stack_Size+0xec2f34>
     648:	00001301 	andeq	r1, r0, r1, lsl #6
     64c:	03000d12 	movweq	r0, #3346	; 0xd12
     650:	3b0b3a0e 	blcc	2cee90 <__Main_Stack_Size+0x2cea90>
     654:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     658:	13000005 	movwne	r0, #5
     65c:	19270015 	stmdbne	r7!, {r0, r2, r4}
     660:	15140000 	ldrne	r0, [r4, #-0]
     664:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
     668:	00130113 	andseq	r0, r3, r3, lsl r1
     66c:	00051500 	andeq	r1, r5, r0, lsl #10
     670:	00001349 	andeq	r1, r0, r9, asr #6
     674:	03011316 	movweq	r1, #4886	; 0x1316
     678:	3a050b0e 	bcc	1432b8 <__Main_Stack_Size+0x142eb8>
     67c:	01053b0b 	tsteq	r5, fp, lsl #22
     680:	17000013 	smladne	r0, r3, r0, r0
     684:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     688:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     68c:	0b381349 	bleq	e053b8 <__Main_Stack_Size+0xe04fb8>
     690:	0d180000 	ldceq	0, cr0, [r8, #-0]
     694:	3a0e0300 	bcc	38129c <__Main_Stack_Size+0x380e9c>
     698:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     69c:	00053813 	andeq	r3, r5, r3, lsl r8
     6a0:	01131900 	tsteq	r3, r0, lsl #18
     6a4:	0b0b0e03 	bleq	2c3eb8 <__Main_Stack_Size+0x2c3ab8>
     6a8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     6ac:	00001301 	andeq	r1, r0, r1, lsl #6
     6b0:	0b01131a 	bleq	45320 <__Main_Stack_Size+0x44f20>
     6b4:	3b0b3a0b 	blcc	2ceee8 <__Main_Stack_Size+0x2ceae8>
     6b8:	00130105 	andseq	r0, r3, r5, lsl #2
     6bc:	01171b00 	tsteq	r7, r0, lsl #22
     6c0:	0b3a0b0b 	bleq	e832f4 <__Main_Stack_Size+0xe82ef4>
     6c4:	1301053b 	movwne	r0, #5435	; 0x153b
     6c8:	0d1c0000 	ldceq	0, cr0, [ip, #-0]
     6cc:	3a0e0300 	bcc	3812d4 <__Main_Stack_Size+0x380ed4>
     6d0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     6d4:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
     6d8:	0e030013 	mcreq	0, 0, r0, cr3, cr3, {0}
     6dc:	0000193c 	andeq	r1, r0, ip, lsr r9
     6e0:	2701151e 	smladcs	r1, lr, r5, r1
     6e4:	00130119 	andseq	r0, r3, r9, lsl r1
     6e8:	00341f00 	eorseq	r1, r4, r0, lsl #30
     6ec:	0b3a0e03 	bleq	e83f00 <__Main_Stack_Size+0xe83b00>
     6f0:	1349053b 	movtne	r0, #38203	; 0x953b
     6f4:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     6f8:	21200000 			; <UNDEFINED> instruction: 0x21200000
     6fc:	21000000 	mrscs	r0, (UNDEF: 0)
     700:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     704:	0b3b0b3a 	bleq	ec33f4 <__Main_Stack_Size+0xec2ff4>
     708:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
     70c:	0000193c 	andeq	r1, r0, ip, lsr r9
     710:	3f012e22 	svccc	0x00012e22
     714:	3a0e0319 	bcc	381380 <__Main_Stack_Size+0x380f80>
     718:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     71c:	11134919 	tstne	r3, r9, lsl r9
     720:	40061201 	andmi	r1, r6, r1, lsl #4
     724:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     728:	00001301 	andeq	r1, r0, r1, lsl #6
     72c:	03000523 	movweq	r0, #1315	; 0x523
     730:	3b0b3a0e 	blcc	2cef70 <__Main_Stack_Size+0x2ceb70>
     734:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     738:	24000017 	strcs	r0, [r0], #-23	; 0xffffffe9
     73c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     740:	0b3b0b3a 	bleq	ec3430 <__Main_Stack_Size+0xec3030>
     744:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     748:	34250000 	strtcc	r0, [r5], #-0
     74c:	3a0e0300 	bcc	381354 <__Main_Stack_Size+0x380f54>
     750:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     754:	00170213 	andseq	r0, r7, r3, lsl r2
     758:	82892600 	addhi	r2, r9, #0, 12
     75c:	01110001 	tsteq	r1, r1
     760:	00001331 	andeq	r1, r0, r1, lsr r3
     764:	3f002e27 	svccc	0x00002e27
     768:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     76c:	3a0e030e 	bcc	3813ac <__Main_Stack_Size+0x380fac>
     770:	000b3b0b 	andeq	r3, fp, fp, lsl #22
     774:	11010000 	mrsne	r0, (UNDEF: 1)
     778:	130e2501 	movwne	r2, #58625	; 0xe501
     77c:	1b0e030b 	blne	3813b0 <__Main_Stack_Size+0x380fb0>
     780:	1117550e 	tstne	r7, lr, lsl #10
     784:	00171001 	andseq	r1, r7, r1
     788:	00340200 	eorseq	r0, r4, r0, lsl #4
     78c:	0b3a0e03 	bleq	e83fa0 <__Main_Stack_Size+0xe83ba0>
     790:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     794:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     798:	24030000 	strcs	r0, [r3], #-0
     79c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     7a0:	000e030b 	andeq	r0, lr, fp, lsl #6
     7a4:	01010400 	tsteq	r1, r0, lsl #8
     7a8:	13011349 	movwne	r1, #4937	; 0x1349
     7ac:	21050000 	mrscs	r0, (UNDEF: 5)
     7b0:	06000000 	streq	r0, [r0], -r0
     7b4:	0b0b000f 	bleq	2c07f8 <__Main_Stack_Size+0x2c03f8>
     7b8:	00001349 	andeq	r1, r0, r9, asr #6
     7bc:	27001507 	strcs	r1, [r0, -r7, lsl #10]
     7c0:	08000019 	stmdaeq	r0, {r0, r3, r4}
     7c4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     7c8:	0b3a0e03 	bleq	e83fdc <__Main_Stack_Size+0xe83bdc>
     7cc:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
     7d0:	11190187 	tstne	r9, r7, lsl #3
     7d4:	40061201 	andmi	r1, r6, r1, lsl #4
     7d8:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     7dc:	00001301 	andeq	r1, r0, r1, lsl #6
     7e0:	03003409 	movweq	r3, #1033	; 0x409
     7e4:	3b0b3a0e 	blcc	2cf024 <__Main_Stack_Size+0x2cec24>
     7e8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     7ec:	0a000018 	beq	854 <__Main_Stack_Size+0x454>
     7f0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     7f4:	0b3b0b3a 	bleq	ec34e4 <__Main_Stack_Size+0xec30e4>
     7f8:	17021349 	strne	r1, [r2, -r9, asr #6]
     7fc:	1d0b0000 	stcne	0, cr0, [fp, #-0]
     800:	11133101 	tstne	r3, r1, lsl #2
     804:	58061201 	stmdapl	r6, {r0, r9, ip}
     808:	010b590b 	tsteq	fp, fp, lsl #18
     80c:	0c000013 	stceq	0, cr0, [r0], {19}
     810:	13310005 	teqne	r1, #5
     814:	050d0000 	streq	r0, [sp, #-0]
     818:	02133100 	andseq	r3, r3, #0, 2
     81c:	0e000017 	mcreq	0, 0, r0, cr0, cr7, {0}
     820:	0111010b 	tsteq	r1, fp, lsl #2
     824:	00000612 	andeq	r0, r0, r2, lsl r6
     828:	3100340f 	tstcc	r0, pc, lsl #8
     82c:	10000013 	andne	r0, r0, r3, lsl r0
     830:	00018289 	andeq	r8, r1, r9, lsl #5
     834:	13310111 	teqne	r1, #1073741828	; 0x40000004
     838:	89110000 	ldmdbhi	r1, {}	; <UNPREDICTABLE>
     83c:	11010182 	smlabbne	r1, r2, r1, r0
     840:	01133101 	tsteq	r3, r1, lsl #2
     844:	12000013 	andne	r0, r0, #19
     848:	0001828a 	andeq	r8, r1, sl, lsl #5
     84c:	42911802 	addsmi	r1, r1, #131072	; 0x20000
     850:	13000018 	movwne	r0, #24
     854:	0b0b0024 	bleq	2c08ec <__Main_Stack_Size+0x2c04ec>
     858:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     85c:	2e140000 	cdpcs	0, 1, cr0, cr4, cr0, {0}
     860:	03193f01 	tsteq	r9, #1, 30
     864:	3b0b3a0e 	blcc	2cf0a4 <__Main_Stack_Size+0x2ceca4>
     868:	2019270b 	andscs	r2, r9, fp, lsl #14
     86c:	0013010b 	andseq	r0, r3, fp, lsl #2
     870:	00051500 	andeq	r1, r5, r0, lsl #10
     874:	0b3a0e03 	bleq	e84088 <__Main_Stack_Size+0xe83c88>
     878:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     87c:	34160000 	ldrcc	r0, [r6], #-0
     880:	3a080300 	bcc	201488 <__Main_Stack_Size+0x201088>
     884:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     888:	17000013 	smladne	r0, r3, r0, r0
     88c:	1331012e 	teqne	r1, #-2147483637	; 0x8000000b
     890:	06120111 			; <UNDEFINED> instruction: 0x06120111
     894:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     898:	00130119 	andseq	r0, r3, r9, lsl r1
     89c:	00341800 	eorseq	r1, r4, r0, lsl #16
     8a0:	17021331 	smladxne	r2, r1, r3, r1
     8a4:	05190000 	ldreq	r0, [r9, #-0]
     8a8:	02133100 	andseq	r3, r3, #0, 2
     8ac:	1a000018 	bne	914 <__Main_Stack_Size+0x514>
     8b0:	13310034 	teqne	r1, #52	; 0x34
     8b4:	00001802 	andeq	r1, r0, r2, lsl #16
     8b8:	3f002e1b 	svccc	0x00002e1b
     8bc:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     8c0:	3a0e030e 	bcc	381500 <__Main_Stack_Size+0x381100>
     8c4:	000b3b0b 	andeq	r3, fp, fp, lsl #22
     8c8:	11010000 	mrsne	r0, (UNDEF: 1)
     8cc:	130e2501 	movwne	r2, #58625	; 0xe501
     8d0:	1b0e030b 	blne	381504 <__Main_Stack_Size+0x381104>
     8d4:	1117550e 	tstne	r7, lr, lsl #10
     8d8:	00171001 	andseq	r1, r7, r1
     8dc:	00340200 	eorseq	r0, r4, r0, lsl #4
     8e0:	0b3a0e03 	bleq	e840f4 <__Main_Stack_Size+0xe83cf4>
     8e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     8e8:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     8ec:	24030000 	strcs	r0, [r3], #-0
     8f0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     8f4:	0008030b 	andeq	r0, r8, fp, lsl #6
     8f8:	00160400 	andseq	r0, r6, r0, lsl #8
     8fc:	0b3a0e03 	bleq	e84110 <__Main_Stack_Size+0xe83d10>
     900:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     904:	24050000 	strcs	r0, [r5], #-0
     908:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     90c:	000e030b 	andeq	r0, lr, fp, lsl #6
     910:	00160600 	andseq	r0, r6, r0, lsl #12
     914:	0b3a0e03 	bleq	e84128 <__Main_Stack_Size+0xe83d28>
     918:	1349053b 	movtne	r0, #38203	; 0x953b
     91c:	17070000 	strne	r0, [r7, -r0]
     920:	3a0b0b01 	bcc	2c352c <__Main_Stack_Size+0x2c312c>
     924:	010b3b0b 	tsteq	fp, fp, lsl #22
     928:	08000013 	stmdaeq	r0, {r0, r1, r4}
     92c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     930:	0b3b0b3a 	bleq	ec3620 <__Main_Stack_Size+0xec3220>
     934:	00001349 	andeq	r1, r0, r9, asr #6
     938:	49010109 	stmdbmi	r1, {r0, r3, r8}
     93c:	00130113 	andseq	r0, r3, r3, lsl r1
     940:	00210a00 	eoreq	r0, r1, r0, lsl #20
     944:	0b2f1349 	bleq	bc5670 <__Main_Stack_Size+0xbc5270>
     948:	130b0000 	movwne	r0, #45056	; 0xb000
     94c:	3a0b0b01 	bcc	2c3558 <__Main_Stack_Size+0x2c3158>
     950:	010b3b0b 	tsteq	fp, fp, lsl #22
     954:	0c000013 	stceq	0, cr0, [r0], {19}
     958:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     95c:	0b3b0b3a 	bleq	ec364c <__Main_Stack_Size+0xec324c>
     960:	0b381349 	bleq	e0568c <__Main_Stack_Size+0xe0528c>
     964:	0f0d0000 	svceq	0x000d0000
     968:	000b0b00 	andeq	r0, fp, r0, lsl #22
     96c:	000f0e00 	andeq	r0, pc, r0, lsl #28
     970:	13490b0b 	movtne	r0, #39691	; 0x9b0b
     974:	260f0000 	strcs	r0, [pc], -r0
     978:	00134900 	andseq	r4, r3, r0, lsl #18
     97c:	01131000 	tsteq	r3, r0
     980:	0b0b0e03 	bleq	2c4194 <__Main_Stack_Size+0x2c3d94>
     984:	0b3b0b3a 	bleq	ec3674 <__Main_Stack_Size+0xec3274>
     988:	00001301 	andeq	r1, r0, r1, lsl #6
     98c:	03000d11 	movweq	r0, #3345	; 0xd11
     990:	3b0b3a08 	blcc	2cf1b8 <__Main_Stack_Size+0x2cedb8>
     994:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     998:	1200000b 	andne	r0, r0, #11
     99c:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     9a0:	0b3a050b 	bleq	e81dd4 <__Main_Stack_Size+0xe819d4>
     9a4:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     9a8:	0d130000 	ldceq	0, cr0, [r3, #-0]
     9ac:	3a0e0300 	bcc	3815b4 <__Main_Stack_Size+0x3811b4>
     9b0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     9b4:	00053813 	andeq	r3, r5, r3, lsl r8
     9b8:	00151400 	andseq	r1, r5, r0, lsl #8
     9bc:	00001927 	andeq	r1, r0, r7, lsr #18
     9c0:	27011515 	smladcs	r1, r5, r5, r1
     9c4:	01134919 	tsteq	r3, r9, lsl r9
     9c8:	16000013 			; <UNDEFINED> instruction: 0x16000013
     9cc:	13490005 	movtne	r0, #36869	; 0x9005
     9d0:	13170000 	tstne	r7, #0
     9d4:	0b0e0301 	bleq	3815e0 <__Main_Stack_Size+0x3811e0>
     9d8:	3b0b3a05 	blcc	2cf1f4 <__Main_Stack_Size+0x2cedf4>
     9dc:	00130105 	andseq	r0, r3, r5, lsl #2
     9e0:	000d1800 	andeq	r1, sp, r0, lsl #16
     9e4:	0b3a0e03 	bleq	e841f8 <__Main_Stack_Size+0xe83df8>
     9e8:	1349053b 	movtne	r0, #38203	; 0x953b
     9ec:	00000b38 	andeq	r0, r0, r8, lsr fp
     9f0:	03000d19 	movweq	r0, #3353	; 0xd19
     9f4:	3b0b3a0e 	blcc	2cf234 <__Main_Stack_Size+0x2cee34>
     9f8:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     9fc:	1a000005 	bne	a18 <__Main_Stack_Size+0x618>
     a00:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     a04:	0b3a0b0b 	bleq	e83638 <__Main_Stack_Size+0xe83238>
     a08:	1301053b 	movwne	r0, #5435	; 0x153b
     a0c:	131b0000 	tstne	fp, #0
     a10:	3a0b0b01 	bcc	2c361c <__Main_Stack_Size+0x2c321c>
     a14:	01053b0b 	tsteq	r5, fp, lsl #22
     a18:	1c000013 	stcne	0, cr0, [r0], {19}
     a1c:	0b0b0117 	bleq	2c0e80 <__Main_Stack_Size+0x2c0a80>
     a20:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     a24:	00001301 	andeq	r1, r0, r1, lsl #6
     a28:	03000d1d 	movweq	r0, #3357	; 0xd1d
     a2c:	3b0b3a0e 	blcc	2cf26c <__Main_Stack_Size+0x2cee6c>
     a30:	00134905 	andseq	r4, r3, r5, lsl #18
     a34:	00131e00 	andseq	r1, r3, r0, lsl #28
     a38:	193c0e03 	ldmdbne	ip!, {r0, r1, r9, sl, fp}
     a3c:	151f0000 	ldrne	r0, [pc, #-0]	; a44 <__Main_Stack_Size+0x644>
     a40:	01192701 	tsteq	r9, r1, lsl #14
     a44:	20000013 	andcs	r0, r0, r3, lsl r0
     a48:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     a4c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     a50:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
     a54:	0000193c 	andeq	r1, r0, ip, lsr r9
     a58:	00002121 	andeq	r2, r0, r1, lsr #2
     a5c:	00342200 	eorseq	r2, r4, r0, lsl #4
     a60:	0b3a0e03 	bleq	e84274 <__Main_Stack_Size+0xe83e74>
     a64:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     a68:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     a6c:	13230000 			; <UNDEFINED> instruction: 0x13230000
     a70:	0b080301 	bleq	20167c <__Main_Stack_Size+0x20127c>
     a74:	3b0b3a0b 	blcc	2cf2a8 <__Main_Stack_Size+0x2ceea8>
     a78:	0013010b 	andseq	r0, r3, fp, lsl #2
     a7c:	012e2400 			; <UNDEFINED> instruction: 0x012e2400
     a80:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     a84:	0b3b0b3a 	bleq	ec3774 <__Main_Stack_Size+0xec3374>
     a88:	13491927 	movtne	r1, #39207	; 0x9927
     a8c:	00001301 	andeq	r1, r0, r1, lsl #6
     a90:	03000525 	movweq	r0, #1317	; 0x525
     a94:	3b0b3a0e 	blcc	2cf2d4 <__Main_Stack_Size+0x2ceed4>
     a98:	0013490b 	andseq	r4, r3, fp, lsl #18
     a9c:	00052600 	andeq	r2, r5, r0, lsl #12
     aa0:	0b3a0803 	bleq	e82ab4 <__Main_Stack_Size+0xe826b4>
     aa4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     aa8:	2e270000 	cdpcs	0, 2, cr0, cr7, cr0, {0}
     aac:	03193f01 	tsteq	r9, #1, 30
     ab0:	3b0b3a0e 	blcc	2cf2f0 <__Main_Stack_Size+0x2ceef0>
     ab4:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
     ab8:	010b2013 	tsteq	fp, r3, lsl r0
     abc:	28000013 	stmdacs	r0, {r0, r1, r4}
     ac0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     ac4:	0b3a0e03 	bleq	e842d8 <__Main_Stack_Size+0xe83ed8>
     ac8:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
     acc:	01111349 	tsteq	r1, r9, asr #6
     ad0:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     ad4:	01194297 			; <UNDEFINED> instruction: 0x01194297
     ad8:	29000013 	stmdbcs	r0, {r0, r1, r4}
     adc:	08030005 	stmdaeq	r3, {r0, r2}
     ae0:	0b3b0b3a 	bleq	ec37d0 <__Main_Stack_Size+0xec33d0>
     ae4:	17021349 	strne	r1, [r2, -r9, asr #6]
     ae8:	892a0000 	stmdbhi	sl!, {}	; <UNPREDICTABLE>
     aec:	11000182 	smlabbne	r0, r2, r1, r0
     af0:	00133101 	andseq	r3, r3, r1, lsl #2
     af4:	00052b00 	andeq	r2, r5, r0, lsl #22
     af8:	0b3a0e03 	bleq	e8430c <__Main_Stack_Size+0xe83f0c>
     afc:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     b00:	00001702 	andeq	r1, r0, r2, lsl #14
     b04:	3f002e2c 	svccc	0x00002e2c
     b08:	3a0e0319 	bcc	381774 <__Main_Stack_Size+0x381374>
     b0c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     b10:	00134919 	andseq	r4, r3, r9, lsl r9
     b14:	002e2d00 	eoreq	r2, lr, r0, lsl #26
     b18:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     b1c:	0b3b0b3a 	bleq	ec380c <__Main_Stack_Size+0xec340c>
     b20:	13491927 	movtne	r1, #39207	; 0x9927
     b24:	00000b20 	andeq	r0, r0, r0, lsr #22
     b28:	3f012e2e 	svccc	0x00012e2e
     b2c:	3a0e0319 	bcc	381798 <__Main_Stack_Size+0x381398>
     b30:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     b34:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
     b38:	97184006 	ldrls	r4, [r8, -r6]
     b3c:	13011942 	movwne	r1, #6466	; 0x1942
     b40:	052f0000 	streq	r0, [pc, #-0]!	; b48 <__Main_Stack_Size+0x748>
     b44:	3a0e0300 	bcc	38174c <__Main_Stack_Size+0x38134c>
     b48:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     b4c:	00180213 	andseq	r0, r8, r3, lsl r2
     b50:	00343000 	eorseq	r3, r4, r0
     b54:	0b3a0e03 	bleq	e84368 <__Main_Stack_Size+0xe83f68>
     b58:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     b5c:	34310000 	ldrtcc	r0, [r1], #-0
     b60:	3a0e0300 	bcc	381768 <__Main_Stack_Size+0x381368>
     b64:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     b68:	00180213 	andseq	r0, r8, r3, lsl r2
     b6c:	012e3200 			; <UNDEFINED> instruction: 0x012e3200
     b70:	01111331 	tsteq	r1, r1, lsr r3
     b74:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     b78:	01194297 			; <UNDEFINED> instruction: 0x01194297
     b7c:	33000013 	movwcc	r0, #19
     b80:	13310005 	teqne	r1, #5
     b84:	00001702 	andeq	r1, r0, r2, lsl #14
     b88:	3f002e34 	svccc	0x00002e34
     b8c:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     b90:	3a0e030e 	bcc	3817d0 <__Main_Stack_Size+0x3813d0>
     b94:	000b3b0b 	andeq	r3, fp, fp, lsl #22
     b98:	11010000 	mrsne	r0, (UNDEF: 1)
     b9c:	130e2501 	movwne	r2, #58625	; 0xe501
     ba0:	1b0e030b 	blne	3817d4 <__Main_Stack_Size+0x3813d4>
     ba4:	1117550e 	tstne	r7, lr, lsl #10
     ba8:	00171001 	andseq	r1, r7, r1
     bac:	00240200 	eoreq	r0, r4, r0, lsl #4
     bb0:	0b3e0b0b 	bleq	f837e4 <__Main_Stack_Size+0xf833e4>
     bb4:	00000e03 	andeq	r0, r0, r3, lsl #28
     bb8:	03001603 	movweq	r1, #1539	; 0x603
     bbc:	3b0b3a0e 	blcc	2cf3fc <__Main_Stack_Size+0x2ceffc>
     bc0:	0013490b 	andseq	r4, r3, fp, lsl #18
     bc4:	00350400 	eorseq	r0, r5, r0, lsl #8
     bc8:	00001349 	andeq	r1, r0, r9, asr #6
     bcc:	0b002405 	bleq	9be8 <__Main_Stack_Size+0x97e8>
     bd0:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
     bd4:	06000008 	streq	r0, [r0], -r8
     bd8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     bdc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     be0:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
     be4:	0000193c 	andeq	r1, r0, ip, lsr r9
     be8:	03003407 	movweq	r3, #1031	; 0x407
     bec:	3b0b3a0e 	blcc	2cf42c <__Main_Stack_Size+0x2cf02c>
     bf0:	3f13490b 	svccc	0x0013490b
     bf4:	00193c19 	andseq	r3, r9, r9, lsl ip
     bf8:	01130800 	tsteq	r3, r0, lsl #16
     bfc:	0b3a0b0b 	bleq	e83830 <__Main_Stack_Size+0xe83430>
     c00:	1301053b 	movwne	r0, #5435	; 0x153b
     c04:	0d090000 	stceq	0, cr0, [r9, #-0]
     c08:	3a080300 	bcc	201810 <__Main_Stack_Size+0x201410>
     c0c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     c10:	000b3813 	andeq	r3, fp, r3, lsl r8
     c14:	000d0a00 	andeq	r0, sp, r0, lsl #20
     c18:	0b3a0e03 	bleq	e8442c <__Main_Stack_Size+0xe8402c>
     c1c:	1349053b 	movtne	r0, #38203	; 0x953b
     c20:	00000b38 	andeq	r0, r0, r8, lsr fp
     c24:	0300160b 	movweq	r1, #1547	; 0x60b
     c28:	3b0b3a0e 	blcc	2cf468 <__Main_Stack_Size+0x2cf068>
     c2c:	00134905 	andseq	r4, r3, r5, lsl #18
     c30:	01170c00 	tsteq	r7, r0, lsl #24
     c34:	0b3a0b0b 	bleq	e83868 <__Main_Stack_Size+0xe83468>
     c38:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     c3c:	0d0d0000 	stceq	0, cr0, [sp, #-0]
     c40:	3a0e0300 	bcc	381848 <__Main_Stack_Size+0x381448>
     c44:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     c48:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     c4c:	13490101 	movtne	r0, #37121	; 0x9101
     c50:	00001301 	andeq	r1, r0, r1, lsl #6
     c54:	4900210f 	stmdbmi	r0, {r0, r1, r2, r3, r8, sp}
     c58:	000b2f13 	andeq	r2, fp, r3, lsl pc
     c5c:	01131000 	tsteq	r3, r0
     c60:	0b3a0b0b 	bleq	e83894 <__Main_Stack_Size+0xe83494>
     c64:	13010b3b 	movwne	r0, #6971	; 0x1b3b
     c68:	0d110000 	ldceq	0, cr0, [r1, #-0]
     c6c:	3a0e0300 	bcc	381874 <__Main_Stack_Size+0x381474>
     c70:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     c74:	000b3813 	andeq	r3, fp, r3, lsl r8
     c78:	000f1200 	andeq	r1, pc, r0, lsl #4
     c7c:	00000b0b 	andeq	r0, r0, fp, lsl #22
     c80:	0b000f13 	bleq	48d4 <__Main_Stack_Size+0x44d4>
     c84:	0013490b 	andseq	r4, r3, fp, lsl #18
     c88:	00261400 	eoreq	r1, r6, r0, lsl #8
     c8c:	00001349 	andeq	r1, r0, r9, asr #6
     c90:	03011315 	movweq	r1, #4885	; 0x1315
     c94:	3a0b0b0e 	bcc	2c38d4 <__Main_Stack_Size+0x2c34d4>
     c98:	010b3b0b 	tsteq	fp, fp, lsl #22
     c9c:	16000013 			; <UNDEFINED> instruction: 0x16000013
     ca0:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     ca4:	0b3b0b3a 	bleq	ec3994 <__Main_Stack_Size+0xec3594>
     ca8:	0b381349 	bleq	e059d4 <__Main_Stack_Size+0xe055d4>
     cac:	13170000 	tstne	r7, #0
     cb0:	0b0e0301 	bleq	3818bc <__Main_Stack_Size+0x3814bc>
     cb4:	3b0b3a05 	blcc	2cf4d0 <__Main_Stack_Size+0x2cf0d0>
     cb8:	0013010b 	andseq	r0, r3, fp, lsl #2
     cbc:	000d1800 	andeq	r1, sp, r0, lsl #16
     cc0:	0b3a0e03 	bleq	e844d4 <__Main_Stack_Size+0xe840d4>
     cc4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
     cc8:	00000538 	andeq	r0, r0, r8, lsr r5
     ccc:	27001519 	smladcs	r0, r9, r5, r1
     cd0:	1a000019 	bne	d3c <__Main_Stack_Size+0x93c>
     cd4:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
     cd8:	13011349 	movwne	r1, #4937	; 0x1349
     cdc:	051b0000 	ldreq	r0, [fp, #-0]
     ce0:	00134900 	andseq	r4, r3, r0, lsl #18
     ce4:	01131c00 	tsteq	r3, r0, lsl #24
     ce8:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
     cec:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     cf0:	00001301 	andeq	r1, r0, r1, lsl #6
     cf4:	03000d1d 	movweq	r0, #3357	; 0xd1d
     cf8:	3b0b3a0e 	blcc	2cf538 <__Main_Stack_Size+0x2cf138>
     cfc:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     d00:	1e000005 	cdpne	0, 0, cr0, cr0, cr5, {0}
     d04:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     d08:	0b3a0b0b 	bleq	e8393c <__Main_Stack_Size+0xe8353c>
     d0c:	1301053b 	movwne	r0, #5435	; 0x153b
     d10:	171f0000 	ldrne	r0, [pc, -r0]
     d14:	3a0b0b01 	bcc	2c3920 <__Main_Stack_Size+0x2c3520>
     d18:	01053b0b 	tsteq	r5, fp, lsl #22
     d1c:	20000013 	andcs	r0, r0, r3, lsl r0
     d20:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     d24:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     d28:	00001349 	andeq	r1, r0, r9, asr #6
     d2c:	03001321 	movweq	r1, #801	; 0x321
     d30:	00193c0e 	andseq	r3, r9, lr, lsl #24
     d34:	01152200 	tsteq	r5, r0, lsl #4
     d38:	13011927 	movwne	r1, #6439	; 0x1927
     d3c:	04230000 	strteq	r0, [r3], #-0
     d40:	3e0e0301 	cdpcc	3, 0, cr0, cr14, cr1, {0}
     d44:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
     d48:	3b0b3a13 	blcc	2cf59c <__Main_Stack_Size+0x2cf19c>
     d4c:	0013010b 	andseq	r0, r3, fp, lsl #2
     d50:	00282400 	eoreq	r2, r8, r0, lsl #8
     d54:	0b1c0e03 	bleq	704568 <__Main_Stack_Size+0x704168>
     d58:	28250000 	stmdacs	r5!, {}	; <UNPREDICTABLE>
     d5c:	1c080300 	stcne	3, cr0, [r8], {-0}
     d60:	2600000b 	strcs	r0, [r0], -fp
     d64:	08030034 	stmdaeq	r3, {r2, r4, r5}
     d68:	0b3b0b3a 	bleq	ec3a58 <__Main_Stack_Size+0xec3658>
     d6c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     d70:	21270000 			; <UNDEFINED> instruction: 0x21270000
     d74:	2f134900 	svccs	0x00134900
     d78:	28000005 	stmdacs	r0, {r0, r2}
     d7c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     d80:	0b3b0b3a 	bleq	ec3a70 <__Main_Stack_Size+0xec3670>
     d84:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     d88:	2e290000 	cdpcs	0, 2, cr0, cr9, cr0, {0}
     d8c:	03193f01 	tsteq	r9, #1, 30
     d90:	3b0b3a0e 	blcc	2cf5d0 <__Main_Stack_Size+0x2cf1d0>
     d94:	1119270b 	tstne	r9, fp, lsl #14
     d98:	40061201 	andmi	r1, r6, r1, lsl #4
     d9c:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     da0:	00001301 	andeq	r1, r0, r1, lsl #6
     da4:	31001d2a 	tstcc	r0, sl, lsr #26
     da8:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     dac:	590b5806 	stmdbpl	fp, {r1, r2, fp, ip, lr}
     db0:	2b00000b 	blcs	de4 <__Main_Stack_Size+0x9e4>
     db4:	1331011d 	teqne	r1, #1073741831	; 0x40000007
     db8:	06120111 			; <UNDEFINED> instruction: 0x06120111
     dbc:	0b590b58 	bleq	1643b24 <__Main_Stack_Size+0x1643724>
     dc0:	00001301 	andeq	r1, r0, r1, lsl #6
     dc4:	11010b2c 	tstne	r1, ip, lsr #22
     dc8:	00061201 	andeq	r1, r6, r1, lsl #4
     dcc:	00342d00 	eorseq	r2, r4, r0, lsl #26
     dd0:	00001331 	andeq	r1, r0, r1, lsr r3
     dd4:	31010b2e 	tstcc	r1, lr, lsr #22
     dd8:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     ddc:	00130106 	andseq	r0, r3, r6, lsl #2
     de0:	82892f00 	addhi	r2, r9, #0, 30
     de4:	01110001 	tsteq	r1, r1
     de8:	00001331 	andeq	r1, r0, r1, lsr r3
     dec:	01828930 	orreq	r8, r2, r0, lsr r9
     df0:	31011101 	tstcc	r1, r1, lsl #2
     df4:	00130113 	andseq	r0, r3, r3, lsl r1
     df8:	828a3100 	addhi	r3, sl, #0, 2
     dfc:	18020001 	stmdane	r2, {r0}
     e00:	00184291 	mulseq	r8, r1, r2
     e04:	82893200 	addhi	r3, r9, #0, 4
     e08:	01110101 	tsteq	r1, r1, lsl #2
     e0c:	00001331 	andeq	r1, r0, r1, lsr r3
     e10:	3f012e33 	svccc	0x00012e33
     e14:	3a0e0319 	bcc	381a80 <__Main_Stack_Size+0x381680>
     e18:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
     e1c:	010b2019 	tsteq	fp, r9, lsl r0
     e20:	34000013 	strcc	r0, [r0], #-19	; 0xffffffed
     e24:	08030034 	stmdaeq	r3, {r2, r4, r5}
     e28:	0b3b0b3a 	bleq	ec3b18 <__Main_Stack_Size+0xec3718>
     e2c:	00001349 	andeq	r1, r0, r9, asr #6
     e30:	03003435 	movweq	r3, #1077	; 0x435
     e34:	3b0b3a0e 	blcc	2cf674 <__Main_Stack_Size+0x2cf274>
     e38:	0013490b 	andseq	r4, r3, fp, lsl #18
     e3c:	010b3600 	tsteq	fp, r0, lsl #12
     e40:	89370000 	ldmdbhi	r7!, {}	; <UNPREDICTABLE>
     e44:	11010182 	smlabbne	r1, r2, r1, r0
     e48:	19429501 	stmdbne	r2, {r0, r8, sl, ip, pc}^
     e4c:	00001331 	andeq	r1, r0, r1, lsr r3
     e50:	03003438 	movweq	r3, #1080	; 0x438
     e54:	3b0b3a08 	blcc	2cf67c <__Main_Stack_Size+0x2cf27c>
     e58:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     e5c:	39000017 	stmdbcc	r0, {r0, r1, r2, r4}
     e60:	01018289 	smlabbeq	r1, r9, r2, r8
     e64:	42950111 	addsmi	r0, r5, #1073741828	; 0x40000004
     e68:	01133119 	tsteq	r3, r9, lsl r1
     e6c:	3a000013 	bcc	ec0 <__Main_Stack_Size+0xac0>
     e70:	0e03002e 	cdpeq	0, 0, cr0, cr3, cr14, {1}
     e74:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     e78:	0b201927 	bleq	80731c <__Main_Stack_Size+0x806f1c>
     e7c:	2e3b0000 	cdpcs	0, 3, cr0, cr11, cr0, {0}
     e80:	11133101 	tstne	r3, r1, lsl #2
     e84:	40061201 	andmi	r1, r6, r1, lsl #4
     e88:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     e8c:	00001301 	andeq	r1, r0, r1, lsl #6
     e90:	3100343c 	tstcc	r0, ip, lsr r4
     e94:	00180213 	andseq	r0, r8, r3, lsl r2
     e98:	00343d00 	eorseq	r3, r4, r0, lsl #26
     e9c:	17021331 	smladxne	r2, r1, r3, r1
     ea0:	0b3e0000 	bleq	f80ea8 <__Main_Stack_Size+0xf80aa8>
     ea4:	55133101 	ldrpl	r3, [r3, #-257]	; 0xfffffeff
     ea8:	3f000017 	svccc	0x00000017
     eac:	0111010b 	tsteq	r1, fp, lsl #2
     eb0:	13010612 	movwne	r0, #5650	; 0x1612
     eb4:	89400000 	stmdbhi	r0, {}^	; <UNPREDICTABLE>
     eb8:	11000182 	smlabbne	r0, r2, r1, r0
     ebc:	19429501 	stmdbne	r2, {r0, r8, sl, ip, pc}^
     ec0:	00001331 	andeq	r1, r0, r1, lsr r3
     ec4:	3f002e41 	svccc	0x00002e41
     ec8:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     ecc:	3a0e030e 	bcc	381b0c <__Main_Stack_Size+0x38170c>
     ed0:	000b3b0b 	andeq	r3, fp, fp, lsl #22
     ed4:	11010000 	mrsne	r0, (UNDEF: 1)
     ed8:	130e2501 	movwne	r2, #58625	; 0xe501
     edc:	1b0e030b 	blne	381b10 <__Main_Stack_Size+0x381710>
     ee0:	1117550e 	tstne	r7, lr, lsl #10
     ee4:	00171001 	andseq	r1, r7, r1
     ee8:	01040200 	mrseq	r0, R12_usr
     eec:	0b3e0e03 	bleq	f84700 <__Main_Stack_Size+0xf84300>
     ef0:	13490b0b 	movtne	r0, #39691	; 0x9b0b
     ef4:	0b3b0b3a 	bleq	ec3be4 <__Main_Stack_Size+0xec37e4>
     ef8:	00001301 	andeq	r1, r0, r1, lsl #6
     efc:	03002803 	movweq	r2, #2051	; 0x803
     f00:	000d1c0e 	andeq	r1, sp, lr, lsl #24
     f04:	00280400 	eoreq	r0, r8, r0, lsl #8
     f08:	0b1c0e03 	bleq	70471c <__Main_Stack_Size+0x70431c>
     f0c:	24050000 	strcs	r0, [r5], #-0
     f10:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     f14:	000e030b 	andeq	r0, lr, fp, lsl #6
     f18:	00160600 	andseq	r0, r6, r0, lsl #12
     f1c:	0b3a0e03 	bleq	e84730 <__Main_Stack_Size+0xe84330>
     f20:	1349053b 	movtne	r0, #38203	; 0x953b
     f24:	16070000 	strne	r0, [r7], -r0
     f28:	3a0e0300 	bcc	381b30 <__Main_Stack_Size+0x381730>
     f2c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     f30:	08000013 	stmdaeq	r0, {r0, r1, r4}
     f34:	13490035 	movtne	r0, #36917	; 0x9035
     f38:	26090000 	strcs	r0, [r9], -r0
     f3c:	00134900 	andseq	r4, r3, r0, lsl #18
     f40:	00240a00 	eoreq	r0, r4, r0, lsl #20
     f44:	0b3e0b0b 	bleq	f83b78 <__Main_Stack_Size+0xf83778>
     f48:	00000803 	andeq	r0, r0, r3, lsl #16
     f4c:	0b01130b 	bleq	45b80 <__Main_Stack_Size+0x45780>
     f50:	3b0b3a05 	blcc	2cf76c <__Main_Stack_Size+0x2cf36c>
     f54:	00130105 	andseq	r0, r3, r5, lsl #2
     f58:	000d0c00 	andeq	r0, sp, r0, lsl #24
     f5c:	0b3a0e03 	bleq	e84770 <__Main_Stack_Size+0xe84370>
     f60:	1349053b 	movtne	r0, #38203	; 0x953b
     f64:	00000b38 	andeq	r0, r0, r8, lsr fp
     f68:	03000d0d 	movweq	r0, #3341	; 0xd0d
     f6c:	3b0b3a0e 	blcc	2cf7ac <__Main_Stack_Size+0x2cf3ac>
     f70:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     f74:	0e000005 	cdpeq	0, 0, cr0, cr0, cr5, {0}
     f78:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     f7c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     f80:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
     f84:	010f0000 	mrseq	r0, CPSR
     f88:	01134901 	tsteq	r3, r1, lsl #18
     f8c:	10000013 	andne	r0, r0, r3, lsl r0
     f90:	13490021 	movtne	r0, #36897	; 0x9021
     f94:	00000b2f 	andeq	r0, r0, pc, lsr #22
     f98:	49002111 	stmdbmi	r0, {r0, r4, r8, sp}
     f9c:	00052f13 	andeq	r2, r5, r3, lsl pc
     fa0:	00341200 	eorseq	r1, r4, r0, lsl #4
     fa4:	0b3a0e03 	bleq	e847b8 <__Main_Stack_Size+0xe843b8>
     fa8:	1349053b 	movtne	r0, #38203	; 0x953b
     fac:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     fb0:	34130000 	ldrcc	r0, [r3], #-0
     fb4:	3a0e0300 	bcc	381bbc <__Main_Stack_Size+0x3817bc>
     fb8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     fbc:	3c193f13 	ldccc	15, cr3, [r9], {19}
     fc0:	14000019 	strne	r0, [r0], #-25	; 0xffffffe7
     fc4:	0b0b0113 	bleq	2c1418 <__Main_Stack_Size+0x2c1018>
     fc8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     fcc:	00001301 	andeq	r1, r0, r1, lsl #6
     fd0:	03000d15 	movweq	r0, #3349	; 0xd15
     fd4:	3b0b3a08 	blcc	2cf7fc <__Main_Stack_Size+0x2cf3fc>
     fd8:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
     fdc:	1600000b 	strne	r0, [r0], -fp
     fe0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     fe4:	0b3b0b3a 	bleq	ec3cd4 <__Main_Stack_Size+0xec38d4>
     fe8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     fec:	2e170000 	cdpcs	0, 1, cr0, cr7, cr0, {0}
     ff0:	03193f01 	tsteq	r9, #1, 30
     ff4:	3b0b3a0e 	blcc	2cf834 <__Main_Stack_Size+0x2cf434>
     ff8:	1119270b 	tstne	r9, fp, lsl #14
     ffc:	40061201 	andmi	r1, r6, r1, lsl #4
    1000:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
    1004:	00001301 	andeq	r1, r0, r1, lsl #6
    1008:	03003418 	movweq	r3, #1048	; 0x418
    100c:	3b0b3a0e 	blcc	2cf84c <__Main_Stack_Size+0x2cf44c>
    1010:	1c13490b 			; <UNDEFINED> instruction: 0x1c13490b
    1014:	19000006 	stmdbne	r0, {r1, r2}
    1018:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    101c:	0b3b0b3a 	bleq	ec3d0c <__Main_Stack_Size+0xec390c>
    1020:	051c1349 	ldreq	r1, [ip, #-841]	; 0xfffffcb7
    1024:	341a0000 	ldrcc	r0, [sl], #-0
    1028:	3a0e0300 	bcc	381c30 <__Main_Stack_Size+0x381830>
    102c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1030:	000b1c13 	andeq	r1, fp, r3, lsl ip
    1034:	011d1b00 	tsteq	sp, r0, lsl #22
    1038:	01521331 	cmpeq	r2, r1, lsr r3
    103c:	0b581755 	bleq	1606d98 <__Main_Stack_Size+0x1606998>
    1040:	00000b59 	andeq	r0, r0, r9, asr fp
    1044:	3100051c 	tstcc	r0, ip, lsl r5
    1048:	00170213 	andseq	r0, r7, r3, lsl r2
    104c:	00051d00 	andeq	r1, r5, r0, lsl #26
    1050:	0b3a0803 	bleq	e83064 <__Main_Stack_Size+0xe82c64>
    1054:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    1058:	00001702 	andeq	r1, r0, r2, lsl #14
    105c:	31010b1e 	tstcc	r1, lr, lsl fp
    1060:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
    1064:	1f000006 	svcne	0x00000006
    1068:	0b0b000f 	bleq	2c10ac <__Main_Stack_Size+0x2c0cac>
    106c:	00001349 	andeq	r1, r0, r9, asr #6
    1070:	3f012e20 	svccc	0x00012e20
    1074:	3a0e0319 	bcc	381ce0 <__Main_Stack_Size+0x3818e0>
    1078:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
    107c:	010b2019 	tsteq	fp, r9, lsl r0
    1080:	21000013 	tstcs	r0, r3, lsl r0
    1084:	08030005 	stmdaeq	r3, {r0, r2}
    1088:	0b3b0b3a 	bleq	ec3d78 <__Main_Stack_Size+0xec3978>
    108c:	00001349 	andeq	r1, r0, r9, asr #6
    1090:	3f002e22 	svccc	0x00002e22
    1094:	3a0e0319 	bcc	381d00 <__Main_Stack_Size+0x381900>
    1098:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
    109c:	11134919 	tstne	r3, r9, lsl r9
    10a0:	40061201 	andmi	r1, r6, r1, lsl #4
    10a4:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
    10a8:	2e230000 	cdpcs	0, 2, cr0, cr3, cr0, {0}
    10ac:	03193f01 	tsteq	r9, #1, 30
    10b0:	3b0b3a0e 	blcc	2cf8f0 <__Main_Stack_Size+0x2cf4f0>
    10b4:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
    10b8:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
    10bc:	97184006 	ldrls	r4, [r8, -r6]
    10c0:	13011942 	movwne	r1, #6466	; 0x1942
    10c4:	34240000 	strtcc	r0, [r4], #-0
    10c8:	3a080300 	bcc	201cd0 <__Main_Stack_Size+0x2018d0>
    10cc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    10d0:	00180213 	andseq	r0, r8, r3, lsl r2
    10d4:	002e2500 	eoreq	r2, lr, r0, lsl #10
    10d8:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
    10dc:	0b3b0b3a 	bleq	ec3dcc <__Main_Stack_Size+0xec39cc>
    10e0:	01111927 	tsteq	r1, r7, lsr #18
    10e4:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
    10e8:	00194297 	mulseq	r9, r7, r2
    10ec:	012e2600 			; <UNDEFINED> instruction: 0x012e2600
    10f0:	0b3a0e03 	bleq	e84904 <__Main_Stack_Size+0xe84504>
    10f4:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
    10f8:	13010b20 	movwne	r0, #6944	; 0x1b20
    10fc:	05270000 	streq	r0, [r7, #-0]!
    1100:	3a0e0300 	bcc	381d08 <__Main_Stack_Size+0x381908>
    1104:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    1108:	28000013 	stmdacs	r0, {r0, r1, r4}
    110c:	1331012e 	teqne	r1, #-2147483637	; 0x8000000b
    1110:	06120111 			; <UNDEFINED> instruction: 0x06120111
    1114:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
    1118:	29000019 	stmdbcs	r0, {r0, r3, r4}
    111c:	13310005 	teqne	r1, #5
    1120:	00001802 	andeq	r1, r0, r2, lsl #16
    1124:	31010b2a 	tstcc	r1, sl, lsr #22
    1128:	00175513 	andseq	r5, r7, r3, lsl r5
    112c:	11010000 	mrsne	r0, (UNDEF: 1)
    1130:	130e2501 	movwne	r2, #58625	; 0xe501
    1134:	1b0e030b 	blne	381d68 <__Main_Stack_Size+0x381968>
    1138:	1117550e 	tstne	r7, lr, lsl #10
    113c:	00171001 	andseq	r1, r7, r1
    1140:	00240200 	eoreq	r0, r4, r0, lsl #4
    1144:	0b3e0b0b 	bleq	f83d78 <__Main_Stack_Size+0xf83978>
    1148:	00000e03 	andeq	r0, r0, r3, lsl #28
    114c:	03001603 	movweq	r1, #1539	; 0x603
    1150:	3b0b3a0e 	blcc	2cf990 <__Main_Stack_Size+0x2cf590>
    1154:	0013490b 	andseq	r4, r3, fp, lsl #18
    1158:	00350400 	eorseq	r0, r5, r0, lsl #8
    115c:	00001349 	andeq	r1, r0, r9, asr #6
    1160:	0b002405 	bleq	a17c <__Main_Stack_Size+0x9d7c>
    1164:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1168:	06000008 	streq	r0, [r0], -r8
    116c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    1170:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1174:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
    1178:	0000193c 	andeq	r1, r0, ip, lsr r9
    117c:	03003407 	movweq	r3, #1031	; 0x407
    1180:	3b0b3a0e 	blcc	2cf9c0 <__Main_Stack_Size+0x2cf5c0>
    1184:	3f13490b 	svccc	0x0013490b
    1188:	00193c19 	andseq	r3, r9, r9, lsl ip
    118c:	01130800 	tsteq	r3, r0, lsl #16
    1190:	0b3a0b0b 	bleq	e83dc4 <__Main_Stack_Size+0xe839c4>
    1194:	1301053b 	movwne	r0, #5435	; 0x153b
    1198:	0d090000 	stceq	0, cr0, [r9, #-0]
    119c:	3a080300 	bcc	201da4 <__Main_Stack_Size+0x2019a4>
    11a0:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    11a4:	000b3813 	andeq	r3, fp, r3, lsl r8
    11a8:	000d0a00 	andeq	r0, sp, r0, lsl #20
    11ac:	0b3a0e03 	bleq	e849c0 <__Main_Stack_Size+0xe845c0>
    11b0:	1349053b 	movtne	r0, #38203	; 0x953b
    11b4:	00000b38 	andeq	r0, r0, r8, lsr fp
    11b8:	0300160b 	movweq	r1, #1547	; 0x60b
    11bc:	3b0b3a0e 	blcc	2cf9fc <__Main_Stack_Size+0x2cf5fc>
    11c0:	00134905 	andseq	r4, r3, r5, lsl #18
    11c4:	01170c00 	tsteq	r7, r0, lsl #24
    11c8:	0b3a0b0b 	bleq	e83dfc <__Main_Stack_Size+0xe839fc>
    11cc:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    11d0:	0d0d0000 	stceq	0, cr0, [sp, #-0]
    11d4:	3a0e0300 	bcc	381ddc <__Main_Stack_Size+0x3819dc>
    11d8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    11dc:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
    11e0:	13490101 	movtne	r0, #37121	; 0x9101
    11e4:	00001301 	andeq	r1, r0, r1, lsl #6
    11e8:	4900210f 	stmdbmi	r0, {r0, r1, r2, r3, r8, sp}
    11ec:	000b2f13 	andeq	r2, fp, r3, lsl pc
    11f0:	01131000 	tsteq	r3, r0
    11f4:	0b3a0b0b 	bleq	e83e28 <__Main_Stack_Size+0xe83a28>
    11f8:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    11fc:	0d110000 	ldceq	0, cr0, [r1, #-0]
    1200:	3a0e0300 	bcc	381e08 <__Main_Stack_Size+0x381a08>
    1204:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1208:	000b3813 	andeq	r3, fp, r3, lsl r8
    120c:	000f1200 	andeq	r1, pc, r0, lsl #4
    1210:	00000b0b 	andeq	r0, r0, fp, lsl #22
    1214:	0b000f13 	bleq	4e68 <__Main_Stack_Size+0x4a68>
    1218:	0013490b 	andseq	r4, r3, fp, lsl #18
    121c:	00261400 	eoreq	r1, r6, r0, lsl #8
    1220:	00001349 	andeq	r1, r0, r9, asr #6
    1224:	03011315 	movweq	r1, #4885	; 0x1315
    1228:	3a0b0b0e 	bcc	2c3e68 <__Main_Stack_Size+0x2c3a68>
    122c:	010b3b0b 	tsteq	fp, fp, lsl #22
    1230:	16000013 			; <UNDEFINED> instruction: 0x16000013
    1234:	0803000d 	stmdaeq	r3, {r0, r2, r3}
    1238:	0b3b0b3a 	bleq	ec3f28 <__Main_Stack_Size+0xec3b28>
    123c:	0b381349 	bleq	e05f68 <__Main_Stack_Size+0xe05b68>
    1240:	13170000 	tstne	r7, #0
    1244:	0b0e0301 	bleq	381e50 <__Main_Stack_Size+0x381a50>
    1248:	3b0b3a05 	blcc	2cfa64 <__Main_Stack_Size+0x2cf664>
    124c:	0013010b 	andseq	r0, r3, fp, lsl #2
    1250:	000d1800 	andeq	r1, sp, r0, lsl #16
    1254:	0b3a0e03 	bleq	e84a68 <__Main_Stack_Size+0xe84668>
    1258:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    125c:	00000538 	andeq	r0, r0, r8, lsr r5
    1260:	27001519 	smladcs	r0, r9, r5, r1
    1264:	1a000019 	bne	12d0 <__Main_Stack_Size+0xed0>
    1268:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
    126c:	13011349 	movwne	r1, #4937	; 0x1349
    1270:	051b0000 	ldreq	r0, [fp, #-0]
    1274:	00134900 	andseq	r4, r3, r0, lsl #18
    1278:	01131c00 	tsteq	r3, r0, lsl #24
    127c:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
    1280:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1284:	00001301 	andeq	r1, r0, r1, lsl #6
    1288:	03000d1d 	movweq	r0, #3357	; 0xd1d
    128c:	3b0b3a0e 	blcc	2cfacc <__Main_Stack_Size+0x2cf6cc>
    1290:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
    1294:	1e000005 	cdpne	0, 0, cr0, cr0, cr5, {0}
    1298:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    129c:	0b3a0b0b 	bleq	e83ed0 <__Main_Stack_Size+0xe83ad0>
    12a0:	1301053b 	movwne	r0, #5435	; 0x153b
    12a4:	171f0000 	ldrne	r0, [pc, -r0]
    12a8:	3a0b0b01 	bcc	2c3eb4 <__Main_Stack_Size+0x2c3ab4>
    12ac:	01053b0b 	tsteq	r5, fp, lsl #22
    12b0:	20000013 	andcs	r0, r0, r3, lsl r0
    12b4:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    12b8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    12bc:	00001349 	andeq	r1, r0, r9, asr #6
    12c0:	03001321 	movweq	r1, #801	; 0x321
    12c4:	00193c0e 	andseq	r3, r9, lr, lsl #24
    12c8:	01152200 	tsteq	r5, r0, lsl #4
    12cc:	13011927 	movwne	r1, #6439	; 0x1927
    12d0:	34230000 	strtcc	r0, [r3], #-0
    12d4:	3a134700 	bcc	4d2edc <__Main_Stack_Size+0x4d2adc>
    12d8:	020b3b0b 	andeq	r3, fp, #11264	; 0x2c00
    12dc:	24000018 	strcs	r0, [r0], #-24	; 0xffffffe8
    12e0:	0e03012e 	adfeqsp	f0, f3, #0.5
    12e4:	0b3b0b3a 	bleq	ec3fd4 <__Main_Stack_Size+0xec3bd4>
    12e8:	0b201927 	bleq	80778c <__Main_Stack_Size+0x80738c>
    12ec:	00001301 	andeq	r1, r0, r1, lsl #6
    12f0:	03000525 	movweq	r0, #1317	; 0x525
    12f4:	3b0b3a0e 	blcc	2cfb34 <__Main_Stack_Size+0x2cf734>
    12f8:	0013490b 	andseq	r4, r3, fp, lsl #18
    12fc:	00342600 	eorseq	r2, r4, r0, lsl #12
    1300:	0b3a0803 	bleq	e83314 <__Main_Stack_Size+0xe82f14>
    1304:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    1308:	2e270000 	cdpcs	0, 2, cr0, cr7, cr0, {0}
    130c:	03193f01 	tsteq	r9, #1, 30
    1310:	3b0b3a0e 	blcc	2cfb50 <__Main_Stack_Size+0x2cf750>
    1314:	1119270b 	tstne	r9, fp, lsl #14
    1318:	40061201 	andmi	r1, r6, r1, lsl #4
    131c:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
    1320:	00001301 	andeq	r1, r0, r1, lsl #6
    1324:	03000528 	movweq	r0, #1320	; 0x528
    1328:	3b0b3a0e 	blcc	2cfb68 <__Main_Stack_Size+0x2cf768>
    132c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    1330:	29000017 	stmdbcs	r0, {r0, r1, r2, r4}
    1334:	08030005 	stmdaeq	r3, {r0, r2}
    1338:	0b3b0b3a 	bleq	ec4028 <__Main_Stack_Size+0xec3c28>
    133c:	17021349 	strne	r1, [r2, -r9, asr #6]
    1340:	342a0000 	strtcc	r0, [sl], #-0
    1344:	3a0e0300 	bcc	381f4c <__Main_Stack_Size+0x381b4c>
    1348:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    134c:	00180213 	andseq	r0, r8, r3, lsl r2
    1350:	011d2b00 	tsteq	sp, r0, lsl #22
    1354:	01111331 	tsteq	r1, r1, lsr r3
    1358:	0b580612 	bleq	1602ba8 <__Main_Stack_Size+0x16027a8>
    135c:	13010b59 	movwne	r0, #7001	; 0x1b59
    1360:	052c0000 	streq	r0, [ip, #-0]!
    1364:	02133100 	andseq	r3, r3, #0, 2
    1368:	2d000018 	stccs	0, cr0, [r0, #-96]	; 0xffffffa0
    136c:	13310005 	teqne	r1, #5
    1370:	0b2e0000 	bleq	b81378 <__Main_Stack_Size+0xb80f78>
    1374:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
    1378:	2f000006 	svccs	0x00000006
    137c:	13310034 	teqne	r1, #52	; 0x34
    1380:	00001702 	andeq	r1, r0, r2, lsl #14
    1384:	01828930 	orreq	r8, r2, r0, lsr r9
    1388:	31011101 	tstcc	r1, r1, lsl #2
    138c:	00130113 	andseq	r0, r3, r3, lsl r1
    1390:	828a3100 	addhi	r3, sl, #0, 2
    1394:	18020001 	stmdane	r2, {r0}
    1398:	00184291 	mulseq	r8, r1, r2
    139c:	82893200 	addhi	r3, r9, #0, 4
    13a0:	01110101 	tsteq	r1, r1, lsl #2
    13a4:	00001331 	andeq	r1, r0, r1, lsr r3
    13a8:	03003433 	movweq	r3, #1075	; 0x433
    13ac:	3b0b3a08 	blcc	2cfbd4 <__Main_Stack_Size+0x2cf7d4>
    13b0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    13b4:	34000018 	strcc	r0, [r0], #-24	; 0xffffffe8
    13b8:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
    13bc:	0e6e193c 			; <UNDEFINED> instruction: 0x0e6e193c
    13c0:	0b3a0e03 	bleq	e84bd4 <__Main_Stack_Size+0xe847d4>
    13c4:	00000b3b 	andeq	r0, r0, fp, lsr fp
    13c8:	3f002e35 	svccc	0x00002e35
    13cc:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
    13d0:	3a0e030e 	bcc	382010 <__Main_Stack_Size+0x381c10>
    13d4:	00053b0b 	andeq	r3, r5, fp, lsl #22
    13d8:	11010000 	mrsne	r0, (UNDEF: 1)
    13dc:	130e2501 	movwne	r2, #58625	; 0xe501
    13e0:	1b0e030b 	blne	382014 <__Main_Stack_Size+0x381c14>
    13e4:	1117550e 	tstne	r7, lr, lsl #10
    13e8:	00171001 	andseq	r1, r7, r1
    13ec:	01040200 	mrseq	r0, R12_usr
    13f0:	0b3e0e03 	bleq	f84c04 <__Main_Stack_Size+0xf84804>
    13f4:	13490b0b 	movtne	r0, #39691	; 0x9b0b
    13f8:	0b3b0b3a 	bleq	ec40e8 <__Main_Stack_Size+0xec3ce8>
    13fc:	00001301 	andeq	r1, r0, r1, lsl #6
    1400:	03002803 	movweq	r2, #2051	; 0x803
    1404:	000d1c0e 	andeq	r1, sp, lr, lsl #24
    1408:	00280400 	eoreq	r0, r8, r0, lsl #8
    140c:	0b1c0e03 	bleq	704c20 <__Main_Stack_Size+0x704820>
    1410:	24050000 	strcs	r0, [r5], #-0
    1414:	3e0b0b00 	vmlacc.f64	d0, d11, d0
    1418:	000e030b 	andeq	r0, lr, fp, lsl #6
    141c:	00160600 	andseq	r0, r6, r0, lsl #12
    1420:	0b3a0e03 	bleq	e84c34 <__Main_Stack_Size+0xe84834>
    1424:	1349053b 	movtne	r0, #38203	; 0x953b
    1428:	16070000 	strne	r0, [r7], -r0
    142c:	3a0e0300 	bcc	382034 <__Main_Stack_Size+0x381c34>
    1430:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1434:	08000013 	stmdaeq	r0, {r0, r1, r4}
    1438:	13490035 	movtne	r0, #36917	; 0x9035
    143c:	26090000 	strcs	r0, [r9], -r0
    1440:	00134900 	andseq	r4, r3, r0, lsl #18
    1444:	00240a00 	eoreq	r0, r4, r0, lsl #20
    1448:	0b3e0b0b 	bleq	f8407c <__Main_Stack_Size+0xf83c7c>
    144c:	00000803 	andeq	r0, r0, r3, lsl #16
    1450:	0b01130b 	bleq	46084 <__Main_Stack_Size+0x45c84>
    1454:	3b0b3a05 	blcc	2cfc70 <__Main_Stack_Size+0x2cf870>
    1458:	00130105 	andseq	r0, r3, r5, lsl #2
    145c:	000d0c00 	andeq	r0, sp, r0, lsl #24
    1460:	0b3a0e03 	bleq	e84c74 <__Main_Stack_Size+0xe84874>
    1464:	1349053b 	movtne	r0, #38203	; 0x953b
    1468:	00000b38 	andeq	r0, r0, r8, lsr fp
    146c:	03000d0d 	movweq	r0, #3341	; 0xd0d
    1470:	3b0b3a0e 	blcc	2cfcb0 <__Main_Stack_Size+0x2cf8b0>
    1474:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
    1478:	0e000005 	cdpeq	0, 0, cr0, cr0, cr5, {0}
    147c:	0803000d 	stmdaeq	r3, {r0, r2, r3}
    1480:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1484:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
    1488:	010f0000 	mrseq	r0, CPSR
    148c:	01134901 	tsteq	r3, r1, lsl #18
    1490:	10000013 	andne	r0, r0, r3, lsl r0
    1494:	13490021 	movtne	r0, #36897	; 0x9021
    1498:	00000b2f 	andeq	r0, r0, pc, lsr #22
    149c:	49002111 	stmdbmi	r0, {r0, r4, r8, sp}
    14a0:	00052f13 	andeq	r2, r5, r3, lsl pc
    14a4:	01131200 	tsteq	r3, r0, lsl #4
    14a8:	0b3a0b0b 	bleq	e840dc <__Main_Stack_Size+0xe83cdc>
    14ac:	1301053b 	movwne	r0, #5435	; 0x153b
    14b0:	0d130000 	ldceq	0, cr0, [r3, #-0]
    14b4:	3a080300 	bcc	2020bc <__Main_Stack_Size+0x201cbc>
    14b8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    14bc:	000b3813 	andeq	r3, fp, r3, lsl r8
    14c0:	00341400 	eorseq	r1, r4, r0, lsl #8
    14c4:	0b3a0e03 	bleq	e84cd8 <__Main_Stack_Size+0xe848d8>
    14c8:	1349053b 	movtne	r0, #38203	; 0x953b
    14cc:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
    14d0:	34150000 	ldrcc	r0, [r5], #-0
    14d4:	3a0e0300 	bcc	3820dc <__Main_Stack_Size+0x381cdc>
    14d8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    14dc:	3c193f13 	ldccc	15, cr3, [r9], {19}
    14e0:	16000019 			; <UNDEFINED> instruction: 0x16000019
    14e4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    14e8:	0b3a0e03 	bleq	e84cfc <__Main_Stack_Size+0xe848fc>
    14ec:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
    14f0:	06120111 			; <UNDEFINED> instruction: 0x06120111
    14f4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
    14f8:	00130119 	andseq	r0, r3, r9, lsl r1
    14fc:	011d1700 	tsteq	sp, r0, lsl #14
    1500:	01521331 	cmpeq	r2, r1, lsr r3
    1504:	0b581755 	bleq	1607260 <__Main_Stack_Size+0x1606e60>
    1508:	13010b59 	movwne	r0, #7001	; 0x1b59
    150c:	05180000 	ldreq	r0, [r8, #-0]
    1510:	02133100 	andseq	r3, r3, #0, 2
    1514:	19000017 	stmdbne	r0, {r0, r1, r2, r4}
    1518:	1331011d 	teqne	r1, #1073741831	; 0x40000007
    151c:	17550152 			; <UNDEFINED> instruction: 0x17550152
    1520:	0b590b58 	bleq	1644288 <__Main_Stack_Size+0x1643e88>
    1524:	1d1a0000 	ldcne	0, cr0, [sl, #-0]
    1528:	52133101 	andspl	r3, r3, #1073741824	; 0x40000000
    152c:	58175501 	ldmdapl	r7, {r0, r8, sl, ip, lr}
    1530:	0005590b 	andeq	r5, r5, fp, lsl #18
    1534:	012e1b00 			; <UNDEFINED> instruction: 0x012e1b00
    1538:	0b3a0e03 	bleq	e84d4c <__Main_Stack_Size+0xe8494c>
    153c:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
    1540:	0b201349 	bleq	80626c <__Main_Stack_Size+0x805e6c>
    1544:	00001301 	andeq	r1, r0, r1, lsl #6
    1548:	0300051c 	movweq	r0, #1308	; 0x51c
    154c:	3b0b3a0e 	blcc	2cfd8c <__Main_Stack_Size+0x2cf98c>
    1550:	00134905 	andseq	r4, r3, r5, lsl #18
    1554:	012e1d00 			; <UNDEFINED> instruction: 0x012e1d00
    1558:	0b3a0e03 	bleq	e84d6c <__Main_Stack_Size+0xe8496c>
    155c:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
    1560:	13010b20 	movwne	r0, #6944	; 0x1b20
    1564:	2e1e0000 	cdpcs	0, 1, cr0, cr14, cr0, {0}
    1568:	3a0e0301 	bcc	382174 <__Main_Stack_Size+0x381d74>
    156c:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
    1570:	000b2019 	andeq	r2, fp, r9, lsl r0
    1574:	11010000 	mrsne	r0, (UNDEF: 1)
    1578:	130e2501 	movwne	r2, #58625	; 0xe501
    157c:	1b0e030b 	blne	3821b0 <__Main_Stack_Size+0x381db0>
    1580:	1117550e 	tstne	r7, lr, lsl #10
    1584:	00171001 	andseq	r1, r7, r1
    1588:	00240200 	eoreq	r0, r4, r0, lsl #4
    158c:	0b3e0b0b 	bleq	f841c0 <__Main_Stack_Size+0xf83dc0>
    1590:	00000e03 	andeq	r0, r0, r3, lsl #28
    1594:	03001603 	movweq	r1, #1539	; 0x603
    1598:	3b0b3a0e 	blcc	2cfdd8 <__Main_Stack_Size+0x2cf9d8>
    159c:	0013490b 	andseq	r4, r3, fp, lsl #18
    15a0:	00350400 	eorseq	r0, r5, r0, lsl #8
    15a4:	00001349 	andeq	r1, r0, r9, asr #6
    15a8:	0b002405 	bleq	a5c4 <__Main_Stack_Size+0xa1c4>
    15ac:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    15b0:	06000008 	streq	r0, [r0], -r8
    15b4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    15b8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    15bc:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
    15c0:	0000193c 	andeq	r1, r0, ip, lsr r9
    15c4:	03003407 	movweq	r3, #1031	; 0x407
    15c8:	3b0b3a0e 	blcc	2cfe08 <__Main_Stack_Size+0x2cfa08>
    15cc:	3f13490b 	svccc	0x0013490b
    15d0:	00193c19 	andseq	r3, r9, r9, lsl ip
    15d4:	00160800 	andseq	r0, r6, r0, lsl #16
    15d8:	0b3a0e03 	bleq	e84dec <__Main_Stack_Size+0xe849ec>
    15dc:	1349053b 	movtne	r0, #38203	; 0x953b
    15e0:	17090000 	strne	r0, [r9, -r0]
    15e4:	3a0b0b01 	bcc	2c41f0 <__Main_Stack_Size+0x2c3df0>
    15e8:	010b3b0b 	tsteq	fp, fp, lsl #22
    15ec:	0a000013 	beq	1640 <__Main_Stack_Size+0x1240>
    15f0:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    15f4:	0b3b0b3a 	bleq	ec42e4 <__Main_Stack_Size+0xec3ee4>
    15f8:	00001349 	andeq	r1, r0, r9, asr #6
    15fc:	4901010b 	stmdbmi	r1, {r0, r1, r3, r8}
    1600:	00130113 	andseq	r0, r3, r3, lsl r1
    1604:	00210c00 	eoreq	r0, r1, r0, lsl #24
    1608:	0b2f1349 	bleq	bc6334 <__Main_Stack_Size+0xbc5f34>
    160c:	130d0000 	movwne	r0, #53248	; 0xd000
    1610:	3a0b0b01 	bcc	2c421c <__Main_Stack_Size+0x2c3e1c>
    1614:	010b3b0b 	tsteq	fp, fp, lsl #22
    1618:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
    161c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    1620:	0b3b0b3a 	bleq	ec4310 <__Main_Stack_Size+0xec3f10>
    1624:	0b381349 	bleq	e06350 <__Main_Stack_Size+0xe05f50>
    1628:	0f0f0000 	svceq	0x000f0000
    162c:	000b0b00 	andeq	r0, fp, r0, lsl #22
    1630:	000f1000 	andeq	r1, pc, r0
    1634:	13490b0b 	movtne	r0, #39691	; 0x9b0b
    1638:	26110000 	ldrcs	r0, [r1], -r0
    163c:	00134900 	andseq	r4, r3, r0, lsl #18
    1640:	01131200 	tsteq	r3, r0, lsl #4
    1644:	0b0b0e03 	bleq	2c4e58 <__Main_Stack_Size+0x2c4a58>
    1648:	0b3b0b3a 	bleq	ec4338 <__Main_Stack_Size+0xec3f38>
    164c:	00001301 	andeq	r1, r0, r1, lsl #6
    1650:	03000d13 	movweq	r0, #3347	; 0xd13
    1654:	3b0b3a08 	blcc	2cfe7c <__Main_Stack_Size+0x2cfa7c>
    1658:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    165c:	1400000b 	strne	r0, [r0], #-11
    1660:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    1664:	0b3a050b 	bleq	e82a98 <__Main_Stack_Size+0xe82698>
    1668:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    166c:	0d150000 	ldceq	0, cr0, [r5, #-0]
    1670:	3a0e0300 	bcc	382278 <__Main_Stack_Size+0x381e78>
    1674:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1678:	00053813 	andeq	r3, r5, r3, lsl r8
    167c:	00151600 	andseq	r1, r5, r0, lsl #12
    1680:	00001927 	andeq	r1, r0, r7, lsr #18
    1684:	27011517 	smladcs	r1, r7, r5, r1
    1688:	01134919 	tsteq	r3, r9, lsl r9
    168c:	18000013 	stmdane	r0, {r0, r1, r4}
    1690:	13490005 	movtne	r0, #36869	; 0x9005
    1694:	13190000 	tstne	r9, #0
    1698:	0b0e0301 	bleq	3822a4 <__Main_Stack_Size+0x381ea4>
    169c:	3b0b3a05 	blcc	2cfeb8 <__Main_Stack_Size+0x2cfab8>
    16a0:	00130105 	andseq	r0, r3, r5, lsl #2
    16a4:	000d1a00 	andeq	r1, sp, r0, lsl #20
    16a8:	0b3a0e03 	bleq	e84ebc <__Main_Stack_Size+0xe84abc>
    16ac:	1349053b 	movtne	r0, #38203	; 0x953b
    16b0:	00000b38 	andeq	r0, r0, r8, lsr fp
    16b4:	03000d1b 	movweq	r0, #3355	; 0xd1b
    16b8:	3b0b3a0e 	blcc	2cfef8 <__Main_Stack_Size+0x2cfaf8>
    16bc:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
    16c0:	1c000005 	stcne	0, cr0, [r0], {5}
    16c4:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    16c8:	0b3a0b0b 	bleq	e842fc <__Main_Stack_Size+0xe83efc>
    16cc:	1301053b 	movwne	r0, #5435	; 0x153b
    16d0:	131d0000 	tstne	sp, #0
    16d4:	3a0b0b01 	bcc	2c42e0 <__Main_Stack_Size+0x2c3ee0>
    16d8:	01053b0b 	tsteq	r5, fp, lsl #22
    16dc:	1e000013 	mcrne	0, 0, r0, cr0, cr3, {0}
    16e0:	0b0b0117 	bleq	2c1b44 <__Main_Stack_Size+0x2c1744>
    16e4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    16e8:	00001301 	andeq	r1, r0, r1, lsl #6
    16ec:	03000d1f 	movweq	r0, #3359	; 0xd1f
    16f0:	3b0b3a0e 	blcc	2cff30 <__Main_Stack_Size+0x2cfb30>
    16f4:	00134905 	andseq	r4, r3, r5, lsl #18
    16f8:	00132000 	andseq	r2, r3, r0
    16fc:	193c0e03 	ldmdbne	ip!, {r0, r1, r9, sl, fp}
    1700:	15210000 	strne	r0, [r1, #-0]!
    1704:	01192701 	tsteq	r9, r1, lsl #14
    1708:	22000013 	andcs	r0, r0, #19
    170c:	0e030104 	adfeqs	f0, f3, f4
    1710:	0b0b0b3e 	bleq	2c4410 <__Main_Stack_Size+0x2c4010>
    1714:	0b3a1349 	bleq	e86440 <__Main_Stack_Size+0xe86040>
    1718:	13010b3b 	movwne	r0, #6971	; 0x1b3b
    171c:	28230000 	stmdacs	r3!, {}	; <UNPREDICTABLE>
    1720:	1c0e0300 	stcne	3, cr0, [lr], {-0}
    1724:	2400000b 	strcs	r0, [r0], #-11
    1728:	08030028 	stmdaeq	r3, {r3, r5}
    172c:	00000b1c 	andeq	r0, r0, ip, lsl fp
    1730:	03003425 	movweq	r3, #1061	; 0x425
    1734:	3b0b3a0e 	blcc	2cff74 <__Main_Stack_Size+0x2cfb74>
    1738:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    173c:	26000018 			; <UNDEFINED> instruction: 0x26000018
    1740:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    1744:	0b3a0e03 	bleq	e84f58 <__Main_Stack_Size+0xe84b58>
    1748:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
    174c:	06120111 			; <UNDEFINED> instruction: 0x06120111
    1750:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
    1754:	00130119 	andseq	r0, r3, r9, lsl r1
    1758:	00052700 	andeq	r2, r5, r0, lsl #14
    175c:	0b3a0e03 	bleq	e84f70 <__Main_Stack_Size+0xe84b70>
    1760:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    1764:	00001702 	andeq	r1, r0, r2, lsl #14
    1768:	03000528 	movweq	r0, #1320	; 0x528
    176c:	3b0b3a0e 	blcc	2cffac <__Main_Stack_Size+0x2cfbac>
    1770:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    1774:	29000018 	stmdbcs	r0, {r3, r4}
    1778:	01018289 	smlabbeq	r1, r9, r2, r8
    177c:	13310111 	teqne	r1, #1073741828	; 0x40000004
    1780:	00001301 	andeq	r1, r0, r1, lsl #6
    1784:	01828a2a 	orreq	r8, r2, sl, lsr #20
    1788:	91180200 	tstls	r8, r0, lsl #4
    178c:	00001842 	andeq	r1, r0, r2, asr #16
    1790:	0182892b 	orreq	r8, r2, fp, lsr #18
    1794:	31011101 	tstcc	r1, r1, lsl #2
    1798:	2c000013 	stccs	0, cr0, [r0], {19}
    179c:	08030034 	stmdaeq	r3, {r2, r4, r5}
    17a0:	0b3b0b3a 	bleq	ec4490 <__Main_Stack_Size+0xec4090>
    17a4:	17021349 	strne	r1, [r2, -r9, asr #6]
    17a8:	342d0000 	strtcc	r0, [sp], #-0
    17ac:	3a0e0300 	bcc	3823b4 <__Main_Stack_Size+0x381fb4>
    17b0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    17b4:	00170213 	andseq	r0, r7, r3, lsl r2
    17b8:	001d2e00 	andseq	r2, sp, r0, lsl #28
    17bc:	01111331 	tsteq	r1, r1, lsr r3
    17c0:	0b580612 	bleq	1603010 <__Main_Stack_Size+0x1602c10>
    17c4:	00000b59 	andeq	r0, r0, r9, asr fp
    17c8:	31011d2f 	tstcc	r1, pc, lsr #26
    17cc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
    17d0:	590b5806 	stmdbpl	fp, {r1, r2, fp, ip, lr}
    17d4:	3000000b 	andcc	r0, r0, fp
    17d8:	13310005 	teqne	r1, #5
    17dc:	00001702 	andeq	r1, r0, r2, lsl #14
    17e0:	3f012e31 	svccc	0x00012e31
    17e4:	3a0e0319 	bcc	382450 <__Main_Stack_Size+0x382050>
    17e8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
    17ec:	010b2019 	tsteq	fp, r9, lsl r0
    17f0:	32000013 	andcc	r0, r0, #19
    17f4:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
    17f8:	0b3b0b3a 	bleq	ec44e8 <__Main_Stack_Size+0xec40e8>
    17fc:	00001349 	andeq	r1, r0, r9, asr #6
    1800:	03000533 	movweq	r0, #1331	; 0x533
    1804:	3b0b3a08 	blcc	2d002c <__Main_Stack_Size+0x2cfc2c>
    1808:	0013490b 	andseq	r4, r3, fp, lsl #18
    180c:	00053400 	andeq	r3, r5, r0, lsl #8
    1810:	0b3a0803 	bleq	e83824 <__Main_Stack_Size+0xe83424>
    1814:	13490b3b 	movtne	r0, #39739	; 0x9b3b
    1818:	00001802 	andeq	r1, r0, r2, lsl #16
    181c:	31011d35 	tstcc	r1, r5, lsr sp
    1820:	55015213 	strpl	r5, [r1, #-531]	; 0xfffffded
    1824:	590b5817 	stmdbpl	fp, {r0, r1, r2, r4, fp, ip, lr}
    1828:	3600000b 	strcc	r0, [r0], -fp
    182c:	0e03002e 	cdpeq	0, 0, cr0, cr3, cr14, {1}
    1830:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1834:	0b201927 	bleq	807cd8 <__Main_Stack_Size+0x8078d8>
    1838:	2e370000 	cdpcs	0, 3, cr0, cr7, cr0, {0}
    183c:	11133101 	tstne	r3, r1, lsl #2
    1840:	40061201 	andmi	r1, r6, r1, lsl #4
    1844:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
    1848:	00001301 	andeq	r1, r0, r1, lsl #6
    184c:	31000538 	tstcc	r0, r8, lsr r5
    1850:	00180213 	andseq	r0, r8, r3, lsl r2
    1854:	002e3900 	eoreq	r3, lr, r0, lsl #18
    1858:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
    185c:	0e030e6e 	cdpeq	14, 0, cr0, cr3, cr14, {3}
    1860:	0b3b0b3a 	bleq	ec4550 <__Main_Stack_Size+0xec4150>
    1864:	Address 0x0000000000001864 is out of bounds.


Disassembly of section .debug_line:

00000000 <.debug_line>:
{
       0:	000000bd 	strheq	r0, [r0], -sp
  _exit (1);
       4:	008b0002 	addeq	r0, fp, r2
       8:	01020000 	mrseq	r0, (UNDEF: 2)
       c:	000d0efb 	strdeq	r0, [sp], -fp
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
      10:	01010101 	tsteq	r1, r1, lsl #2
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
      14:	01000000 	mrseq	r0, (UNDEF: 0)
    *p++ = *from++;
      18:	73010000 	movwvc	r0, #4096	; 0x1000
  while (p < region_end)
      1c:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
		tx_cts = 0;
      20:	31462f6d 	cmpcc	r6, sp, ror #30
		USART2->DR = (uint8_t) c;
      24:	4d5f5830 	ldclmi	8, cr5, [pc, #-192]	; ffffff6c <_estack+0xdfffaf6c>
      28:	752f0044 	strvc	r0, [pc, #-68]!	; ffffffec <_estack+0xdfffafec>
      2c:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; fffffe68 <_estack+0xdfffae68>
      30:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
      34:	612f6363 			; <UNDEFINED> instruction: 0x612f6363
      38:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
      3c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
      40:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
      44:	312e372f 			; <UNDEFINED> instruction: 0x312e372f
      48:	692f302e 	stmdbvs	pc!, {r1, r2, r3, r5, ip, sp}	; <UNPREDICTABLE>
      4c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
      50:	00006564 	andeq	r6, r0, r4, ror #10
      54:	65637865 	strbvs	r7, [r3, #-2149]!	; 0xfffff79b
      58:	6f697470 	svcvs	0x00697470
      5c:	61685f6e 	cmnvs	r8, lr, ror #30
      60:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
      64:	632e7372 			; <UNDEFINED> instruction: 0x632e7372
      68:	00000100 	andeq	r0, r0, r0, lsl #2
      6c:	65637865 	strbvs	r7, [r3, #-2149]!	; 0xfffff79b
      70:	6f697470 	svcvs	0x00697470
      74:	61685f6e 	cmnvs	r8, lr, ror #30
      78:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
      7c:	682e7372 	stmdavs	lr!, {r1, r4, r5, r6, r8, r9, ip, sp, lr}
      80:	00000100 	andeq	r0, r0, r0, lsl #2
      84:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
      88:	672d746e 	strvs	r7, [sp, -lr, ror #8]!
      8c:	682e6363 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, sp, lr}
      90:	00000200 	andeq	r0, r0, r0, lsl #4
      94:	02050000 	andeq	r0, r5, #0
      98:	0800010c 	stmdaeq	r0, {r2, r3, r8}
      9c:	1536131a 	ldrne	r1, [r6, #-794]!	; 0xfffffce6
      a0:	132e0f03 			; <UNDEFINED> instruction: 0x132e0f03
      a4:	179e0d03 	ldrne	r0, [lr, r3, lsl #26]
      a8:	342e3603 	strtcc	r3, [lr], #-1539	; 0xfffff9fd
      ac:	9e0d0313 	mcrls	3, 0, r0, cr13, cr3, {0}
      b0:	03133417 	tsteq	r3, #385875968	; 0x17000000
      b4:	36179e0d 	ldrcc	r9, [r7], -sp, lsl #28
      b8:	16343636 			; <UNDEFINED> instruction: 0x16343636
      bc:	01000a02 	tsteq	r0, r2, lsl #20
      c0:	00012901 	andeq	r2, r1, r1, lsl #18
      c4:	a7000200 	strge	r0, [r0, -r0, lsl #4]
      c8:	02000000 	andeq	r0, r0, #0
      cc:	0d0efb01 	vstreq	d15, [lr, #-4]
      d0:	01010100 	mrseq	r0, (UNDEF: 17)
      d4:	00000001 	andeq	r0, r0, r1
      d8:	01000001 	tsteq	r0, r1
      dc:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
      e0:	462f6d65 	strtmi	r6, [pc], -r5, ror #26
      e4:	5f583031 	svcpl	0x00583031
      e8:	2f00444d 	svccs	0x0000444d
      ec:	2f727375 	svccs	0x00727375
      f0:	2f62696c 	svccs	0x0062696c
      f4:	2f636367 	svccs	0x00636367
      f8:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
      fc:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     100:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     104:	2e372f69 	cdpcs	15, 3, cr2, cr7, cr9, {3}
     108:	2f302e31 	svccs	0x00302e31
     10c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     110:	00656475 	rsbeq	r6, r5, r5, ror r4
     114:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     118:	632f6d65 			; <UNDEFINED> instruction: 0x632f6d65
     11c:	7369736d 	cmnvc	r9, #-1275068415	; 0xb4000001
     120:	79730000 	ldmdbvc	r3!, {}^	; <UNPREDICTABLE>
     124:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
     128:	0100632e 	tsteq	r0, lr, lsr #6
     12c:	74730000 	ldrbtvc	r0, [r3], #-0
     130:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
     134:	6363672d 	cmnvs	r3, #11796480	; 0xb40000
     138:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     13c:	6f630000 	svcvs	0x00630000
     140:	635f6572 	cmpvs	pc, #478150656	; 0x1c800000
     144:	682e336d 	stmdavs	lr!, {r0, r2, r3, r5, r6, r8, r9, ip, sp}
     148:	00000300 	andeq	r0, r0, r0, lsl #6
     14c:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     150:	735f6d65 	cmpvc	pc, #6464	; 0x1940
     154:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
     158:	78303166 	ldmdavc	r0!, {r1, r2, r5, r6, r8, ip, sp}
     15c:	0300682e 	movweq	r6, #2094	; 0x82e
     160:	74730000 	ldrbtvc	r0, [r3], #-0
     164:	6632336d 	ldrtvs	r3, [r2], -sp, ror #6
     168:	2e783031 	mrccs	0, 3, r3, cr8, cr1, {1}
     16c:	00030068 	andeq	r0, r3, r8, rrx
     170:	05000000 	streq	r0, [r0, #-0]
     174:	00082802 	andeq	r2, r8, r2, lsl #16
     178:	00e30308 	rsceq	r0, r3, r8, lsl #6
     17c:	06880301 	streq	r0, [r8], r1, lsl #6
     180:	7a9e0320 	bvc	fe780e08 <_estack+0xde77be08>
     184:	2e5d0320 	cdpcs	3, 5, cr0, cr13, cr0, {1}
     188:	231d1c24 	tstcs	sp, #36, 24	; 0x2400
     18c:	4d694240 	sfmmi	f4, 2, [r9, #-256]!	; 0xffffff00
     190:	034a1303 	movteq	r1, #41731	; 0xa303
     194:	322005e2 	eorcc	r0, r0, #947912704	; 0x38800000
     198:	3d59485f 	ldclcc	8, cr4, [r9, #-380]	; 0xfffffe84
     19c:	23324c3e 	teqcs	r2, #15872	; 0x3e00
     1a0:	3c7a9803 	ldclcc	8, cr9, [sl], #-12
     1a4:	05e9034c 	strbeq	r0, [r9, #844]!	; 0x34c
     1a8:	7803283c 	stmdavc	r3, {r2, r3, r4, r5, fp, sp}
     1ac:	4e4b4d20 	cdpmi	13, 4, cr4, cr11, cr0, {1}
     1b0:	1a033131 	bne	cc67c <__Main_Stack_Size+0xcc27c>
     1b4:	4d4e4c4a 	stclmi	12, cr4, [lr, #-296]	; 0xfffffed8
     1b8:	024d4b4f 	subeq	r4, sp, #80896	; 0x13c00
     1bc:	01010010 	tsteq	r1, r0, lsl r0
     1c0:	2c020500 	cfstr32cs	mvfx0, [r2], {-0}
     1c4:	03080009 	movweq	r0, #32777	; 0x8009
     1c8:	030101c1 	movweq	r0, #4545	; 0x11c1
     1cc:	034c010c 	movteq	r0, #49420	; 0xc10c
     1d0:	23212e0b 			; <UNDEFINED> instruction: 0x23212e0b
     1d4:	03301e30 	teqeq	r0, #48, 28	; 0x300
     1d8:	0342200d 	movteq	r2, #8205	; 0x200d
     1dc:	d8034a5c 	stmdale	r3, {r2, r3, r4, r6, r9, fp, lr}
     1e0:	1e3e2000 	cdpne	0, 3, cr2, cr14, cr0, {0}
     1e4:	45032f3e 	strmi	r2, [r3, #-3902]	; 0xfffff0c2
     1e8:	000e0220 	andeq	r0, lr, r0, lsr #4
     1ec:	00450101 	subeq	r0, r5, r1, lsl #2
     1f0:	00020000 	andeq	r0, r2, r0
     1f4:	0000002f 	andeq	r0, r0, pc, lsr #32
     1f8:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     1fc:	0101000d 	tsteq	r1, sp
     200:	00000101 	andeq	r0, r0, r1, lsl #2
     204:	00000100 	andeq	r0, r0, r0, lsl #2
     208:	73797301 	cmnvc	r9, #67108864	; 0x4000000
     20c:	2f6d6574 	svccs	0x006d6574
     210:	58303146 	ldmdapl	r0!, {r1, r2, r6, r8, ip, sp}
     214:	00444d5f 	subeq	r4, r4, pc, asr sp
     218:	63657600 	cmnvs	r5, #0, 12
     21c:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
     220:	0100632e 	tsteq	r0, lr, lsr #6
     224:	00000000 	andeq	r0, r0, r0
     228:	01800205 	orreq	r0, r0, r5, lsl #4
     22c:	96030800 	strls	r0, [r3], -r0, lsl #16
     230:	01020106 	tsteq	r2, r6, lsl #2
     234:	52010100 	andpl	r0, r1, #0, 2
     238:	02000000 	andeq	r0, r0, #0
     23c:	00002c00 	andeq	r2, r0, r0, lsl #24
     240:	fb010200 	blx	40a4a <__Main_Stack_Size+0x4064a>
     244:	01000d0e 	tsteq	r0, lr, lsl #26
     248:	00010101 	andeq	r0, r1, r1, lsl #2
     24c:	00010000 	andeq	r0, r1, r0
     250:	79730100 	ldmdbvc	r3!, {r8}^
     254:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
     258:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     25c:	0062696c 	rsbeq	r6, r2, ip, ror #18
     260:	78655f00 	stmdavc	r5!, {r8, r9, sl, fp, ip, lr}^
     264:	632e7469 			; <UNDEFINED> instruction: 0x632e7469
     268:	00000100 	andeq	r0, r0, r0, lsl #2
     26c:	02050000 	andeq	r0, r5, #0
     270:	08000988 	stmdaeq	r0, {r3, r7, r8, fp}
     274:	21011103 	tstcs	r1, r3, lsl #2
     278:	01000202 	tsteq	r0, r2, lsl #4
     27c:	02050001 	andeq	r0, r5, #1
     280:	00000000 	andeq	r0, r0, r0
     284:	21011b03 	tstcs	r1, r3, lsl #22
     288:	01000402 	tsteq	r0, r2, lsl #8
     28c:	0000cf01 	andeq	ip, r0, r1, lsl #30
     290:	a5000200 	strge	r0, [r0, #-512]	; 0xfffffe00
     294:	02000000 	andeq	r0, r0, #0
     298:	0d0efb01 	vstreq	d15, [lr, #-4]
     29c:	01010100 	mrseq	r0, (UNDEF: 17)
     2a0:	00000001 	andeq	r0, r0, r1
     2a4:	01000001 	tsteq	r0, r1
     2a8:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     2ac:	6e2f6d65 	cdpvs	13, 2, cr6, cr15, cr5, {3}
     2b0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     2b4:	752f0062 	strvc	r0, [pc, #-98]!	; 25a <_Minimum_Stack_Size+0x15a>
     2b8:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; f4 <_Minimum_Stack_Size-0xc>
     2bc:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     2c0:	612f6363 			; <UNDEFINED> instruction: 0x612f6363
     2c4:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     2c8:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     2cc:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     2d0:	312e372f 			; <UNDEFINED> instruction: 0x312e372f
     2d4:	692f302e 	stmdbvs	pc!, {r1, r2, r3, r5, ip, sp}	; <UNPREDICTABLE>
     2d8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     2dc:	73006564 	movwvc	r6, #1380	; 0x564
     2e0:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
     2e4:	6d632f6d 	stclvs	15, cr2, [r3, #-436]!	; 0xfffffe4c
     2e8:	00736973 	rsbseq	r6, r3, r3, ror r9
     2ec:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
     2f0:	61697469 	cmnvs	r9, r9, ror #8
     2f4:	657a696c 	ldrbvs	r6, [sl, #-2412]!	; 0xfffff694
     2f8:	7261685f 	rsbvc	r6, r1, #6225920	; 0x5f0000
     2fc:	72617764 	rsbvc	r7, r1, #100, 14	; 0x1900000
     300:	00632e65 	rsbeq	r2, r3, r5, ror #28
     304:	73000001 	movwvc	r0, #1
     308:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
     30c:	63672d74 	cmnvs	r7, #116, 26	; 0x1d00
     310:	00682e63 	rsbeq	r2, r8, r3, ror #28
     314:	63000002 	movwvs	r0, #2
     318:	5f65726f 	svcpl	0x0065726f
     31c:	2e336d63 	cdpcs	13, 3, cr6, cr3, cr3, {3}
     320:	00030068 	andeq	r0, r3, r8, rrx
     324:	73797300 	cmnvc	r9, #0, 6
     328:	5f6d6574 	svcpl	0x006d6574
     32c:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
     330:	30316632 	eorscc	r6, r1, r2, lsr r6
     334:	00682e78 	rsbeq	r2, r8, r8, ror lr
     338:	00000003 	andeq	r0, r0, r3
     33c:	90020500 	andls	r0, r2, r0, lsl #10
     340:	03080009 	movweq	r0, #32777	; 0x8009
     344:	33220119 			; <UNDEFINED> instruction: 0x33220119
     348:	023c1103 	eorseq	r1, ip, #-1073741824	; 0xc0000000
     34c:	01010006 	tsteq	r1, r6
     350:	a8020500 	stmdage	r2, {r8, sl}
     354:	03080009 	movweq	r0, #32777	; 0x8009
     358:	0215013c 	andseq	r0, r5, #60, 2
     35c:	01010002 	tsteq	r1, r2
     360:	000000da 	ldrdeq	r0, [r0], -sl
     364:	00b20002 	adcseq	r0, r2, r2
     368:	01020000 	mrseq	r0, (UNDEF: 2)
     36c:	000d0efb 	strdeq	r0, [sp], -fp
     370:	01010101 	tsteq	r1, r1, lsl #2
     374:	01000000 	mrseq	r0, (UNDEF: 0)
     378:	73010000 	movwvc	r0, #4096	; 0x1000
     37c:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
     380:	656e2f6d 	strbvs	r2, [lr, #-3949]!	; 0xfffff093
     384:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     388:	73797300 	cmnvc	r9, #0, 6
     38c:	2f6d6574 	svccs	0x006d6574
     390:	69736d63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, sl, fp, sp, lr}^
     394:	752f0073 	strvc	r0, [pc, #-115]!	; 329 <_Minimum_Stack_Size+0x229>
     398:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; 1d4 <_Minimum_Stack_Size+0xd4>
     39c:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     3a0:	612f6363 			; <UNDEFINED> instruction: 0x612f6363
     3a4:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     3a8:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     3ac:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     3b0:	312e372f 			; <UNDEFINED> instruction: 0x312e372f
     3b4:	692f302e 	stmdbvs	pc!, {r1, r2, r3, r5, ip, sp}	; <UNPREDICTABLE>
     3b8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     3bc:	00006564 	andeq	r6, r0, r4, ror #10
     3c0:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
     3c4:	685f7465 	ldmdavs	pc, {r0, r2, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
     3c8:	77647261 	strbvc	r7, [r4, -r1, ror #4]!
     3cc:	2e657261 	cdpcs	2, 6, cr7, cr5, cr1, {3}
     3d0:	00010063 	andeq	r0, r1, r3, rrx
     3d4:	726f6300 	rsbvc	r6, pc, #0, 6
     3d8:	6d635f65 	stclvs	15, cr5, [r3, #-404]!	; 0xfffffe6c
     3dc:	74736e49 	ldrbtvc	r6, [r3], #-3657	; 0xfffff1b7
     3e0:	00682e72 	rsbeq	r2, r8, r2, ror lr
     3e4:	63000002 	movwvs	r0, #2
     3e8:	5f65726f 	svcpl	0x0065726f
     3ec:	2e336d63 	cdpcs	13, 3, cr6, cr3, cr3, {3}
     3f0:	00020068 	andeq	r0, r2, r8, rrx
     3f4:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
     3f8:	2d746e69 	ldclcs	14, cr6, [r4, #-420]!	; 0xfffffe5c
     3fc:	2e636367 	cdpcs	3, 6, cr6, cr3, cr7, {3}
     400:	00030068 	andeq	r0, r3, r8, rrx
     404:	73797300 	cmnvc	r9, #0, 6
     408:	5f6d6574 	svcpl	0x006d6574
     40c:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
     410:	30316632 	eorscc	r6, r1, r2, lsr r6
     414:	00682e78 	rsbeq	r2, r8, r8, ror lr
     418:	00000002 	andeq	r0, r0, r2
     41c:	ac020500 	cfstr32ge	mvfx0, [r2], {-0}
     420:	03080009 	movweq	r0, #32777	; 0x8009
     424:	02040116 	andeq	r0, r4, #-2147483643	; 0x80000005
     428:	0102da03 	tsteq	r2, r3, lsl #20
     42c:	fc030304 	stc2	3, cr0, [r3], {4}
     430:	04652e08 	strbteq	r2, [r5], #-3592	; 0xfffff1f8
     434:	77850302 	strvc	r0, [r5, r2, lsl #6]
     438:	00070220 	andeq	r0, r7, r0, lsr #4
     43c:	00e00101 	rsceq	r0, r0, r1, lsl #2
     440:	00020000 	andeq	r0, r2, r0
     444:	000000b7 	strheq	r0, [r0], -r7
     448:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     44c:	0101000d 	tsteq	r1, sp
     450:	00000101 	andeq	r0, r0, r1, lsl #2
     454:	00000100 	andeq	r0, r0, r0, lsl #2
     458:	73797301 	cmnvc	r9, #67108864	; 0x4000000
     45c:	2f6d6574 	svccs	0x006d6574
     460:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     464:	2f006269 	svccs	0x00006269
     468:	2f727375 	svccs	0x00727375
     46c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     470:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     474:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     478:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
     47c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     480:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
     484:	752f0073 	strvc	r0, [pc, #-115]!	; 419 <__Main_Stack_Size+0x19>
     488:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; 2c4 <_Minimum_Stack_Size+0x1c4>
     48c:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     490:	612f6363 			; <UNDEFINED> instruction: 0x612f6363
     494:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     498:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     49c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     4a0:	312e372f 			; <UNDEFINED> instruction: 0x312e372f
     4a4:	692f302e 	stmdbvs	pc!, {r1, r2, r3, r5, ip, sp}	; <UNPREDICTABLE>
     4a8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     4ac:	00006564 	andeq	r6, r0, r4, ror #10
     4b0:	7262735f 	rsbvc	r7, r2, #2080374785	; 0x7c000001
     4b4:	00632e6b 	rsbeq	r2, r3, fp, ror #28
     4b8:	6c000001 	stcvs	0, cr0, [r0], {1}
     4bc:	2e6b636f 	cdpcs	3, 6, cr6, cr11, cr15, {3}
     4c0:	00020068 	andeq	r0, r2, r8, rrx
     4c4:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
     4c8:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
     4cc:	00020068 	andeq	r0, r2, r8, rrx
     4d0:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
     4d4:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
     4d8:	00030068 	andeq	r0, r3, r8, rrx
     4dc:	70797400 	rsbsvc	r7, r9, r0, lsl #8
     4e0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
     4e4:	00000200 	andeq	r0, r0, r0, lsl #4
     4e8:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
     4ec:	00682e74 	rsbeq	r2, r8, r4, ror lr
     4f0:	65000002 	strvs	r0, [r0, #-2]
     4f4:	6f6e7272 	svcvs	0x006e7272
     4f8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     4fc:	00000000 	andeq	r0, r0, r0
     500:	09cc0205 	stmibeq	ip, {r0, r2, r9}^
     504:	14030800 	strne	r0, [r3], #-2048	; 0xfffff800
     508:	79031901 	stmdbvc	r3, {r0, r8, fp, ip}
     50c:	0b032720 	bleq	ca194 <__Main_Stack_Size+0xc9d94>
     510:	23513d2e 	cmpcs	r1, #2944	; 0xb80
     514:	032e6c03 			; <UNDEFINED> instruction: 0x032e6c03
     518:	2d3d4a0d 	vldmdbcs	sp!, {s8-s20}
     51c:	00080227 	andeq	r0, r8, r7, lsr #4
     520:	00820101 	addeq	r0, r2, r1, lsl #2
     524:	00020000 	andeq	r0, r2, r0
     528:	0000002f 	andeq	r0, r0, pc, lsr #32
     52c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     530:	0101000d 	tsteq	r1, sp
     534:	00000101 	andeq	r0, r0, r1, lsl #2
     538:	00000100 	andeq	r0, r0, r0, lsl #2
     53c:	73797301 	cmnvc	r9, #67108864	; 0x4000000
     540:	2f6d6574 	svccs	0x006d6574
     544:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     548:	00006269 	andeq	r6, r0, r9, ror #4
     54c:	6174735f 	cmnvs	r4, pc, asr r3
     550:	70757472 	rsbsvc	r7, r5, r2, ror r4
     554:	0100632e 	tsteq	r0, lr, lsr #6
     558:	00000000 	andeq	r0, r0, r0
     55c:	00000205 	andeq	r0, r0, r5, lsl #4
     560:	c9030000 	stmdbgt	r3, {}	; <UNPREDICTABLE>
     564:	91160100 	tstls	r6, r0, lsl #2
     568:	222d212d 	eorcs	r2, sp, #1073741835	; 0x4000000b
     56c:	01000102 	tsteq	r0, r2, lsl #2
     570:	02050001 	andeq	r0, r5, #1
     574:	00000000 	andeq	r0, r0, r0
     578:	0100d403 	tsteq	r0, r3, lsl #8
     57c:	303b2f16 	eorscc	r2, fp, r6, lsl pc
     580:	01000102 	tsteq	r0, r2, lsl #2
     584:	02050001 	andeq	r0, r5, #1
     588:	08000184 	stmdaeq	r0, {r2, r7, r8}
     58c:	0100ed03 	tsteq	r0, r3, lsl #26
     590:	032e0b03 			; <UNDEFINED> instruction: 0x032e0b03
     594:	49ad2e55 	stmibmi	sp!, {r0, r2, r4, r6, r9, sl, fp, sp}
     598:	9f2e0b03 	svcls	0x002e0b03
     59c:	2e2d033b 	mcrcs	3, 1, r0, cr13, cr11, {1}
     5a0:	024c4d33 	subeq	r4, ip, #3264	; 0xcc0
     5a4:	0101000c 	tsteq	r1, ip
     5a8:	0000028f 	andeq	r0, r0, pc, lsl #5
     5ac:	01520002 	cmpeq	r2, r2
     5b0:	01020000 	mrseq	r0, (UNDEF: 2)
     5b4:	000d0efb 	strdeq	r0, [sp], -fp
     5b8:	01010101 	tsteq	r1, r1, lsl #2
     5bc:	01000000 	mrseq	r0, (UNDEF: 0)
     5c0:	73010000 	movwvc	r0, #4096	; 0x1000
     5c4:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
     5c8:	656e2f6d 	strbvs	r2, [lr, #-3949]!	; 0xfffff093
     5cc:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     5d0:	73752f00 	cmnvc	r5, #0, 30
     5d4:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
     5d8:	63672f62 	cmnvs	r7, #392	; 0x188
     5dc:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
     5e0:	6f6e2d6d 	svcvs	0x006e2d6d
     5e4:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     5e8:	2f696261 	svccs	0x00696261
     5ec:	2e312e37 	mrccs	14, 1, r2, cr1, cr7, {1}
     5f0:	6e692f30 	mcrvs	15, 3, r2, cr9, cr0, {1}
     5f4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     5f8:	752f0065 	strvc	r0, [pc, #-101]!	; 59b <__Main_Stack_Size+0x19b>
     5fc:	612f7273 			; <UNDEFINED> instruction: 0x612f7273
     600:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     604:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     608:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     60c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     610:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     614:	63616d2f 	cmnvs	r1, #3008	; 0xbc0
     618:	656e6968 	strbvs	r6, [lr, #-2408]!	; 0xfffff698
     61c:	73752f00 	cmnvc	r5, #0, 30
     620:	72612f72 	rsbvc	r2, r1, #456	; 0x1c8
     624:	6f6e2d6d 	svcvs	0x006e2d6d
     628:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     62c:	2f696261 	svccs	0x00696261
     630:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     634:	2f656475 	svccs	0x00656475
     638:	00737973 	rsbseq	r7, r3, r3, ror r9
     63c:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     640:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     644:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     648:	61652d65 	cmnvs	r5, r5, ror #26
     64c:	692f6962 	stmdbvs	pc!, {r1, r5, r6, r8, fp, sp, lr}	; <UNPREDICTABLE>
     650:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     654:	00006564 	andeq	r6, r0, r4, ror #10
     658:	7379735f 	cmnvc	r9, #2080374785	; 0x7c000001
     65c:	6c6c6163 	stfvse	f6, [ip], #-396	; 0xfffffe74
     660:	00632e73 	rsbeq	r2, r3, r3, ror lr
     664:	73000001 	movwvc	r0, #1
     668:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
     66c:	00682e66 	rsbeq	r2, r8, r6, ror #28
     670:	5f000002 	svcpl	0x00000002
     674:	61666564 	cmnvs	r6, r4, ror #10
     678:	5f746c75 	svcpl	0x00746c75
     67c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
     680:	00682e73 	rsbeq	r2, r8, r3, ror lr
     684:	6c000003 	stcvs	0, cr0, [r0], {3}
     688:	2e6b636f 	cdpcs	3, 6, cr6, cr11, cr15, {3}
     68c:	00040068 	andeq	r0, r4, r8, rrx
     690:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
     694:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
     698:	00040068 	andeq	r0, r4, r8, rrx
     69c:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
     6a0:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
     6a4:	00000400 	andeq	r0, r0, r0, lsl #8
     6a8:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
     6ac:	00682e6f 	rsbeq	r2, r8, pc, ror #28
     6b0:	5f000004 	svcpl	0x00000004
     6b4:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     6b8:	2e6c6176 	mcrcs	1, 3, r6, cr12, cr6, {3}
     6bc:	00040068 	andeq	r0, r4, r8, rrx
     6c0:	70797400 	rsbsvc	r7, r9, r0, lsl #8
     6c4:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
     6c8:	00000400 	andeq	r0, r0, r0, lsl #8
     6cc:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     6d0:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
     6d4:	74730000 	ldrbtvc	r0, [r3], #-0
     6d8:	682e7461 	stmdavs	lr!, {r0, r5, r6, sl, ip, sp, lr}
     6dc:	00000400 	andeq	r0, r0, r0, lsl #8
     6e0:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     6e4:	00682e73 	rsbeq	r2, r8, r3, ror lr
     6e8:	73000004 	movwvc	r0, #4
     6ec:	616e6769 	cmnvs	lr, r9, ror #14
     6f0:	00682e6c 	rsbeq	r2, r8, ip, ror #28
     6f4:	73000004 	movwvc	r0, #4
     6f8:	616e6769 	cmnvs	lr, r9, ror #14
     6fc:	00682e6c 	rsbeq	r2, r8, ip, ror #28
     700:	00000005 	andeq	r0, r0, r5
     704:	0c020500 	cfstr32eq	mvfx0, [r2], {-0}
     708:	0308000a 	movweq	r0, #32778	; 0x800a
     70c:	0f03011a 	svceq	0x0003011a
     710:	211f2101 	tstcs	pc, r1, lsl #2
     714:	00040222 	andeq	r0, r4, r2, lsr #4
     718:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
     71c:	00000002 	andeq	r0, r0, r2
     720:	01360300 	teqeq	r6, r0, lsl #6
     724:	03024c21 	movweq	r4, #11297	; 0x2c21
     728:	00010100 	andeq	r0, r1, r0, lsl #2
     72c:	00000205 	andeq	r0, r0, r5, lsl #4
     730:	3e030000 	cdpcc	0, 0, cr0, cr3, cr0, {0}
     734:	024c2101 	subeq	r2, ip, #1073741824	; 0x40000000
     738:	01010003 	tsteq	r1, r3
     73c:	00020500 	andeq	r0, r2, r0, lsl #10
     740:	03000000 	movweq	r0, #0
     744:	210100e5 	smlattcs	r1, r5, r0, r0
     748:	0003024c 	andeq	r0, r3, ip, asr #4
     74c:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
     750:	00000002 	andeq	r0, r0, r2
     754:	00ec0300 	rsceq	r0, ip, r0, lsl #6
     758:	024c2101 	subeq	r2, ip, #1073741824	; 0x40000000
     75c:	01010003 	tsteq	r1, r3
     760:	00020500 	andeq	r0, r2, r0, lsl #10
     764:	03000000 	movweq	r0, #0
     768:	210100f4 	strdcs	r0, [r1, -r4]
     76c:	0003024c 	andeq	r0, r3, ip, asr #4
     770:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
     774:	00000002 	andeq	r0, r0, r2
     778:	00fb0300 	rscseq	r0, fp, r0, lsl #6
     77c:	024c2101 	subeq	r2, ip, #1073741824	; 0x40000000
     780:	01010003 	tsteq	r1, r3
     784:	00020500 	andeq	r0, r2, r0, lsl #10
     788:	03000000 	movweq	r0, #0
     78c:	21010183 	smlabbcs	r1, r3, r1, r0
     790:	0003024c 	andeq	r0, r3, ip, asr #4
     794:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
     798:	00000002 	andeq	r0, r0, r2
     79c:	01920300 	orrseq	r0, r2, r0, lsl #6
     7a0:	4c210101 	stfmis	f0, [r1], #-4
     7a4:	01000302 	tsteq	r0, r2, lsl #6
     7a8:	02050001 	andeq	r0, r5, #1
     7ac:	00000000 	andeq	r0, r0, r0
     7b0:	01019903 	tsteq	r1, r3, lsl #18
     7b4:	02024c21 	andeq	r4, r2, #8448	; 0x2100
     7b8:	00010100 	andeq	r0, r1, r0, lsl #2
     7bc:	00000205 	andeq	r0, r0, r5, lsl #4
     7c0:	a0030000 	andge	r0, r3, r0
     7c4:	4c210101 	stfmis	f0, [r1], #-4
     7c8:	01000302 	tsteq	r0, r2, lsl #6
     7cc:	02050001 	andeq	r0, r5, #1
     7d0:	00000000 	andeq	r0, r0, r0
     7d4:	0101b003 	tsteq	r1, r3
     7d8:	024c2101 	subeq	r2, ip, #1073741824	; 0x40000000
     7dc:	01010003 	tsteq	r1, r3
     7e0:	00020500 	andeq	r0, r2, r0, lsl #10
     7e4:	03000000 	movweq	r0, #0
     7e8:	210101b8 			; <UNDEFINED> instruction: 0x210101b8
     7ec:	0003024c 	andeq	r0, r3, ip, asr #4
     7f0:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
     7f4:	00000002 	andeq	r0, r0, r2
     7f8:	01c00300 	biceq	r0, r0, r0, lsl #6
     7fc:	024c2101 	subeq	r2, ip, #1073741824	; 0x40000000
     800:	01010003 	tsteq	r1, r3
     804:	00020500 	andeq	r0, r2, r0, lsl #10
     808:	03000000 	movweq	r0, #0
     80c:	210101c8 	smlabtcs	r1, r8, r1, r0
     810:	0003024c 	andeq	r0, r3, ip, asr #4
     814:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
     818:	00000002 	andeq	r0, r0, r2
     81c:	01df0300 	bicseq	r0, pc, r0, lsl #6
     820:	4c210101 	stfmis	f0, [r1], #-4
     824:	01000302 	tsteq	r0, r2, lsl #6
     828:	02050001 	andeq	r0, r5, #1
     82c:	00000000 	andeq	r0, r0, r0
     830:	0101e603 	tsteq	r1, r3, lsl #12
     834:	03024c21 	movweq	r4, #11297	; 0x2c21
     838:	8d010100 	stfhis	f0, [r1, #-0]
     83c:	02000002 	andeq	r0, r0, #2
     840:	00014800 	andeq	r4, r1, r0, lsl #16
     844:	fb010200 	blx	4104e <__Main_Stack_Size+0x40c4e>
     848:	01000d0e 	tsteq	r0, lr, lsl #26
     84c:	00010101 	andeq	r0, r1, r1, lsl #2
     850:	00010000 	andeq	r0, r1, r0
     854:	72730100 	rsbsvc	r0, r3, #0, 2
     858:	79730063 	ldmdbvc	r3!, {r0, r1, r5, r6}^
     85c:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
     860:	736d632f 	cmnvc	sp, #-1140850688	; 0xbc000000
     864:	2f007369 	svccs	0x00007369
     868:	2f727375 	svccs	0x00727375
     86c:	2f62696c 	svccs	0x0062696c
     870:	2f636367 	svccs	0x00636367
     874:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     878:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     87c:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     880:	2e372f69 	cdpcs	15, 3, cr2, cr7, cr9, {3}
     884:	2f302e31 	svccs	0x00302e31
     888:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     88c:	00656475 	rsbeq	r6, r5, r5, ror r4
     890:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     894:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     898:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     89c:	61652d65 	cmnvs	r5, r5, ror #26
     8a0:	692f6962 	stmdbvs	pc!, {r1, r5, r6, r8, fp, sp, lr}	; <UNPREDICTABLE>
     8a4:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     8a8:	732f6564 			; <UNDEFINED> instruction: 0x732f6564
     8ac:	2f007379 	svccs	0x00007379
     8b0:	2f727375 	svccs	0x00727375
     8b4:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     8b8:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     8bc:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     8c0:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
     8c4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     8c8:	6d000065 	stcvs	0, cr0, [r0, #-404]	; 0xfffffe6c
     8cc:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
     8d0:	00010063 	andeq	r0, r1, r3, rrx
     8d4:	726f6300 	rsbvc	r6, pc, #0, 6
     8d8:	6d635f65 	stclvs	15, cr5, [r3, #-404]!	; 0xfffffe6c
     8dc:	636e7546 	cmnvs	lr, #293601280	; 0x11800000
     8e0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     8e4:	74730000 	ldrbtvc	r0, [r3], #-0
     8e8:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
     8ec:	6363672d 	cmnvs	r3, #11796480	; 0xb40000
     8f0:	0300682e 	movweq	r6, #2094	; 0x82e
     8f4:	6f630000 	svcvs	0x00630000
     8f8:	635f6572 	cmpvs	pc, #478150656	; 0x1c800000
     8fc:	682e336d 	stmdavs	lr!, {r0, r2, r3, r5, r6, r8, r9, ip, sp}
     900:	00000200 	andeq	r0, r0, r0, lsl #4
     904:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     908:	735f6d65 	cmpvc	pc, #6464	; 0x1940
     90c:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
     910:	78303166 	ldmdavc	r0!, {r1, r2, r5, r6, r8, ip, sp}
     914:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     918:	74730000 	ldrbtvc	r0, [r3], #-0
     91c:	6632336d 	ldrtvs	r3, [r2], -sp, ror #6
     920:	2e783031 	mrccs	0, 3, r3, cr8, cr1, {1}
     924:	00020068 	andeq	r0, r2, r8, rrx
     928:	636f6c00 	cmnvs	pc, #0, 24
     92c:	00682e6b 	rsbeq	r2, r8, fp, ror #28
     930:	5f000004 	svcpl	0x00000004
     934:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
     938:	00682e73 	rsbeq	r2, r8, r3, ror lr
     93c:	73000004 	movwvc	r0, #4
     940:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
     944:	00682e66 	rsbeq	r2, r8, r6, ror #28
     948:	72000003 	andvc	r0, r0, #3
     94c:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
     950:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
     954:	69700000 	ldmdbvs	r0!, {}^	; <UNPREDICTABLE>
     958:	00682e64 	rsbeq	r2, r8, r4, ror #28
     95c:	73000001 	movwvc	r0, #1
     960:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
     964:	00682e62 	rsbeq	r2, r8, r2, ror #28
     968:	65000005 	strvs	r0, [r0, #-5]
     96c:	6f727065 	svcvs	0x00727065
     970:	00682e6d 	rsbeq	r2, r8, sp, ror #28
     974:	75000001 	strvc	r0, [r0, #-1]
     978:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
     97c:	00010068 	andeq	r0, r1, r8, rrx
     980:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
     984:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
     988:	00000500 	andeq	r0, r0, r0, lsl #10
     98c:	02050000 	andeq	r0, r5, #0
     990:	08000a1c 	stmdaeq	r0, {r2, r3, r4, r9, fp}
     994:	0100d503 	tsteq	r0, r3, lsl #10
     998:	03011003 	movweq	r1, #4099	; 0x1003
     99c:	10032070 	andne	r2, r3, r0, ror r0
     9a0:	4a700320 	bmi	1c01628 <__Main_Stack_Size+0x1c01228>
     9a4:	22201003 	eorcs	r1, r0, #3
     9a8:	3f1f2ff7 	svccc	0x001f2ff7
     9ac:	03583c03 	cmpeq	r8, #768	; 0x300
     9b0:	5e032e09 	cdppl	14, 0, cr2, cr3, cr9, {0}
     9b4:	1803752e 	stmdane	r3, {r1, r2, r3, r5, r8, sl, ip, sp, lr}
     9b8:	2e09033c 	mcrcs	3, 0, r0, cr9, cr12, {1}
     9bc:	752e4603 	strvc	r4, [lr, #-1539]!	; 0xfffff9fd
     9c0:	033c3003 	teqeq	ip, #3
     9c4:	4c032e09 	stcmi	14, cr2, [r3], {9}
     9c8:	3d91a02e 	ldccc	0, cr10, [r1, #184]	; 0xb8
     9cc:	c81803fc 	ldmdagt	r8, {r2, r3, r4, r5, r6, r7, r8, r9}
     9d0:	03211f2f 			; <UNDEFINED> instruction: 0x03211f2f
     9d4:	09036612 	stmdbeq	r3, {r1, r4, r9, sl, sp, lr}
     9d8:	2e40032e 	cdpcs	3, 4, cr0, cr0, cr14, {1}
     9dc:	3c360367 	ldccc	3, cr0, [r6], #-412	; 0xfffffe64
     9e0:	032e0903 			; <UNDEFINED> instruction: 0x032e0903
     9e4:	1f3d2e57 	svcne	0x003d2e57
     9e8:	212d5921 			; <UNDEFINED> instruction: 0x212d5921
     9ec:	032e1e03 			; <UNDEFINED> instruction: 0x032e1e03
     9f0:	6a032e09 	bvs	cc21c <__Main_Stack_Size+0xcbe1c>
     9f4:	9e0d032e 	cdpls	3, 0, cr0, cr13, cr14, {1}
     9f8:	042e0903 	strteq	r0, [lr], #-2307	; 0xfffff6fd
     9fc:	01950302 	orrseq	r0, r5, r2, lsl #6
     a00:	0301042e 	movweq	r0, #5166	; 0x142e
     a04:	2f207edb 	svccs	0x00207edb
     a08:	21211e21 			; <UNDEFINED> instruction: 0x21211e21
     a0c:	98030204 	stmdals	r3, {r2, r9}
     a10:	01042e01 	tsteq	r4, r1, lsl #28
     a14:	207eed03 	rsbscs	lr, lr, r3, lsl #26
     a18:	032e0903 			; <UNDEFINED> instruction: 0x032e0903
     a1c:	022e7fb9 	eoreq	r7, lr, #740	; 0x2e4
     a20:	01010021 	tsteq	r1, r1, lsr #32
     a24:	e0020500 	and	r0, r2, r0, lsl #10
     a28:	0308000b 	movweq	r0, #32779	; 0x800b
     a2c:	03240128 			; <UNDEFINED> instruction: 0x03240128
     a30:	1b514a0d 	blne	145326c <__Main_Stack_Size+0x1452e6c>
     a34:	213d1f21 	teqcs	sp, r1, lsr #30
     a38:	1f593d1f 	svcne	0x00593d1f
     a3c:	2c231f21 	stccs	15, cr1, [r3], #-132	; 0xffffff7c
     a40:	222e7103 	eorcs	r7, lr, #-1073741824	; 0xc0000000
     a44:	1e223e1e 	mcrne	14, 1, r3, cr2, cr14, {0}
     a48:	221e5a3e 	andscs	r5, lr, #253952	; 0x3e000
     a4c:	1002221e 	andne	r2, r2, lr, lsl r2
     a50:	00010100 	andeq	r0, r1, r0, lsl #2
     a54:	0c680205 	sfmeq	f0, 2, [r8], #-20	; 0xffffffec
     a58:	c4030800 	strgt	r0, [r3], #-2048	; 0xfffff800
     a5c:	1e140100 	mufnes	f0, f4, f0
     a60:	23855922 	orrcs	r5, r5, #557056	; 0x88000
     a64:	23554d1d 	cmpcs	r5, #1856	; 0x740
     a68:	022d672f 	eoreq	r6, sp, #12320768	; 0xbc0000
     a6c:	0101000f 	tsteq	r1, pc
     a70:	00020500 	andeq	r0, r2, r0, lsl #10
     a74:	03000000 	movweq	r0, #0
     a78:	270100d6 			; <UNDEFINED> instruction: 0x270100d6
     a7c:	3c00d703 	stccc	7, cr13, [r0], {3}
     a80:	207fab03 	rsbscs	sl, pc, r3, lsl #22
     a84:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
     a88:	062e0601 	strteq	r0, [lr], -r1, lsl #12
     a8c:	2e00ce03 	cdpcs	14, 0, cr12, cr0, cr3, {0}
     a90:	0224494b 	eoreq	r4, r4, #1228800	; 0x12c000
     a94:	0101000a 	tsteq	r1, sl
     a98:	d0020500 	andle	r0, r2, r0, lsl #10
     a9c:	0308000c 	movweq	r0, #32780	; 0x800c
     aa0:	230101ba 	movwcs	r0, #4538	; 0x11ba
     aa4:	21231c2f 			; <UNDEFINED> instruction: 0x21231c2f
     aa8:	03313123 	teqeq	r1, #-1073741816	; 0xc0000008
     aac:	02049e09 	andeq	r9, r4, #9, 28	; 0x90
     ab0:	9e00ee03 	cdpls	14, 0, cr14, cr0, cr3, {0}
     ab4:	02000104 	andeq	r0, r0, #4, 2
     ab8:	9f030104 	svcls	0x00030104
     abc:	314c3c7e 	hvccc	50126	; 0xc3ce
     ac0:	4a00ce03 	bmi	342d4 <__Main_Stack_Size+0x33ed4>
     ac4:	02213b2f 	eoreq	r3, r1, #48128	; 0xbc00
     ac8:	01010020 	tsteq	r1, r0, lsr #32
     acc:	00000192 	muleq	r0, r2, r1
     ad0:	009a0002 	addseq	r0, sl, r2
     ad4:	01020000 	mrseq	r0, (UNDEF: 2)
     ad8:	000d0efb 	strdeq	r0, [sp], -fp
     adc:	01010101 	tsteq	r1, r1, lsl #2
     ae0:	01000000 	mrseq	r0, (UNDEF: 0)
     ae4:	73010000 	movwvc	r0, #4096	; 0x1000
     ae8:	73006372 	movwvc	r6, #882	; 0x372
     aec:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
     af0:	6d632f6d 	stclvs	15, cr2, [r3, #-436]!	; 0xfffffe4c
     af4:	00736973 	rsbseq	r6, r3, r3, ror r9
     af8:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     afc:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     b00:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     b04:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     b08:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     b0c:	61652d65 	cmnvs	r5, r5, ror #26
     b10:	372f6962 	strcc	r6, [pc, -r2, ror #18]!
     b14:	302e312e 	eorcc	r3, lr, lr, lsr #2
     b18:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     b1c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     b20:	61750000 	cmnvs	r5, r0
     b24:	632e7472 			; <UNDEFINED> instruction: 0x632e7472
     b28:	00000100 	andeq	r0, r0, r0, lsl #2
     b2c:	65726f63 	ldrbvs	r6, [r2, #-3939]!	; 0xfffff09d
     b30:	336d635f 	cmncc	sp, #2080374785	; 0x7c000001
     b34:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     b38:	74730000 	ldrbtvc	r0, [r3], #-0
     b3c:	6632336d 	ldrtvs	r3, [r2], -sp, ror #6
     b40:	2e783031 	mrccs	0, 3, r3, cr8, cr1, {1}
     b44:	00020068 	andeq	r0, r2, r8, rrx
     b48:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
     b4c:	2d746e69 	ldclcs	14, cr6, [r4, #-420]!	; 0xfffffe5c
     b50:	2e636367 	cdpcs	3, 6, cr6, cr3, cr7, {3}
     b54:	00030068 	andeq	r0, r3, r8, rrx
     b58:	73797300 	cmnvc	r9, #0, 6
     b5c:	5f6d6574 	svcpl	0x006d6574
     b60:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
     b64:	30316632 	eorscc	r6, r1, r2, lsr r6
     b68:	00682e78 	rsbeq	r2, r8, r8, ror lr
     b6c:	00000002 	andeq	r0, r0, r2
     b70:	74020500 	strvc	r0, [r2], #-1280	; 0xfffffb00
     b74:	0308000d 	movweq	r0, #32781	; 0x800d
     b78:	1f13010d 	svcne	0x0013010d
     b7c:	1f213d21 	svcne	0x00213d21
     b80:	4b2f1f3d 	blmi	bc887c <__Main_Stack_Size+0xbc847c>
     b84:	1f211f21 	svcne	0x00211f21
     b88:	214b2521 	cmpcs	fp, r1, lsr #10
     b8c:	1f2f591f 	svcne	0x002f591f
     b90:	22212d21 	eorcs	r2, r1, #2112	; 0x840
     b94:	022e7803 	eoreq	r7, lr, #196608	; 0x30000
     b98:	01010012 	tsteq	r1, r2, lsl r0
     b9c:	f0020500 			; <UNDEFINED> instruction: 0xf0020500
     ba0:	0308000d 	movweq	r0, #32781	; 0x800d
     ba4:	02000120 	andeq	r0, r0, #32, 2
     ba8:	4b310104 	blmi	c40fc0 <__Main_Stack_Size+0xc40bc0>
     bac:	2d211f21 	stccs	15, cr1, [r1, #-132]!	; 0xffffff7c
     bb0:	07022221 	streq	r2, [r2, -r1, lsr #4]
     bb4:	00010100 	andeq	r0, r1, r0, lsl #2
     bb8:	0e180205 	cdpeq	2, 1, cr0, cr8, cr5, {0}
     bbc:	2a030800 	bcs	c2bc4 <__Main_Stack_Size+0xc27c4>
     bc0:	024b1301 	subeq	r1, fp, #67108864	; 0x4000000
     bc4:	01010008 	tsteq	r1, r8
     bc8:	00020500 	andeq	r0, r2, r0, lsl #10
     bcc:	03000000 	movweq	r0, #0
     bd0:	4113012f 	tstmi	r3, pc, lsr #2
     bd4:	26207a03 	strtcs	r7, [r0], -r3, lsl #20
     bd8:	22212d2f 	eorcs	r2, r1, #3008	; 0xbc0
     bdc:	212e7903 			; <UNDEFINED> instruction: 0x212e7903
     be0:	0b02212d 	bleq	8909c <__Main_Stack_Size+0x88c9c>
     be4:	00010100 	andeq	r0, r1, r0, lsl #2
     be8:	0e300205 	cdpeq	2, 3, cr0, cr0, cr5, {0}
     bec:	3b030800 	blcc	c2bf4 <__Main_Stack_Size+0xc27f4>
     bf0:	02002101 	andeq	r2, r0, #1073741824	; 0x40000000
     bf4:	66060104 	strvs	r0, [r6], -r4, lsl #2
     bf8:	01040200 	mrseq	r0, R12_usr
     bfc:	2e740306 	cdpcs	3, 7, cr0, cr4, cr6, {0}
     c00:	01040200 	mrseq	r0, R12_usr
     c04:	04020022 	streq	r0, [r2], #-34	; 0xffffffde
     c08:	2e0a0301 	cdpcs	3, 0, cr0, cr10, cr1, {0}
     c0c:	02040200 	andeq	r0, r4, #0, 4
     c10:	2f207403 	svccs	0x00207403
     c14:	211f322f 	tstcs	pc, pc, lsr #4
     c18:	0243211f 	subeq	r2, r3, #-1073741817	; 0xc0000007
     c1c:	0101000e 	tsteq	r1, lr
     c20:	80020500 	andhi	r0, r2, r0, lsl #10
     c24:	0308000e 	movweq	r0, #32782	; 0x800e
     c28:	270100c0 	strcs	r0, [r1, -r0, asr #1]
     c2c:	02042f26 	andeq	r2, r4, #38, 30	; 0x98
     c30:	2e09f103 	mvfcse	f7, f3
     c34:	82030104 	andhi	r0, r3, #4, 2
     c38:	23592076 	cmpcs	r9, #118	; 0x76
     c3c:	03283f1d 			; <UNDEFINED> instruction: 0x03283f1d
     c40:	4b3d2078 	blmi	f48e28 <__Main_Stack_Size+0xf48a28>
     c44:	f8030204 			; <UNDEFINED> instruction: 0xf8030204
     c48:	01042009 	tsteq	r4, r9
     c4c:	20768e03 	rsbscs	r8, r6, r3, lsl #28
     c50:	03020421 	movweq	r0, #9249	; 0x2421
     c54:	042009f1 	strteq	r0, [r0], #-2545	; 0xfffff60f
     c58:	76940301 	ldrvc	r0, [r4], r1, lsl #6
     c5c:	000b0220 	andeq	r0, fp, r0, lsr #4
     c60:	018d0101 	orreq	r0, sp, r1, lsl #2
     c64:	00020000 	andeq	r0, r2, r0
     c68:	00000145 	andeq	r0, r0, r5, asr #2
     c6c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     c70:	0101000d 	tsteq	r1, sp
     c74:	00000101 	andeq	r0, r0, r1, lsl #2
     c78:	00000100 	andeq	r0, r0, r0, lsl #2
     c7c:	63727301 	cmnvs	r2, #67108864	; 0x4000000
     c80:	73752f00 	cmnvc	r5, #0, 30
     c84:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
     c88:	63672f62 	cmnvs	r7, #392	; 0x188
     c8c:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
     c90:	6f6e2d6d 	svcvs	0x006e2d6d
     c94:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     c98:	2f696261 	svccs	0x00696261
     c9c:	2e312e37 	mrccs	14, 1, r2, cr1, cr7, {1}
     ca0:	6e692f30 	mcrvs	15, 3, r2, cr9, cr0, {1}
     ca4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     ca8:	79730065 	ldmdbvc	r3!, {r0, r2, r5, r6}^
     cac:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
     cb0:	736d632f 	cmnvc	sp, #-1140850688	; 0xbc000000
     cb4:	2f007369 	svccs	0x00007369
     cb8:	2f727375 	svccs	0x00727375
     cbc:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     cc0:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     cc4:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     cc8:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
     ccc:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     cd0:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
     cd4:	752f0073 	strvc	r0, [pc, #-115]!	; c69 <__Main_Stack_Size+0x869>
     cd8:	612f7273 			; <UNDEFINED> instruction: 0x612f7273
     cdc:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     ce0:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     ce4:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     ce8:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     cec:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     cf0:	65650000 	strbvs	r0, [r5, #-0]!
     cf4:	6d6f7270 	sfmvs	f7, 2, [pc, #-448]!	; b3c <__Main_Stack_Size+0x73c>
     cf8:	0100632e 	tsteq	r0, lr, lsr #6
     cfc:	74730000 	ldrbtvc	r0, [r3], #-0
     d00:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
     d04:	6363672d 	cmnvs	r3, #11796480	; 0xb40000
     d08:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     d0c:	6f630000 	svcvs	0x00630000
     d10:	635f6572 	cmpvs	pc, #478150656	; 0x1c800000
     d14:	682e336d 	stmdavs	lr!, {r0, r2, r3, r5, r6, r8, r9, ip, sp}
     d18:	00000300 	andeq	r0, r0, r0, lsl #6
     d1c:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     d20:	735f6d65 	cmpvc	pc, #6464	; 0x1940
     d24:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
     d28:	78303166 	ldmdavc	r0!, {r1, r2, r5, r6, r8, ip, sp}
     d2c:	0300682e 	movweq	r6, #2094	; 0x82e
     d30:	74730000 	ldrbtvc	r0, [r3], #-0
     d34:	6632336d 	ldrtvs	r3, [r2], -sp, ror #6
     d38:	2e783031 	mrccs	0, 3, r3, cr8, cr1, {1}
     d3c:	00030068 	andeq	r0, r3, r8, rrx
     d40:	636f6c00 	cmnvs	pc, #0, 24
     d44:	00682e6b 	rsbeq	r2, r8, fp, ror #28
     d48:	5f000004 	svcpl	0x00000004
     d4c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
     d50:	00682e73 	rsbeq	r2, r8, r3, ror lr
     d54:	73000004 	movwvc	r0, #4
     d58:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
     d5c:	00682e66 	rsbeq	r2, r8, r6, ror #28
     d60:	72000002 	andvc	r0, r0, #2
     d64:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
     d68:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
     d6c:	74730000 	ldrbtvc	r0, [r3], #-0
     d70:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
     d74:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
     d78:	69700000 	ldmdbvs	r0!, {}^	; <UNPREDICTABLE>
     d7c:	00682e64 	rsbeq	r2, r8, r4, ror #28
     d80:	65000001 	strvs	r0, [r0, #-1]
     d84:	6f727065 	svcvs	0x00727065
     d88:	00682e6d 	rsbeq	r2, r8, sp, ror #28
     d8c:	73000001 	movwvc	r0, #1
     d90:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
     d94:	00682e67 	rsbeq	r2, r8, r7, ror #28
     d98:	73000005 	movwvc	r0, #5
     d9c:	6f696474 	svcvs	0x00696474
     da0:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
     da4:	61750000 	cmnvs	r5, r0
     da8:	682e7472 	stmdavs	lr!, {r1, r4, r5, r6, sl, ip, sp, lr}
     dac:	00000100 	andeq	r0, r0, r0, lsl #2
     db0:	02050000 	andeq	r0, r5, #0
     db4:	08000ed4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl, fp}
     db8:	22011503 	andcs	r1, r1, #12582912	; 0xc00000
     dbc:	3db0228e 	lfmcc	f2, 4, [r0, #568]!	; 0x238
     dc0:	01000702 	tsteq	r0, r2, lsl #14
     dc4:	02050001 	andeq	r0, r5, #1
     dc8:	08000f14 	stmdaeq	r0, {r2, r4, r8, r9, sl, fp}
     dcc:	3f011f03 	svccc	0x00011f03
     dd0:	6e67231d 	mcrvs	3, 3, r2, cr7, cr13, {0}
     dd4:	593f2f4b 	ldmdbpl	pc!, {r0, r1, r3, r6, r8, r9, sl, fp, sp}	; <UNPREDICTABLE>
     dd8:	2f4b4b21 	svccs	0x004b4b21
     ddc:	4b4a0a03 	blmi	12835f0 <__Main_Stack_Size+0x12831f0>
     de0:	31293330 			; <UNDEFINED> instruction: 0x31293330
     de4:	1c4b915c 	stfnep	f1, [fp], {92}	; 0x5c
     de8:	03271c40 			; <UNDEFINED> instruction: 0x03271c40
     dec:	06024a59 			; <UNDEFINED> instruction: 0x06024a59
     df0:	63010100 	movwvs	r0, #4352	; 0x1100
     df4:	02000001 	andeq	r0, r0, #1
     df8:	0000a000 	andeq	sl, r0, r0
     dfc:	fb010200 	blx	41606 <__Main_Stack_Size+0x41206>
     e00:	01000d0e 	tsteq	r0, lr, lsl #26
     e04:	00010101 	andeq	r0, r1, r1, lsl #2
     e08:	00010000 	andeq	r0, r1, r0
     e0c:	72730100 	rsbsvc	r0, r3, #0, 2
     e10:	79730063 	ldmdbvc	r3!, {r0, r1, r5, r6}^
     e14:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
     e18:	736d632f 	cmnvc	sp, #-1140850688	; 0xbc000000
     e1c:	2f007369 	svccs	0x00007369
     e20:	2f727375 	svccs	0x00727375
     e24:	2f62696c 	svccs	0x0062696c
     e28:	2f636367 	svccs	0x00636367
     e2c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     e30:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     e34:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     e38:	2e372f69 	cdpcs	15, 3, cr2, cr7, cr9, {3}
     e3c:	2f302e31 	svccs	0x00302e31
     e40:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     e44:	00656475 	rsbeq	r6, r5, r5, ror r4
     e48:	72657000 	rsbvc	r7, r5, #0
     e4c:	65687069 	strbvs	r7, [r8, #-105]!	; 0xffffff97
     e50:	2e6c6172 	mcrcs	1, 3, r6, cr12, cr2, {3}
     e54:	00010063 	andeq	r0, r1, r3, rrx
     e58:	726f6300 	rsbvc	r6, pc, #0, 6
     e5c:	6d635f65 	stclvs	15, cr5, [r3, #-404]!	; 0xfffffe6c
     e60:	00682e33 	rsbeq	r2, r8, r3, lsr lr
     e64:	73000002 	movwvc	r0, #2
     e68:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
     e6c:	78303166 	ldmdavc	r0!, {r1, r2, r5, r6, r8, ip, sp}
     e70:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     e74:	74730000 	ldrbtvc	r0, [r3], #-0
     e78:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
     e7c:	6363672d 	cmnvs	r3, #11796480	; 0xb40000
     e80:	0300682e 	movweq	r6, #2094	; 0x82e
     e84:	79730000 	ldmdbvc	r3!, {}^	; <UNPREDICTABLE>
     e88:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
     e8c:	6d74735f 	ldclvs	3, cr7, [r4, #-380]!	; 0xfffffe84
     e90:	31663233 	cmncc	r6, r3, lsr r2
     e94:	682e7830 	stmdavs	lr!, {r4, r5, fp, ip, sp, lr}
     e98:	00000200 	andeq	r0, r0, r0, lsl #4
     e9c:	02050000 	andeq	r0, r5, #0
     ea0:	08000fcc 	stmdaeq	r0, {r2, r3, r6, r7, r8, r9, sl, fp}
     ea4:	2e170316 	mrccs	3, 0, r0, cr7, cr6, {0}
     ea8:	2f200c03 	svccs	0x00200c03
     eac:	2e5d032f 	cdpcs	3, 5, cr0, cr13, cr15, {1}
     eb0:	03201403 			; <UNDEFINED> instruction: 0x03201403
     eb4:	3603206c 	strcc	r2, [r3], -ip, rrx
     eb8:	2e4a0320 	cdpcs	3, 4, cr0, cr10, cr0, {1}
     ebc:	0302043d 	movweq	r0, #9277	; 0x243d
     ec0:	04200ab8 	strteq	r0, [r0], #-2744	; 0xfffff548
     ec4:	75c80301 	strbvc	r0, [r8, #769]	; 0x301
     ec8:	3c13032e 	ldccc	3, cr0, [r3], {46}	; 0x2e
     ecc:	25212925 	strcs	r2, [r1, #-2341]!	; 0xfffff6db
     ed0:	211f212d 	tstcs	pc, sp, lsr #2
     ed4:	20160327 	andscs	r0, r6, r7, lsr #6
     ed8:	3d2e6a03 	vstmdbcc	lr!, {s12-s14}
     edc:	03202603 			; <UNDEFINED> instruction: 0x03202603
     ee0:	212f2e5a 			; <UNDEFINED> instruction: 0x212f2e5a
     ee4:	03201c03 			; <UNDEFINED> instruction: 0x03201c03
     ee8:	033e2e64 	teqeq	lr, #100, 28	; 0x640
     eec:	5d032e23 	stcpl	14, cr2, [r3, #-140]	; 0xffffff74
     ef0:	26034b2e 	strcs	r4, [r3], -lr, lsr #22
     ef4:	205a032e 	subscs	r0, sl, lr, lsr #6
     ef8:	02042f3d 	andeq	r2, r4, #61, 30	; 0xf4
     efc:	2e0ae303 	cdpcs	3, 0, cr14, cr10, cr3, {0}
     f00:	9d030104 	stflss	f0, [r3, #-16]
     f04:	04522075 	ldrbeq	r2, [r2], #-117	; 0xffffff8b
     f08:	0bdd0302 	bleq	ff741b18 <_estack+0xdf73cb18>
     f0c:	01042120 	tsteq	r4, r0, lsr #2
     f10:	2074a203 	rsbscs	sl, r4, r3, lsl #4
     f14:	672a242f 	strvs	r2, [sl, -pc, lsr #8]!
     f18:	042f2f69 	strteq	r2, [pc], #-3945	; f20 <__Main_Stack_Size+0xb20>
     f1c:	0a810302 	beq	fe041b2c <_estack+0xde03cb2c>
     f20:	0301042e 	movweq	r0, #5166	; 0x142e
     f24:	4e3c7687 	cfmsuba32mi	mvax4, mvax7, mvfx12, mvfx7
     f28:	042f2f40 	strteq	r2, [pc], #-3904	; f30 <__Main_Stack_Size+0xb30>
     f2c:	0bc20302 	bleq	ff081b3c <_estack+0xdf07cb3c>
     f30:	03010420 	movweq	r0, #5152	; 0x1420
     f34:	5b2074be 	blpl	81e234 <__Main_Stack_Size+0x81de34>
     f38:	bf030204 	svclt	0x00030204
     f3c:	8003200b 	andhi	r2, r3, fp
     f40:	8003207f 	andhi	r2, r3, pc, ror r0
     f44:	80032001 	andhi	r2, r3, r1
     f48:	8203207f 	andhi	r2, r3, #127	; 0x7f
     f4c:	04212e01 	strteq	r2, [r1], #-3585	; 0xfffff1ff
     f50:	74c60301 	strbvc	r0, [r6], #769	; 0x301
     f54:	00140220 	andseq	r0, r4, r0, lsr #4
     f58:	029c0101 	addseq	r0, ip, #1073741824	; 0x40000000
     f5c:	00020000 	andeq	r0, r2, r0
     f60:	00000117 	andeq	r0, r0, r7, lsl r1
     f64:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     f68:	0101000d 	tsteq	r1, sp
     f6c:	00000101 	andeq	r0, r0, r1, lsl #2
     f70:	00000100 	andeq	r0, r0, r0, lsl #2
     f74:	63727301 	cmnvs	r2, #67108864	; 0x4000000
     f78:	73797300 	cmnvc	r9, #0, 6
     f7c:	2f6d6574 	svccs	0x006d6574
     f80:	69736d63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, sl, fp, sp, lr}^
     f84:	752f0073 	strvc	r0, [pc, #-115]!	; f19 <__Main_Stack_Size+0xb19>
     f88:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; dc4 <__Main_Stack_Size+0x9c4>
     f8c:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     f90:	612f6363 			; <UNDEFINED> instruction: 0x612f6363
     f94:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     f98:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     f9c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     fa0:	312e372f 			; <UNDEFINED> instruction: 0x312e372f
     fa4:	692f302e 	stmdbvs	pc!, {r1, r2, r3, r5, ip, sp}	; <UNPREDICTABLE>
     fa8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     fac:	2f006564 	svccs	0x00006564
     fb0:	2f727375 	svccs	0x00727375
     fb4:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     fb8:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     fbc:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     fc0:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
     fc4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     fc8:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
     fcc:	752f0073 	strvc	r0, [pc, #-115]!	; f61 <__Main_Stack_Size+0xb61>
     fd0:	612f7273 			; <UNDEFINED> instruction: 0x612f7273
     fd4:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     fd8:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     fdc:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     fe0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     fe4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     fe8:	69700000 	ldmdbvs	r0!, {}^	; <UNPREDICTABLE>
     fec:	00632e64 	rsbeq	r2, r3, r4, ror #28
     ff0:	63000001 	movwvs	r0, #1
     ff4:	5f65726f 	svcpl	0x0065726f
     ff8:	75466d63 	strbvc	r6, [r6, #-3427]	; 0xfffff29d
     ffc:	682e636e 	stmdavs	lr!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}
    1000:	00000200 	andeq	r0, r0, r0, lsl #4
    1004:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    1008:	672d746e 	strvs	r7, [sp, -lr, ror #8]!
    100c:	682e6363 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, sp, lr}
    1010:	00000300 	andeq	r0, r0, r0, lsl #6
    1014:	65726f63 	ldrbvs	r6, [r2, #-3939]!	; 0xfffff09d
    1018:	336d635f 	cmncc	sp, #2080374785	; 0x7c000001
    101c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
    1020:	79730000 	ldmdbvc	r3!, {}^	; <UNPREDICTABLE>
    1024:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
    1028:	6d74735f 	ldclvs	3, cr7, [r4, #-380]!	; 0xfffffe84
    102c:	31663233 	cmncc	r6, r3, lsr r2
    1030:	682e7830 	stmdavs	lr!, {r4, r5, fp, ip, sp, lr}
    1034:	00000200 	andeq	r0, r0, r0, lsl #4
    1038:	6b636f6c 	blvs	18dcdf0 <__Main_Stack_Size+0x18dc9f0>
    103c:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
    1040:	745f0000 	ldrbvc	r0, [pc], #-0	; 1048 <__Main_Stack_Size+0xc48>
    1044:	73657079 	cmnvc	r5, #121	; 0x79
    1048:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
    104c:	74730000 	ldrbtvc	r0, [r3], #-0
    1050:	66656464 	strbtvs	r6, [r5], -r4, ror #8
    1054:	0300682e 	movweq	r6, #2094	; 0x82e
    1058:	65720000 	ldrbvs	r0, [r2, #-0]!
    105c:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    1060:	00040068 	andeq	r0, r4, r8, rrx
    1064:	64697000 	strbtvs	r7, [r9], #-0
    1068:	0100682e 	tsteq	r0, lr, lsr #16
    106c:	74730000 	ldrbtvc	r0, [r3], #-0
    1070:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
    1074:	0500682e 	streq	r6, [r0, #-2094]	; 0xfffff7d2
    1078:	00000000 	andeq	r0, r0, r0
    107c:	10f80205 	rscsne	r0, r8, r5, lsl #4
    1080:	03190800 	tsteq	r9, #0, 16
    1084:	4503013b 	strmi	r0, [r3, #-315]	; 0xfffffec5
    1088:	203c0320 	eorscs	r0, ip, r0, lsr #6
    108c:	342e4603 	strtcc	r4, [lr], #-1539	; 0xfffff9fd
    1090:	03203303 			; <UNDEFINED> instruction: 0x03203303
    1094:	3a032047 	bcc	c91b8 <__Main_Stack_Size+0xc8db8>
    1098:	20460320 	subcs	r0, r6, r0, lsr #6
    109c:	33222121 			; <UNDEFINED> instruction: 0x33222121
    10a0:	2121211d 			; <UNDEFINED> instruction: 0x2121211d
    10a4:	01000302 	tsteq	r0, r2, lsl #6
    10a8:	02050001 	andeq	r0, r5, #1
    10ac:	08001124 	stmdaeq	r0, {r2, r5, r8, ip}
    10b0:	13011603 	movwne	r1, #5635	; 0x1603
    10b4:	00010221 	andeq	r0, r1, r1, lsr #4
    10b8:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
    10bc:	00112802 	andseq	r2, r1, r2, lsl #16
    10c0:	011c0308 	tsteq	ip, r8, lsl #6
    10c4:	74120313 	ldrvc	r0, [r2], #-787	; 0xfffffced
    10c8:	206f0322 	rsbcs	r0, pc, r2, lsr #6
    10cc:	1d343030 	ldcne	0, cr3, [r4, #-192]!	; 0xffffff40
    10d0:	22223b23 	eorcs	r3, r2, #35840	; 0x8c00
    10d4:	01000202 	tsteq	r0, r2, lsl #4
    10d8:	02050001 	andeq	r0, r5, #1
    10dc:	08001158 	stmdaeq	r0, {r3, r4, r6, r8, ip}
    10e0:	13013503 	movwne	r3, #5379	; 0x1503
    10e4:	00010221 	andeq	r0, r1, r1, lsr #4
    10e8:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
    10ec:	00115c02 	andseq	r5, r1, r2, lsl #24
    10f0:	013b0308 	teqeq	fp, r8, lsl #6
    10f4:	01022113 	tsteq	r2, r3, lsl r1
    10f8:	00010100 	andeq	r0, r1, r0, lsl #2
    10fc:	00000205 	andeq	r0, r0, r5, lsl #4
    1100:	c1030000 	mrsgt	r0, (UNDEF: 3)
    1104:	1f140100 	svcne	0x00140100
    1108:	2d212d2f 	stccs	13, cr2, [r1, #-188]!	; 0xffffff44
    110c:	01022f21 	tsteq	r2, r1, lsr #30
    1110:	00010100 	andeq	r0, r1, r0, lsl #2
    1114:	11600205 	cmnne	r0, r5, lsl #4
    1118:	c8030800 	stmdagt	r3, {fp}
    111c:	1e300100 	rsfnes	f0, f0, f0
    1120:	212d3f22 			; <UNDEFINED> instruction: 0x212d3f22
    1124:	3f03221f 	svccc	0x0003221f
    1128:	3c4a0320 	mcrrcc	3, 2, r0, sl, cr0
    112c:	f2030204 	vhsub.s8	d0, d3, d4
    1130:	01042e01 	tsteq	r4, r1, lsl #28
    1134:	207e9203 	rsbscs	r9, lr, r3, lsl #4
    1138:	e3030204 	movw	r0, #12804	; 0x3204
    113c:	01046601 	tsteq	r4, r1, lsl #12
    1140:	207e9f03 	rsbscs	r9, lr, r3, lsl #30
    1144:	1f2f233f 	svcne	0x002f233f
    1148:	2003251f 	andcs	r2, r3, pc, lsl r5
    114c:	002d7890 	mlaeq	sp, r0, r8, r7
    1150:	03020402 	movweq	r0, #9218	; 0x2402
    1154:	002e7fb9 	strhteq	r7, [lr], -r9
    1158:	1f020402 	svcne	0x00020402
    115c:	02040200 	andeq	r0, r4, #0, 4
    1160:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
    1164:	02002d02 	andeq	r2, r0, #2, 26	; 0x80
    1168:	00210204 	eoreq	r0, r1, r4, lsl #4
    116c:	2d020402 	cfstrscs	mvf0, [r2, #-8]
    1170:	02040200 	andeq	r0, r4, #0, 4
    1174:	04020021 	streq	r0, [r2], #-33	; 0xffffffdf
    1178:	00ca0302 	sbceq	r0, sl, r2, lsl #6
    117c:	60033a2e 	andvs	r3, r3, lr, lsr #20
    1180:	04020066 	streq	r0, [r2], #-102	; 0xffffff9a
    1184:	00660602 	rsbeq	r0, r6, r2, lsl #12
    1188:	4a040402 	bmi	102198 <__Main_Stack_Size+0x101d98>
    118c:	1d692506 	cfstr64ne	mvdx2, [r9, #-24]!	; 0xffffffe8
    1190:	1d233934 			; <UNDEFINED> instruction: 0x1d233934
    1194:	04020031 	streq	r0, [r2], #-49	; 0xffffffcf
    1198:	00200602 	eoreq	r0, r0, r2, lsl #12
    119c:	06040402 	streq	r0, [r4], -r2, lsl #8
    11a0:	00660e03 	rsbeq	r0, r6, r3, lsl #28
    11a4:	03040402 	movweq	r0, #17410	; 0x4402
    11a8:	02003c72 	andeq	r3, r0, #29184	; 0x7200
    11ac:	00240404 	eoreq	r0, r4, r4, lsl #8
    11b0:	3f040402 	svccc	0x00040402
    11b4:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
    11b8:	04020023 	streq	r0, [r2], #-35	; 0xffffffdd
    11bc:	02002b04 	andeq	r2, r0, #4, 22	; 0x1000
    11c0:	005f0404 	subseq	r0, pc, r4, lsl #8
    11c4:	06010402 	streq	r0, [r1], -r2, lsl #8
    11c8:	04020082 	streq	r0, [r2], #-130	; 0xffffff7e
    11cc:	002e7404 	eoreq	r7, lr, r4, lsl #8
    11d0:	3c010402 	cfstrscc	mvf0, [r1], {2}
    11d4:	01000602 	tsteq	r0, r2, lsl #12
    11d8:	02050001 	andeq	r0, r5, #1
    11dc:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
    11e0:	01019103 	tsteq	r1, r3, lsl #2
    11e4:	3d1f2f2e 	ldccc	15, cr2, [pc, #-184]	; 1134 <__Main_Stack_Size+0xd34>
    11e8:	231d1f34 	tstcs	sp, #52, 30	; 0xd0
    11ec:	03362922 	teqeq	r6, #557056	; 0x88000
    11f0:	4d26207a 	stcmi	0, cr2, [r6, #-488]!	; 0xfffffe18
    11f4:	00020267 	andeq	r0, r2, r7, ror #4
    11f8:	Address 0x00000000000011f8 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
{
   0:	0000000c 	andeq	r0, r0, ip
  _exit (1);
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
  10:	0000000c 	andeq	r0, r0, ip
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
  14:	00000000 	andeq	r0, r0, r0
    *p++ = *from++;
  18:	0800010c 	stmdaeq	r0, {r2, r3, r8}
  while (p < region_end)
  1c:	00000004 	andeq	r0, r0, r4
		tx_cts = 0;
  20:	0000000c 	andeq	r0, r0, ip
		USART2->DR = (uint8_t) c;
  24:	00000000 	andeq	r0, r0, r0
  28:	08000110 	stmdaeq	r0, {r4, r8}
  2c:	00000002 	andeq	r0, r0, r2
  30:	0000000c 	andeq	r0, r0, ip
  34:	00000000 	andeq	r0, r0, r0
  38:	08000114 	stmdaeq	r0, {r2, r4, r8}
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000000c 	andeq	r0, r0, ip
  44:	00000000 	andeq	r0, r0, r0
  48:	08000128 	stmdaeq	r0, {r3, r5, r8}
  4c:	00000002 	andeq	r0, r0, r2
  50:	0000000c 	andeq	r0, r0, ip
  54:	00000000 	andeq	r0, r0, r0
  58:	0800012c 	stmdaeq	r0, {r2, r3, r5, r8}
  5c:	00000002 	andeq	r0, r0, r2
  60:	0000000c 	andeq	r0, r0, ip
  64:	00000000 	andeq	r0, r0, r0
  68:	08000130 	stmdaeq	r0, {r4, r5, r8}
  6c:	00000014 	andeq	r0, r0, r4, lsl r0
  70:	0000000c 	andeq	r0, r0, ip
  74:	00000000 	andeq	r0, r0, r0
  78:	08000144 	stmdaeq	r0, {r2, r6, r8}
  7c:	00000002 	andeq	r0, r0, r2
  80:	0000000c 	andeq	r0, r0, ip
  84:	00000000 	andeq	r0, r0, r0
  88:	08000148 	stmdaeq	r0, {r3, r6, r8}
  8c:	00000014 	andeq	r0, r0, r4, lsl r0
  90:	0000000c 	andeq	r0, r0, ip
  94:	00000000 	andeq	r0, r0, r0
  98:	0800015c 	stmdaeq	r0, {r2, r3, r4, r6, r8}
  9c:	00000002 	andeq	r0, r0, r2
  a0:	0000000c 	andeq	r0, r0, ip
  a4:	00000000 	andeq	r0, r0, r0
  a8:	08000160 	stmdaeq	r0, {r5, r6, r8}
  ac:	00000002 	andeq	r0, r0, r2
  b0:	0000000c 	andeq	r0, r0, ip
  b4:	00000000 	andeq	r0, r0, r0
  b8:	08000164 	stmdaeq	r0, {r2, r5, r6, r8}
  bc:	00000002 	andeq	r0, r0, r2
  c0:	0000000c 	andeq	r0, r0, ip
  c4:	00000000 	andeq	r0, r0, r0
  c8:	08000168 	stmdaeq	r0, {r3, r5, r6, r8}
  cc:	00000002 	andeq	r0, r0, r2
  d0:	0000000c 	andeq	r0, r0, ip
  d4:	00000000 	andeq	r0, r0, r0
  d8:	0800016c 	stmdaeq	r0, {r2, r3, r5, r6, r8}
  dc:	00000002 	andeq	r0, r0, r2
  e0:	0000000c 	andeq	r0, r0, ip
  e4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  e8:	7c020001 	stcvc	0, cr0, [r2], {1}
  ec:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  f0:	00000020 	andeq	r0, r0, r0, lsr #32
  f4:	000000e0 	andeq	r0, r0, r0, ror #1
  f8:	08000828 	stmdaeq	r0, {r3, r5, fp}
  fc:	00000104 	andeq	r0, r0, r4, lsl #2
 100:	84040e41 	strhi	r0, [r4], #-3649	; 0xfffff1bf
 104:	100e4701 	andne	r4, lr, r1, lsl #14
 108:	040e0a7a 	streq	r0, [lr], #-2682	; 0xfffff586
 10c:	000ec441 	andeq	ip, lr, r1, asr #8
 110:	00000b41 	andeq	r0, r0, r1, asr #22
 114:	0000000c 	andeq	r0, r0, ip
 118:	000000e0 	andeq	r0, r0, r0, ror #1
 11c:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
 120:	0000005c 	andeq	r0, r0, ip, asr r0
 124:	0000000c 	andeq	r0, r0, ip
 128:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 12c:	7c020001 	stcvc	0, cr0, [r2], {1}
 130:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 134:	0000000c 	andeq	r0, r0, ip
 138:	00000124 	andeq	r0, r0, r4, lsr #2
 13c:	08000180 	stmdaeq	r0, {r7, r8}
 140:	00000002 	andeq	r0, r0, r2
 144:	0000000c 	andeq	r0, r0, ip
 148:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 14c:	7c020001 	stcvc	0, cr0, [r2], {1}
 150:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 154:	00000014 	andeq	r0, r0, r4, lsl r0
 158:	00000144 	andeq	r0, r0, r4, asr #2
 15c:	08000988 	stmdaeq	r0, {r3, r7, r8, fp}
 160:	00000006 	andeq	r0, r0, r6
 164:	83080e41 	movwhi	r0, #36417	; 0x8e41
 168:	00018e02 	andeq	r8, r1, r2, lsl #28
 16c:	00000014 	andeq	r0, r0, r4, lsl r0
 170:	00000144 	andeq	r0, r0, r4, asr #2
 174:	00000000 	andeq	r0, r0, r0
 178:	0000000a 	andeq	r0, r0, sl
 17c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 180:	00018e02 	andeq	r8, r1, r2, lsl #28
 184:	0000000c 	andeq	r0, r0, ip
 188:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 18c:	7c020001 	stcvc	0, cr0, [r2], {1}
 190:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 194:	00000014 	andeq	r0, r0, r4, lsl r0
 198:	00000184 	andeq	r0, r0, r4, lsl #3
 19c:	08000990 	stmdaeq	r0, {r4, r7, r8, fp}
 1a0:	00000018 	andeq	r0, r0, r8, lsl r0
 1a4:	83080e41 	movwhi	r0, #36417	; 0x8e41
 1a8:	00018e02 	andeq	r8, r1, r2, lsl #28
 1ac:	0000000c 	andeq	r0, r0, ip
 1b0:	00000184 	andeq	r0, r0, r4, lsl #3
 1b4:	080009a8 	stmdaeq	r0, {r3, r5, r7, r8, fp}
 1b8:	00000004 	andeq	r0, r0, r4
 1bc:	0000000c 	andeq	r0, r0, ip
 1c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1c4:	7c020001 	stcvc	0, cr0, [r2], {1}
 1c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1cc:	0000000c 	andeq	r0, r0, ip
 1d0:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
 1d4:	080009ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, fp}
 1d8:	00000020 	andeq	r0, r0, r0, lsr #32
 1dc:	0000000c 	andeq	r0, r0, ip
 1e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1e4:	7c020001 	stcvc	0, cr0, [r2], {1}
 1e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1ec:	00000014 	andeq	r0, r0, r4, lsl r0
 1f0:	000001dc 	ldrdeq	r0, [r0], -ip
 1f4:	080009cc 	stmdaeq	r0, {r2, r3, r6, r7, r8, fp}
 1f8:	00000040 	andeq	r0, r0, r0, asr #32
 1fc:	83080e42 	movwhi	r0, #36418	; 0x8e42
 200:	00018e02 	andeq	r8, r1, r2, lsl #28
 204:	0000000c 	andeq	r0, r0, ip
 208:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 20c:	7c020001 	stcvc	0, cr0, [r2], {1}
 210:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 214:	0000000c 	andeq	r0, r0, ip
 218:	00000204 	andeq	r0, r0, r4, lsl #4
 21c:	00000000 	andeq	r0, r0, r0
 220:	00000020 	andeq	r0, r0, r0, lsr #32
 224:	0000000c 	andeq	r0, r0, ip
 228:	00000204 	andeq	r0, r0, r4, lsl #4
 22c:	00000000 	andeq	r0, r0, r0
 230:	00000010 	andeq	r0, r0, r0, lsl r0
 234:	00000014 	andeq	r0, r0, r4, lsl r0
 238:	00000204 	andeq	r0, r0, r4, lsl #4
 23c:	08000184 	stmdaeq	r0, {r2, r7, r8}
 240:	00000074 	andeq	r0, r0, r4, ror r0
 244:	8e040e41 	cdphi	14, 0, cr0, cr4, cr1, {2}
 248:	100e4101 	andne	r4, lr, r1, lsl #2
 24c:	0000000c 	andeq	r0, r0, ip
 250:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 254:	7c020001 	stcvc	0, cr0, [r2], {1}
 258:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 25c:	0000000c 	andeq	r0, r0, ip
 260:	0000024c 	andeq	r0, r0, ip, asr #4
 264:	08000a0c 	stmdaeq	r0, {r2, r3, r9, fp}
 268:	00000010 	andeq	r0, r0, r0, lsl r0
 26c:	00000014 	andeq	r0, r0, r4, lsl r0
 270:	0000024c 	andeq	r0, r0, ip, asr #4
 274:	00000000 	andeq	r0, r0, r0
 278:	00000010 	andeq	r0, r0, r0, lsl r0
 27c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 280:	00018e02 	andeq	r8, r1, r2, lsl #28
 284:	00000014 	andeq	r0, r0, r4, lsl r0
 288:	0000024c 	andeq	r0, r0, ip, asr #4
 28c:	00000000 	andeq	r0, r0, r0
 290:	00000010 	andeq	r0, r0, r0, lsl r0
 294:	83080e41 	movwhi	r0, #36417	; 0x8e41
 298:	00018e02 	andeq	r8, r1, r2, lsl #28
 29c:	00000014 	andeq	r0, r0, r4, lsl r0
 2a0:	0000024c 	andeq	r0, r0, ip, asr #4
 2a4:	00000000 	andeq	r0, r0, r0
 2a8:	00000010 	andeq	r0, r0, r0, lsl r0
 2ac:	83080e41 	movwhi	r0, #36417	; 0x8e41
 2b0:	00018e02 	andeq	r8, r1, r2, lsl #28
 2b4:	00000014 	andeq	r0, r0, r4, lsl r0
 2b8:	0000024c 	andeq	r0, r0, ip, asr #4
 2bc:	00000000 	andeq	r0, r0, r0
 2c0:	00000010 	andeq	r0, r0, r0, lsl r0
 2c4:	83080e41 	movwhi	r0, #36417	; 0x8e41
 2c8:	00018e02 	andeq	r8, r1, r2, lsl #28
 2cc:	00000014 	andeq	r0, r0, r4, lsl r0
 2d0:	0000024c 	andeq	r0, r0, ip, asr #4
 2d4:	00000000 	andeq	r0, r0, r0
 2d8:	00000010 	andeq	r0, r0, r0, lsl r0
 2dc:	83080e41 	movwhi	r0, #36417	; 0x8e41
 2e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 2e4:	00000014 	andeq	r0, r0, r4, lsl r0
 2e8:	0000024c 	andeq	r0, r0, ip, asr #4
 2ec:	00000000 	andeq	r0, r0, r0
 2f0:	00000010 	andeq	r0, r0, r0, lsl r0
 2f4:	83080e41 	movwhi	r0, #36417	; 0x8e41
 2f8:	00018e02 	andeq	r8, r1, r2, lsl #28
 2fc:	00000014 	andeq	r0, r0, r4, lsl r0
 300:	0000024c 	andeq	r0, r0, ip, asr #4
 304:	00000000 	andeq	r0, r0, r0
 308:	00000010 	andeq	r0, r0, r0, lsl r0
 30c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 310:	00018e02 	andeq	r8, r1, r2, lsl #28
 314:	00000014 	andeq	r0, r0, r4, lsl r0
 318:	0000024c 	andeq	r0, r0, ip, asr #4
 31c:	00000000 	andeq	r0, r0, r0
 320:	00000010 	andeq	r0, r0, r0, lsl r0
 324:	83080e41 	movwhi	r0, #36417	; 0x8e41
 328:	00018e02 	andeq	r8, r1, r2, lsl #28
 32c:	00000014 	andeq	r0, r0, r4, lsl r0
 330:	0000024c 	andeq	r0, r0, ip, asr #4
 334:	00000000 	andeq	r0, r0, r0
 338:	00000010 	andeq	r0, r0, r0, lsl r0
 33c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 340:	00018e02 	andeq	r8, r1, r2, lsl #28
 344:	00000014 	andeq	r0, r0, r4, lsl r0
 348:	0000024c 	andeq	r0, r0, ip, asr #4
 34c:	00000000 	andeq	r0, r0, r0
 350:	0000000e 	andeq	r0, r0, lr
 354:	83080e41 	movwhi	r0, #36417	; 0x8e41
 358:	00018e02 	andeq	r8, r1, r2, lsl #28
 35c:	00000014 	andeq	r0, r0, r4, lsl r0
 360:	0000024c 	andeq	r0, r0, ip, asr #4
 364:	00000000 	andeq	r0, r0, r0
 368:	00000010 	andeq	r0, r0, r0, lsl r0
 36c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 370:	00018e02 	andeq	r8, r1, r2, lsl #28
 374:	00000014 	andeq	r0, r0, r4, lsl r0
 378:	0000024c 	andeq	r0, r0, ip, asr #4
 37c:	00000000 	andeq	r0, r0, r0
 380:	00000010 	andeq	r0, r0, r0, lsl r0
 384:	83080e41 	movwhi	r0, #36417	; 0x8e41
 388:	00018e02 	andeq	r8, r1, r2, lsl #28
 38c:	00000014 	andeq	r0, r0, r4, lsl r0
 390:	0000024c 	andeq	r0, r0, ip, asr #4
 394:	00000000 	andeq	r0, r0, r0
 398:	00000010 	andeq	r0, r0, r0, lsl r0
 39c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 3a0:	00018e02 	andeq	r8, r1, r2, lsl #28
 3a4:	00000014 	andeq	r0, r0, r4, lsl r0
 3a8:	0000024c 	andeq	r0, r0, ip, asr #4
 3ac:	00000000 	andeq	r0, r0, r0
 3b0:	00000010 	andeq	r0, r0, r0, lsl r0
 3b4:	83080e41 	movwhi	r0, #36417	; 0x8e41
 3b8:	00018e02 	andeq	r8, r1, r2, lsl #28
 3bc:	00000014 	andeq	r0, r0, r4, lsl r0
 3c0:	0000024c 	andeq	r0, r0, ip, asr #4
 3c4:	00000000 	andeq	r0, r0, r0
 3c8:	00000010 	andeq	r0, r0, r0, lsl r0
 3cc:	83080e41 	movwhi	r0, #36417	; 0x8e41
 3d0:	00018e02 	andeq	r8, r1, r2, lsl #28
 3d4:	00000014 	andeq	r0, r0, r4, lsl r0
 3d8:	0000024c 	andeq	r0, r0, ip, asr #4
 3dc:	00000000 	andeq	r0, r0, r0
 3e0:	00000010 	andeq	r0, r0, r0, lsl r0
 3e4:	83080e41 	movwhi	r0, #36417	; 0x8e41
 3e8:	00018e02 	andeq	r8, r1, r2, lsl #28
 3ec:	00000014 	andeq	r0, r0, r4, lsl r0
 3f0:	0000024c 	andeq	r0, r0, ip, asr #4
 3f4:	00000000 	andeq	r0, r0, r0
 3f8:	00000010 	andeq	r0, r0, r0, lsl r0
 3fc:	83080e41 	movwhi	r0, #36417	; 0x8e41
 400:	00018e02 	andeq	r8, r1, r2, lsl #28
 404:	00000014 	andeq	r0, r0, r4, lsl r0
 408:	0000024c 	andeq	r0, r0, ip, asr #4
 40c:	00000000 	andeq	r0, r0, r0
 410:	00000010 	andeq	r0, r0, r0, lsl r0
 414:	83080e41 	movwhi	r0, #36417	; 0x8e41
 418:	00018e02 	andeq	r8, r1, r2, lsl #28
 41c:	00000014 	andeq	r0, r0, r4, lsl r0
 420:	0000024c 	andeq	r0, r0, ip, asr #4
 424:	00000000 	andeq	r0, r0, r0
 428:	00000010 	andeq	r0, r0, r0, lsl r0
 42c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 430:	00018e02 	andeq	r8, r1, r2, lsl #28
 434:	00000014 	andeq	r0, r0, r4, lsl r0
 438:	0000024c 	andeq	r0, r0, ip, asr #4
 43c:	00000000 	andeq	r0, r0, r0
 440:	00000010 	andeq	r0, r0, r0, lsl r0
 444:	83080e41 	movwhi	r0, #36417	; 0x8e41
 448:	00018e02 	andeq	r8, r1, r2, lsl #28
 44c:	00000014 	andeq	r0, r0, r4, lsl r0
 450:	0000024c 	andeq	r0, r0, ip, asr #4
 454:	00000000 	andeq	r0, r0, r0
 458:	00000010 	andeq	r0, r0, r0, lsl r0
 45c:	83080e41 	movwhi	r0, #36417	; 0x8e41
 460:	00018e02 	andeq	r8, r1, r2, lsl #28
 464:	00000014 	andeq	r0, r0, r4, lsl r0
 468:	0000024c 	andeq	r0, r0, ip, asr #4
 46c:	00000000 	andeq	r0, r0, r0
 470:	00000010 	andeq	r0, r0, r0, lsl r0
 474:	83080e41 	movwhi	r0, #36417	; 0x8e41
 478:	00018e02 	andeq	r8, r1, r2, lsl #28
 47c:	0000000c 	andeq	r0, r0, ip
 480:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 484:	7c020001 	stcvc	0, cr0, [r2], {1}
 488:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 48c:	0000004c 	andeq	r0, r0, ip, asr #32
 490:	0000047c 	andeq	r0, r0, ip, ror r4
 494:	08000a1c 	stmdaeq	r0, {r2, r3, r4, r9, fp}
 498:	000001c4 	andeq	r0, r0, r4, asr #3
 49c:	840c0e42 	strhi	r0, [ip], #-3650	; 0xfffff1be
 4a0:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 4a4:	180e4501 	stmdane	lr, {r0, r8, sl, lr}
 4a8:	0c0e0a5f 			; <UNDEFINED> instruction: 0x0c0e0a5f
 4ac:	0a4d0b41 	beq	13431b8 <__Main_Stack_Size+0x1342db8>
 4b0:	0b410c0e 	bleq	10434f0 <__Main_Stack_Size+0x10430f0>
 4b4:	0c0e0a4d 			; <UNDEFINED> instruction: 0x0c0e0a4d
 4b8:	41020b41 	tstmi	r2, r1, asr #22
 4bc:	410c0e0a 	tstmi	ip, sl, lsl #28
 4c0:	0e0a4c0b 	cdpeq	12, 0, cr4, cr10, cr11, {0}
 4c4:	520b410c 	andpl	r4, fp, #12, 2
 4c8:	410c0e0a 	tstmi	ip, sl, lsl #28
 4cc:	0e0a4d0b 	cdpeq	13, 0, cr4, cr10, cr11, {0}
 4d0:	4d0b410c 	stfmis	f4, [fp, #-48]	; 0xffffffd0
 4d4:	410c0e0a 	tstmi	ip, sl, lsl #28
 4d8:	0000000b 	andeq	r0, r0, fp
 4dc:	0000001c 	andeq	r0, r0, ip, lsl r0
 4e0:	0000047c 	andeq	r0, r0, ip, ror r4
 4e4:	08000be0 	stmdaeq	r0, {r5, r6, r7, r8, r9, fp}
 4e8:	00000088 	andeq	r0, r0, r8, lsl #1
 4ec:	83080e41 	movwhi	r0, #36417	; 0x8e41
 4f0:	5e018e02 	cdppl	14, 0, cr8, cr1, cr2, {0}
 4f4:	0ec3ce0a 	cdpeq	14, 12, cr12, cr3, cr10, {0}
 4f8:	000b4200 	andeq	r4, fp, r0, lsl #4
 4fc:	00000018 	andeq	r0, r0, r8, lsl r0
 500:	0000047c 	andeq	r0, r0, ip, ror r4
 504:	08000c68 	stmdaeq	r0, {r3, r5, r6, sl, fp}
 508:	00000068 	andeq	r0, r0, r8, rrx
 50c:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 510:	63018e02 	movwvs	r8, #7682	; 0x1e02
 514:	000ec4ce 	andeq	ip, lr, lr, asr #9
 518:	00000018 	andeq	r0, r0, r8, lsl r0
 51c:	0000047c 	andeq	r0, r0, ip, ror r4
 520:	00000000 	andeq	r0, r0, r0
 524:	0000003c 	andeq	r0, r0, ip, lsr r0
 528:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 52c:	56018e02 	strpl	r8, [r1], -r2, lsl #28
 530:	000ec4ce 	andeq	ip, lr, lr, asr #9
 534:	00000014 	andeq	r0, r0, r4, lsl r0
 538:	0000047c 	andeq	r0, r0, ip, ror r4
 53c:	08000cd0 	stmdaeq	r0, {r4, r6, r7, sl, fp}
 540:	000000a4 	andeq	r0, r0, r4, lsr #1
 544:	8e040e41 	cdphi	14, 0, cr0, cr4, cr1, {2}
 548:	100e4401 	andne	r4, lr, r1, lsl #8
 54c:	0000000c 	andeq	r0, r0, ip
 550:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 554:	7c020001 	stcvc	0, cr0, [r2], {1}
 558:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 55c:	00000018 	andeq	r0, r0, r8, lsl r0
 560:	0000054c 	andeq	r0, r0, ip, asr #10
 564:	08000d74 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl, fp}
 568:	0000007c 	andeq	r0, r0, ip, ror r0
 56c:	84040e42 	strhi	r0, [r4], #-3650	; 0xfffff1be
 570:	c40a6901 	strgt	r6, [sl], #-2305	; 0xfffff6ff
 574:	0b41000e 	bleq	10405b4 <__Main_Stack_Size+0x10401b4>
 578:	0000000c 	andeq	r0, r0, ip
 57c:	0000054c 	andeq	r0, r0, ip, asr #10
 580:	08000df0 	stmdaeq	r0, {r4, r5, r6, r7, r8, sl, fp}
 584:	00000028 	andeq	r0, r0, r8, lsr #32
 588:	0000000c 	andeq	r0, r0, ip
 58c:	0000054c 	andeq	r0, r0, ip, asr #10
 590:	08000e18 	stmdaeq	r0, {r3, r4, r9, sl, fp}
 594:	00000018 	andeq	r0, r0, r8, lsl r0
 598:	00000018 	andeq	r0, r0, r8, lsl r0
 59c:	0000054c 	andeq	r0, r0, ip, asr #10
 5a0:	00000000 	andeq	r0, r0, r0
 5a4:	00000038 	andeq	r0, r0, r8, lsr r0
 5a8:	84040e45 	strhi	r0, [r4], #-3653	; 0xfffff1bb
 5ac:	0ec44701 	cdpeq	7, 12, cr4, cr4, cr1, {0}
 5b0:	00000000 	andeq	r0, r0, r0
 5b4:	00000024 	andeq	r0, r0, r4, lsr #32
 5b8:	0000054c 	andeq	r0, r0, ip, asr #10
 5bc:	08000e30 	stmdaeq	r0, {r4, r5, r9, sl, fp}
 5c0:	00000050 	andeq	r0, r0, r0, asr r0
 5c4:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 5c8:	86038504 	strhi	r8, [r3], -r4, lsl #10
 5cc:	5a018702 	bpl	621dc <__Main_Stack_Size+0x61ddc>
 5d0:	c5c6c70a 	strbgt	ip, [r6, #1802]	; 0x70a
 5d4:	41000ec4 	smlabtmi	r0, r4, lr, r0
 5d8:	0000000b 	andeq	r0, r0, fp
 5dc:	0000001c 	andeq	r0, r0, ip, lsl r0
 5e0:	0000054c 	andeq	r0, r0, ip, asr #10
 5e4:	08000e80 	stmdaeq	r0, {r7, r9, sl, fp}
 5e8:	00000054 	andeq	r0, r0, r4, asr r0
 5ec:	840c0e41 	strhi	r0, [ip], #-3649	; 0xfffff1bf
 5f0:	86028503 	strhi	r8, [r2], -r3, lsl #10
 5f4:	c5c65f01 	strbgt	r5, [r6, #3841]	; 0xf01
 5f8:	00000ec4 	andeq	r0, r0, r4, asr #29
 5fc:	0000000c 	andeq	r0, r0, ip
 600:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 604:	7c020001 	stcvc	0, cr0, [r2], {1}
 608:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 60c:	0000001c 	andeq	r0, r0, ip, lsl r0
 610:	000005fc 	strdeq	r0, [r0], -ip
 614:	08000ed4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl, fp}
 618:	00000040 	andeq	r0, r0, r0, asr #32
 61c:	840c0e41 	strhi	r0, [ip], #-3649	; 0xfffff1bf
 620:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 624:	a80e4a01 	stmdage	lr, {r0, r9, fp, lr}
 628:	0c0e4f02 	stceq	15, cr4, [lr], {2}
 62c:	00000020 	andeq	r0, r0, r0, lsr #32
 630:	000005fc 	strdeq	r0, [r0], -ip
 634:	08000f14 	stmdaeq	r0, {r2, r4, r8, r9, sl, fp}
 638:	000000b8 	strheq	r0, [r0], -r8
 63c:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 640:	86038504 	strhi	r8, [r3], -r4, lsl #10
 644:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 648:	0202b00e 	andeq	fp, r2, #14
 64c:	00100e52 	andseq	r0, r0, r2, asr lr
 650:	0000000c 	andeq	r0, r0, ip
 654:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 658:	7c020001 	stcvc	0, cr0, [r2], {1}
 65c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 660:	00000020 	andeq	r0, r0, r0, lsr #32
 664:	00000650 	andeq	r0, r0, r0, asr r6
 668:	08000fcc 	stmdaeq	r0, {r2, r3, r6, r7, r8, r9, sl, fp}
 66c:	0000012c 	andeq	r0, r0, ip, lsr #2
 670:	841c0e42 	ldrhi	r0, [ip], #-3650	; 0xfffff1be
 674:	86068507 	strhi	r8, [r6], -r7, lsl #10
 678:	88048705 	stmdahi	r4, {r0, r2, r8, r9, sl, pc}
 67c:	8e028903 	vmlahi.f16	s16, s4, s6	; <UNPREDICTABLE>
 680:	00000001 	andeq	r0, r0, r1
 684:	0000000c 	andeq	r0, r0, ip
 688:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 68c:	7c020001 	stcvc	0, cr0, [r2], {1}
 690:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 694:	00000018 	andeq	r0, r0, r8, lsl r0
 698:	00000684 	andeq	r0, r0, r4, lsl #13
 69c:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
 6a0:	0000002c 	andeq	r0, r0, ip, lsr #32
 6a4:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 6a8:	4e018502 	cfsh32mi	mvfx8, mvfx1, #2
 6ac:	000ec4c5 	andeq	ip, lr, r5, asr #9
 6b0:	0000000c 	andeq	r0, r0, ip
 6b4:	00000684 	andeq	r0, r0, r4, lsl #13
 6b8:	08001124 	stmdaeq	r0, {r2, r5, r8, ip}
 6bc:	00000004 	andeq	r0, r0, r4
 6c0:	0000000c 	andeq	r0, r0, ip
 6c4:	00000684 	andeq	r0, r0, r4, lsl #13
 6c8:	08001128 	stmdaeq	r0, {r3, r5, r8, ip}
 6cc:	00000030 	andeq	r0, r0, r0, lsr r0
 6d0:	0000000c 	andeq	r0, r0, ip
 6d4:	00000684 	andeq	r0, r0, r4, lsl #13
 6d8:	08001158 	stmdaeq	r0, {r3, r4, r6, r8, ip}
 6dc:	00000004 	andeq	r0, r0, r4
 6e0:	0000000c 	andeq	r0, r0, ip
 6e4:	00000684 	andeq	r0, r0, r4, lsl #13
 6e8:	0800115c 	stmdaeq	r0, {r2, r3, r4, r6, r8, ip}
 6ec:	00000004 	andeq	r0, r0, r4
 6f0:	0000000c 	andeq	r0, r0, ip
 6f4:	00000684 	andeq	r0, r0, r4, lsl #13
 6f8:	00000000 	andeq	r0, r0, r0
 6fc:	00000018 	andeq	r0, r0, r8, lsl r0
 700:	0000002c 	andeq	r0, r0, ip, lsr #32
 704:	00000684 	andeq	r0, r0, r4, lsl #13
 708:	08001160 	stmdaeq	r0, {r5, r6, r8, ip}
 70c:	0000012c 	andeq	r0, r0, ip, lsr #2
 710:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 714:	86058506 	strhi	r8, [r5], -r6, lsl #10
 718:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 71c:	42018e02 	andmi	r8, r1, #2, 28
 720:	0a4a200e 	beq	1288760 <__Main_Stack_Size+0x1288360>
 724:	0b42180e 	bleq	1086764 <__Main_Stack_Size+0x1086364>
 728:	180e0a73 	stmdane	lr, {r0, r1, r4, r5, r6, r9, fp}
 72c:	00000b42 	andeq	r0, r0, r2, asr #22
 730:	0000001c 	andeq	r0, r0, ip, lsl r0
 734:	00000684 	andeq	r0, r0, r4, lsl #13
 738:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
 73c:	00000040 	andeq	r0, r0, r0, asr #32
 740:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 744:	86058506 	strhi	r8, [r5], -r6, lsl #10
 748:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 74c:	00018e02 	andeq	r8, r1, r2, lsl #28
 750:	0000000c 	andeq	r0, r0, ip
 754:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 758:	7c020001 	stcvc	0, cr0, [r2], {1}
 75c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 760:	0000000c 	andeq	r0, r0, ip
 764:	00000750 	andeq	r0, r0, r0, asr r7
 768:	080012cc 	stmdaeq	r0, {r2, r3, r6, r7, r9, ip}
 76c:	00000008 	andeq	r0, r0, r8
 770:	0000000c 	andeq	r0, r0, ip
 774:	00000750 	andeq	r0, r0, r0, asr r7
 778:	00000000 	andeq	r0, r0, r0
 77c:	00000008 	andeq	r0, r0, r8
 780:	0000000c 	andeq	r0, r0, ip
 784:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 788:	7c020001 	stcvc	0, cr0, [r2], {1}
 78c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 790:	0000000c 	andeq	r0, r0, ip
 794:	00000780 	andeq	r0, r0, r0, lsl #15
 798:	080012d4 	stmdaeq	r0, {r2, r4, r6, r7, r9, ip}
 79c:	00000010 	andeq	r0, r0, r0, lsl r0
 7a0:	0000000c 	andeq	r0, r0, ip
 7a4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7a8:	7c020001 	stcvc	0, cr0, [r2], {1}
 7ac:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 7b0:	0000000c 	andeq	r0, r0, ip
 7b4:	000007a0 	andeq	r0, r0, r0, lsr #15
 7b8:	080012e4 	stmdaeq	r0, {r2, r5, r6, r7, r9, ip}
 7bc:	0000000c 	andeq	r0, r0, ip
 7c0:	0000000c 	andeq	r0, r0, ip
 7c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7c8:	7c020001 	stcvc	0, cr0, [r2], {1}
 7cc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 7d0:	00000014 	andeq	r0, r0, r4, lsl r0
 7d4:	000007c0 	andeq	r0, r0, r0, asr #15
 7d8:	080012f0 	stmdaeq	r0, {r4, r5, r6, r7, r9, ip}
 7dc:	00000016 	andeq	r0, r0, r6, lsl r0
 7e0:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 7e4:	00018e02 	andeq	r8, r1, r2, lsl #28
 7e8:	0000000c 	andeq	r0, r0, ip
 7ec:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 7f0:	7c020001 	stcvc	0, cr0, [r2], {1}
 7f4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 7f8:	00000030 	andeq	r0, r0, r0, lsr r0
 7fc:	000007e8 	andeq	r0, r0, r8, ror #15
 800:	00000000 	andeq	r0, r0, r0
 804:	0000005e 	andeq	r0, r0, lr, asr r0
 808:	83040e41 	movwhi	r0, #20033	; 0x4e41
 80c:	100e4101 	andne	r4, lr, r1, lsl #2
 810:	03850484 	orreq	r0, r5, #132, 8	; 0x84000000
 814:	0e42028e 	cdpeq	2, 4, cr0, cr2, cr14, {4}
 818:	0a470180 	beq	11c0e20 <__Main_Stack_Size+0x11c0a20>
 81c:	ce42100e 	cdpgt	0, 4, cr1, cr2, cr14, {0}
 820:	040ec4c5 	streq	ip, [lr], #-1221	; 0xfffffb3b
 824:	000ec341 	andeq	ip, lr, r1, asr #6
 828:	00000b41 	andeq	r0, r0, r1, asr #22
 82c:	00000034 	andeq	r0, r0, r4, lsr r0
 830:	000007e8 	andeq	r0, r0, r8, ror #15
 834:	08001308 	stmdaeq	r0, {r3, r8, r9, ip}
 838:	00000068 	andeq	r0, r0, r8, rrx
 83c:	82080e41 	andhi	r0, r8, #1040	; 0x410
 840:	41018302 	tstmi	r1, r2, lsl #6
 844:	0584140e 	streq	r1, [r4, #1038]	; 0x40e
 848:	038e0485 	orreq	r0, lr, #-2063597568	; 0x85000000
 84c:	01880e43 	orreq	r0, r8, r3, asr #28
 850:	140e0a47 	strne	r0, [lr], #-2631	; 0xfffff5b9
 854:	c4c5ce42 	strbgt	ip, [r5], #3650	; 0xe42
 858:	c341080e 	movtgt	r0, #6158	; 0x180e
 85c:	41000ec2 	smlabtmi	r0, r2, lr, r0
 860:	0000000b 	andeq	r0, r0, fp
 864:	0000000c 	andeq	r0, r0, ip
 868:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 86c:	7c020001 	stcvc	0, cr0, [r2], {1}
 870:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 874:	0000002c 	andeq	r0, r0, ip, lsr #32
 878:	00000864 	andeq	r0, r0, r4, ror #16
 87c:	00000000 	andeq	r0, r0, r0
 880:	00000040 	andeq	r0, r0, r0, asr #32
 884:	82080e41 	andhi	r0, r8, #1040	; 0x410
 888:	41018302 	tstmi	r1, r2, lsl #6
 88c:	0484100e 	streq	r1, [r4], #14
 890:	0e41038e 	cdpeq	3, 4, cr0, cr1, cr14, {4}
 894:	0e590180 	rdfeq<illegal precision>	f0, f1, f0
 898:	c4ce4210 	strbgt	r4, [lr], #528	; 0x210
 89c:	c341080e 	movtgt	r0, #6158	; 0x180e
 8a0:	00000ec2 	andeq	r0, r0, r2, asr #29
 8a4:	0000002c 	andeq	r0, r0, ip, lsr #32
 8a8:	00000864 	andeq	r0, r0, r4, ror #16
 8ac:	08001370 	stmdaeq	r0, {r4, r5, r6, r8, r9, ip}
 8b0:	00000048 	andeq	r0, r0, r8, asr #32
 8b4:	810c0e41 	tsthi	ip, r1, asr #28
 8b8:	83028203 	movwhi	r8, #8707	; 0x2203
 8bc:	100e4301 	andne	r4, lr, r1, lsl #6
 8c0:	0e41048e 	cdpeq	4, 4, cr0, cr1, cr14, {4}
 8c4:	0e590180 	rdfeq<illegal precision>	f0, f1, f0
 8c8:	0ece4210 	mcreq	2, 6, r4, cr14, cr0, {0}
 8cc:	c2c3410c 	sbcgt	r4, r3, #12, 2
 8d0:	00000ec1 	andeq	r0, r0, r1, asr #29
 8d4:	0000000c 	andeq	r0, r0, ip
 8d8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 8dc:	7c020001 	stcvc	0, cr0, [r2], {1}
 8e0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 8e4:	00000024 	andeq	r0, r0, r4, lsr #32
 8e8:	000008d4 	ldrdeq	r0, [r0], -r4
 8ec:	080013b8 	stmdaeq	r0, {r3, r4, r5, r7, r8, r9, ip}
 8f0:	00000100 	andeq	r0, r0, r0, lsl #2
 8f4:	83280e42 			; <UNDEFINED> instruction: 0x83280e42
 8f8:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 8fc:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 900:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 904:	8b038a04 	blhi	e311c <__Main_Stack_Size+0xe2d1c>
 908:	00018e02 	andeq	r8, r1, r2, lsl #28
 90c:	00000018 	andeq	r0, r0, r8, lsl r0
 910:	000008d4 	ldrdeq	r0, [r0], -r4
 914:	00000000 	andeq	r0, r0, r0
 918:	00000024 	andeq	r0, r0, r4, lsr #32
 91c:	84180e41 	ldrhi	r0, [r8], #-3649	; 0xfffff1bf
 920:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 924:	0c0e4b01 			; <UNDEFINED> instruction: 0x0c0e4b01
 928:	00000014 	andeq	r0, r0, r4, lsl r0
 92c:	000008d4 	ldrdeq	r0, [r0], -r4
 930:	00000000 	andeq	r0, r0, r0
 934:	0000001c 	andeq	r0, r0, ip, lsl r0
 938:	8e100e41 	cdphi	14, 1, cr0, cr0, cr1, {2}
 93c:	040e4901 	streq	r4, [lr], #-2305	; 0xfffff6ff
 940:	00000018 	andeq	r0, r0, r8, lsl r0
 944:	000008d4 	ldrdeq	r0, [r0], -r4
 948:	080014b8 	stmdaeq	r0, {r3, r4, r5, r7, sl, ip}
 94c:	0000002c 	andeq	r0, r0, ip, lsr #32
 950:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 954:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 958:	0c0e4e01 	stceq	14, cr4, [lr], {1}
 95c:	0000000c 	andeq	r0, r0, ip
 960:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 964:	7c020001 	stcvc	0, cr0, [r2], {1}
 968:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 96c:	00000014 	andeq	r0, r0, r4, lsl r0
 970:	0000095c 	andeq	r0, r0, ip, asr r9
 974:	00000000 	andeq	r0, r0, r0
 978:	00000038 	andeq	r0, r0, r8, lsr r0
 97c:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 980:	00018e02 	andeq	r8, r1, r2, lsl #28
 984:	0000000c 	andeq	r0, r0, ip
 988:	0000095c 	andeq	r0, r0, ip, asr r9
 98c:	00000000 	andeq	r0, r0, r0
 990:	0000001c 	andeq	r0, r0, ip, lsl r0
 994:	0000000c 	andeq	r0, r0, ip
 998:	0000095c 	andeq	r0, r0, ip, asr r9
 99c:	080014e4 	stmdaeq	r0, {r2, r5, r6, r7, sl, ip}
 9a0:	00000006 	andeq	r0, r0, r6
 9a4:	0000000c 	andeq	r0, r0, ip
 9a8:	0000095c 	andeq	r0, r0, ip, asr r9
 9ac:	00000000 	andeq	r0, r0, r0
 9b0:	0000001c 	andeq	r0, r0, ip, lsl r0
 9b4:	0000000c 	andeq	r0, r0, ip
 9b8:	0000095c 	andeq	r0, r0, ip, asr r9
 9bc:	00000000 	andeq	r0, r0, r0
 9c0:	00000010 	andeq	r0, r0, r0, lsl r0
 9c4:	0000000c 	andeq	r0, r0, ip
 9c8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 9cc:	7c020001 	stcvc	0, cr0, [r2], {1}
 9d0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 9d4:	00000018 	andeq	r0, r0, r8, lsl r0
 9d8:	000009c4 	andeq	r0, r0, r4, asr #19
 9dc:	00000000 	andeq	r0, r0, r0
 9e0:	00000024 	andeq	r0, r0, r4, lsr #32
 9e4:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 9e8:	4b018502 	blmi	61df8 <__Main_Stack_Size+0x619f8>
 9ec:	000ec4c5 	andeq	ip, lr, r5, asr #9
 9f0:	00000018 	andeq	r0, r0, r8, lsl r0
 9f4:	000009c4 	andeq	r0, r0, r4, asr #19
 9f8:	080014ea 	stmdaeq	r0, {r1, r3, r5, r6, r7, sl, ip}
 9fc:	00000024 	andeq	r0, r0, r4, lsr #32
 a00:	4b080e41 	blmi	20430c <__Main_Stack_Size+0x203f0c>
 a04:	41000e0a 	tstmi	r0, sl, lsl #28
 a08:	0000000b 	andeq	r0, r0, fp
 a0c:	0000000c 	andeq	r0, r0, ip
 a10:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 a14:	7c020001 	stcvc	0, cr0, [r2], {1}
 a18:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 a1c:	00000020 	andeq	r0, r0, r0, lsr #32
 a20:	00000a0c 	andeq	r0, r0, ip, lsl #20
 a24:	0800150e 	stmdaeq	r0, {r1, r2, r3, r8, sl, ip}
 a28:	000000b6 	strheq	r0, [r0], -r6
 a2c:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 a30:	86078508 	strhi	r8, [r7], -r8, lsl #10
 a34:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 a38:	8a038904 	bhi	e2e50 <__Main_Stack_Size+0xe2a50>
 a3c:	00018e02 	andeq	r8, r1, r2, lsl #28
 a40:	00000028 	andeq	r0, r0, r8, lsr #32
 a44:	00000a0c 	andeq	r0, r0, ip, lsl #20
 a48:	00000000 	andeq	r0, r0, r0
 a4c:	000000f4 	strdeq	r0, [r0], -r4
 a50:	84300e43 	ldrthi	r0, [r0], #-3651	; 0xfffff1bd
 a54:	86088509 	strhi	r8, [r8], -r9, lsl #10
 a58:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 a5c:	8a048905 	bhi	122e78 <__Main_Stack_Size+0x122a78>
 a60:	8e028b03 	vmlahi.f64	d8, d2, d3
 a64:	0a690201 	beq	1a41270 <__Main_Stack_Size+0x1a40e70>
 a68:	0b42240e 	bleq	1089aa8 <__Main_Stack_Size+0x10896a8>
 a6c:	0000002c 	andeq	r0, r0, ip, lsr #32
 a70:	00000a0c 	andeq	r0, r0, ip, lsl #20
 a74:	080015c4 	stmdaeq	r0, {r2, r6, r7, r8, sl, ip}
 a78:	000001e8 	andeq	r0, r0, r8, ror #3
 a7c:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 a80:	86088509 	strhi	r8, [r8], -r9, lsl #10
 a84:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 a88:	8a048905 	bhi	122ea4 <__Main_Stack_Size+0x122aa4>
 a8c:	8e028b03 	vmlahi.f64	d8, d2, d3
 a90:	980e4101 	stmdals	lr, {r0, r8, lr}
 a94:	0adb0201 	beq	ff6c12a0 <_estack+0xdf6bc2a0>
 a98:	0b42240e 	bleq	1089ad8 <__Main_Stack_Size+0x10896d8>
 a9c:	0000000c 	andeq	r0, r0, ip
 aa0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 aa4:	7c020001 	stcvc	0, cr0, [r2], {1}
 aa8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 aac:	00000020 	andeq	r0, r0, r0, lsr #32
 ab0:	00000a9c 	muleq	r0, ip, sl
 ab4:	080017ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, r9, sl, ip}
 ab8:	000000ee 	andeq	r0, r0, lr, ror #1
 abc:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 ac0:	86078508 	strhi	r8, [r7], -r8, lsl #10
 ac4:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 ac8:	8a038904 	bhi	e2ee0 <__Main_Stack_Size+0xe2ae0>
 acc:	00018e02 	andeq	r8, r1, r2, lsl #28
 ad0:	00000028 	andeq	r0, r0, r8, lsr #32
 ad4:	00000a9c 	muleq	r0, ip, sl
 ad8:	0800189c 	stmdaeq	r0, {r2, r3, r4, r7, fp, ip}
 adc:	00000240 	andeq	r0, r0, r0, asr #4
 ae0:	841c0e42 	ldrhi	r0, [ip], #-3650	; 0xfffff1be
 ae4:	86068507 	strhi	r8, [r6], -r7, lsl #10
 ae8:	88048705 	stmdahi	r4, {r0, r2, r8, r9, sl, pc}
 aec:	8e028903 	vmlahi.f16	s16, s4, s6	; <UNPREDICTABLE>
 af0:	300e4301 	andcc	r4, lr, r1, lsl #6
 af4:	0e0a9b02 	vmlaeq.f64	d9, d10, d2
 af8:	000b421c 	andeq	r4, fp, ip, lsl r2
 afc:	0000000c 	andeq	r0, r0, ip
 b00:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 b04:	7c020001 	stcvc	0, cr0, [r2], {1}
 b08:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 b0c:	00000018 	andeq	r0, r0, r8, lsl r0
 b10:	00000afc 	strdeq	r0, [r0], -ip
 b14:	00000000 	andeq	r0, r0, r0
 b18:	00000024 	andeq	r0, r0, r4, lsr #32
 b1c:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 b20:	4b018502 	blmi	61f30 <__Main_Stack_Size+0x61b30>
 b24:	000ec4c5 	andeq	ip, lr, r5, asr #9
 b28:	0000000c 	andeq	r0, r0, ip
 b2c:	00000afc 	strdeq	r0, [r0], -ip
 b30:	08001adc 	stmdaeq	r0, {r2, r3, r4, r6, r7, r9, fp, ip}
 b34:	0000001a 	andeq	r0, r0, sl, lsl r0
 b38:	0000000c 	andeq	r0, r0, ip
 b3c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 b40:	7c020001 	stcvc	0, cr0, [r2], {1}
 b44:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 b48:	00000014 	andeq	r0, r0, r4, lsl r0
 b4c:	00000b38 	andeq	r0, r0, r8, lsr fp
 b50:	08001af6 	stmdaeq	r0, {r1, r2, r4, r5, r6, r7, r9, fp, ip}
 b54:	0000001c 	andeq	r0, r0, ip, lsl r0
 b58:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 b5c:	00018e02 	andeq	r8, r1, r2, lsl #28
 b60:	0000000c 	andeq	r0, r0, ip
 b64:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 b68:	7c020001 	stcvc	0, cr0, [r2], {1}
 b6c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 b70:	00000014 	andeq	r0, r0, r4, lsl r0
 b74:	00000b60 	andeq	r0, r0, r0, ror #22
 b78:	08001b12 	stmdaeq	r0, {r1, r4, r8, r9, fp, ip}
 b7c:	00000034 	andeq	r0, r0, r4, lsr r0
 b80:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 b84:	00018e02 	andeq	r8, r1, r2, lsl #28
 b88:	0000000c 	andeq	r0, r0, ip
 b8c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 b90:	7c020001 	stcvc	0, cr0, [r2], {1}
 b94:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 b98:	00000024 	andeq	r0, r0, r4, lsr #32
 b9c:	00000b88 	andeq	r0, r0, r8, lsl #23
 ba0:	08001b48 	stmdaeq	r0, {r3, r6, r8, r9, fp, ip}
 ba4:	00000098 	muleq	r0, r8, r0
 ba8:	83100e41 	tsthi	r0, #1040	; 0x410
 bac:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 bb0:	54018e02 	strpl	r8, [r1], #-3586	; 0xfffff1fe
 bb4:	c4c5ce0a 	strbgt	ip, [r5], #3594	; 0xe0a
 bb8:	42000ec3 	andmi	r0, r0, #3120	; 0xc30
 bbc:	0000000b 	andeq	r0, r0, fp
 bc0:	0000000c 	andeq	r0, r0, ip
 bc4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 bc8:	7c020001 	stcvc	0, cr0, [r2], {1}
 bcc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 bd0:	00000018 	andeq	r0, r0, r8, lsl r0
 bd4:	00000bc0 	andeq	r0, r0, r0, asr #23
 bd8:	08001be0 	stmdaeq	r0, {r5, r6, r7, r8, r9, fp, ip}
 bdc:	000000bc 	strheq	r0, [r0], -ip
 be0:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 be4:	86038504 	strhi	r8, [r3], -r4, lsl #10
 be8:	00018e02 	andeq	r8, r1, r2, lsl #28
 bec:	0000000c 	andeq	r0, r0, ip
 bf0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 bf4:	7c020001 	stcvc	0, cr0, [r2], {1}
 bf8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 bfc:	00000028 	andeq	r0, r0, r8, lsr #32
 c00:	00000bec 	andeq	r0, r0, ip, ror #23
 c04:	08001c9c 	stmdaeq	r0, {r2, r3, r4, r7, sl, fp, ip}
 c08:	0000004c 	andeq	r0, r0, ip, asr #32
 c0c:	83180e41 	tsthi	r8, #1040	; 0x410
 c10:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 c14:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 c18:	47018e02 	strmi	r8, [r1, -r2, lsl #28]
 c1c:	c6c7ce0a 	strbgt	ip, [r7], sl, lsl #28
 c20:	0ec3c4c5 	cdpeq	4, 12, cr12, cr3, cr5, {6}
 c24:	000b4200 	andeq	r4, fp, r0, lsl #4
 c28:	0000000c 	andeq	r0, r0, ip
 c2c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 c30:	7c020001 	stcvc	0, cr0, [r2], {1}
 c34:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 c38:	00000018 	andeq	r0, r0, r8, lsl r0
 c3c:	00000c28 	andeq	r0, r0, r8, lsr #24
 c40:	08001ce8 	stmdaeq	r0, {r3, r5, r6, r7, sl, fp, ip}
 c44:	00000020 	andeq	r0, r0, r0, lsr #32
 c48:	83100e41 	tsthi	r0, #1040	; 0x410
 c4c:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 c50:	00018e02 	andeq	r8, r1, r2, lsl #28
 c54:	0000000c 	andeq	r0, r0, ip
 c58:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 c5c:	7c020001 	stcvc	0, cr0, [r2], {1}
 c60:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 c64:	0000000c 	andeq	r0, r0, ip
 c68:	00000c54 	andeq	r0, r0, r4, asr ip
 c6c:	08001d08 	stmdaeq	r0, {r3, r8, sl, fp, ip}
 c70:	00000002 	andeq	r0, r0, r2
 c74:	0000000c 	andeq	r0, r0, ip
 c78:	00000c54 	andeq	r0, r0, r4, asr ip
 c7c:	08001d0a 	stmdaeq	r0, {r1, r3, r8, sl, fp, ip}
 c80:	00000002 	andeq	r0, r0, r2
 c84:	0000000c 	andeq	r0, r0, ip
 c88:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 c8c:	7c020001 	stcvc	0, cr0, [r2], {1}
 c90:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 c94:	0000000c 	andeq	r0, r0, ip
 c98:	00000c84 	andeq	r0, r0, r4, lsl #25
 c9c:	08001d0c 	stmdaeq	r0, {r2, r3, r8, sl, fp, ip}
 ca0:	00000012 	andeq	r0, r0, r2, lsl r0

Disassembly of section .debug_str:

00000000 <.debug_str>:
{
       0:	65637845 	strbvs	r7, [r3, #-2117]!	; 0xfffff7bb
  _exit (1);
       4:	6f697470 	svcvs	0x00697470
       8:	6174536e 	cmnvs	r4, lr, ror #6
       c:	72466b63 	subvc	r6, r6, #101376	; 0x18c00
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
      10:	00656d61 	rsbeq	r6, r5, r1, ror #26
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
      14:	75626544 	strbvc	r6, [r2, #-1348]!	; 0xfffffabc
    *p++ = *from++;
      18:	6e6f4d67 	cdpvs	13, 6, cr4, cr15, cr7, {3}
  while (p < region_end)
      1c:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
		tx_cts = 0;
      20:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
		USART2->DR = (uint8_t) c;
      24:	73795300 	cmnvc	r9, #0, 6
      28:	6b636954 	blvs	18da580 <__Main_Stack_Size+0x18da180>
      2c:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
      30:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
      34:	73754200 	cmnvc	r5, #0, 4
      38:	6c756146 	ldfvse	f6, [r5], #-280	; 0xfffffee8
      3c:	61485f74 	hvcvs	34292	; 0x85f4
      40:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
      44:	00435f72 	subeq	r5, r3, r2, ror pc
      48:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; ffffff94 <_estack+0xdfffaf94>
      4c:	6c612f65 	stclvs	15, cr2, [r1], #-404	; 0xfffffe6c
      50:	2f787865 	svccs	0x00787865
      54:	706f7244 	rsbvc	r7, pc, r4, asr #4
      58:	2f786f62 	svccs	0x00786f62
      5c:	6a6f7270 	bvs	1bdca24 <__Main_Stack_Size+0x1bdc624>
      60:	73746365 	cmnvc	r4, #-1811939327	; 0x94000001
      64:	6d74732f 	ldclvs	3, cr7, [r4, #-188]!	; 0xffffff44
      68:	705f3233 	subsvc	r3, pc, r3, lsr r2	; <UNPREDICTABLE>
      6c:	662f6469 	strtvs	r6, [pc], -r9, ror #8
      70:	776d7269 	strbvc	r7, [sp, -r9, ror #4]!
      74:	00657261 	rsbeq	r7, r5, r1, ror #4
      78:	64726148 	ldrbtvs	r6, [r2], #-328	; 0xfffffeb8
      7c:	6c756146 	ldfvse	f6, [r5], #-280	; 0xfffffee8
      80:	61485f74 	hvcvs	34292	; 0x85f4
      84:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
      88:	00435f72 	subeq	r5, r3, r2, ror pc
      8c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
      90:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
      94:	61686320 	cmnvs	r8, r0, lsr #6
      98:	65520072 	ldrbvs	r0, [r2, #-114]	; 0xffffff8e
      9c:	5f746573 	svcpl	0x00746573
      a0:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
      a4:	0072656c 	rsbseq	r6, r2, ip, ror #10
      a8:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
      ac:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
      b0:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
      b4:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
      b8:	7300746e 	movwvc	r7, #1134	; 0x46e
      bc:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
      c0:	31462f6d 	cmpcc	r6, sp, ror #30
      c4:	4d5f5830 	ldclmi	8, cr5, [pc, #-192]	; c <_Minimum_Stack_Size-0xf4>
      c8:	78652f44 	stmdavc	r5!, {r2, r6, r8, r9, sl, fp, sp}^
      cc:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0xfffffa9d
      d0:	5f6e6f69 	svcpl	0x006e6f69
      d4:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
      d8:	7372656c 	cmnvc	r2, #108, 10	; 0x1b000000
      dc:	6c00632e 	stcvs	3, cr6, [r0], {46}	; 0x2e
      e0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
      e4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
      e8:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
      ec:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
      f0:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
      f4:	4d4e0074 	stclmi	0, cr0, [lr, #-464]	; 0xfffffe30
      f8:	61485f49 	cmpvs	r8, r9, asr #30
      fc:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
     100:	73550072 	cmpvc	r5, #114	; 0x72
     104:	46656761 	strbtmi	r6, [r5], -r1, ror #14
     108:	746c7561 	strbtvc	r7, [ip], #-1377	; 0xfffffa9f
     10c:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
     110:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
     114:	61735500 	cmnvs	r3, r0, lsl #10
     118:	61466567 	cmpvs	r6, r7, ror #10
     11c:	5f746c75 	svcpl	0x00746c75
     120:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
     124:	5f72656c 	svcpl	0x0072656c
     128:	6f6c0043 	svcvs	0x006c0043
     12c:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
     130:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     134:	00746e69 	rsbseq	r6, r4, r9, ror #28
     138:	64726148 	ldrbtvs	r6, [r2], #-328	; 0xfffffeb8
     13c:	6c756146 	ldfvse	f6, [r5], #-280	; 0xfffffee8
     140:	61485f74 	hvcvs	34292	; 0x85f4
     144:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
     148:	56530072 			; <UNDEFINED> instruction: 0x56530072
     14c:	61485f43 	cmpvs	r8, r3, asr #30
     150:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
     154:	75420072 	strbvc	r0, [r2, #-114]	; 0xffffff8e
     158:	75614673 	strbvc	r4, [r1, #-1651]!	; 0xfffff98d
     15c:	485f746c 	ldmdami	pc, {r2, r3, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
     160:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
     164:	47007265 	strmi	r7, [r0, -r5, ror #4]
     168:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
     16c:	37203131 			; <UNDEFINED> instruction: 0x37203131
     170:	302e312e 	eorcc	r3, lr, lr, lsr #2
     174:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
     178:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
     17c:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     180:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
     184:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
     188:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
     18c:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
     190:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
     194:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
     198:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
     19c:	672d2062 	strvs	r2, [sp, -r2, rrx]!
     1a0:	334f2d20 	movtcc	r2, #64800	; 0xfd20
     1a4:	6d662d20 	stclvs	13, cr2, [r6, #-128]!	; 0xffffff80
     1a8:	61737365 	cmnvs	r3, r5, ror #6
     1ac:	6c2d6567 	cfstr32vs	mvfx6, [sp], #-412	; 0xfffffe64
     1b0:	74676e65 	strbtvc	r6, [r7], #-3685	; 0xfffff19b
     1b4:	20303d68 	eorscs	r3, r0, r8, ror #26
     1b8:	6973662d 	ldmdbvs	r3!, {r0, r2, r3, r5, r9, sl, sp, lr}^
     1bc:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     1c0:	6168632d 	cmnvs	r8, sp, lsr #6
     1c4:	662d2072 			; <UNDEFINED> instruction: 0x662d2072
     1c8:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
     1cc:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
     1d0:	6365732d 	cmnvs	r5, #-1275068416	; 0xb4000000
     1d4:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
     1d8:	662d2073 			; <UNDEFINED> instruction: 0x662d2073
     1dc:	61746164 	cmnvs	r4, r4, ror #2
     1e0:	6365732d 	cmnvs	r5, #-1275068416	; 0xb4000000
     1e4:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
     1e8:	662d2073 			; <UNDEFINED> instruction: 0x662d2073
     1ec:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
     1f0:	6e617473 	mcrvs	4, 3, r7, cr1, cr3, {3}
     1f4:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
     1f8:	6e662d20 	cdpvs	13, 6, cr2, cr6, cr0, {1}
     1fc:	6f6d2d6f 	svcvs	0x006d2d6f
     200:	6c2d6576 	cfstr32vs	mvfx6, [sp], #-472	; 0xfffffe28
     204:	2d706f6f 	ldclcs	15, cr6, [r0, #-444]!	; 0xfffffe44
     208:	61766e69 	cmnvs	r6, r9, ror #28
     20c:	6e616972 			; <UNDEFINED> instruction: 0x6e616972
     210:	73007374 	movwvc	r7, #884	; 0x374
     214:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
     218:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     21c:	6e655000 	cdpvs	0, 6, cr5, cr5, cr0, {0}
     220:	5f565364 	svcpl	0x00565364
     224:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
     228:	0072656c 	rsbseq	r6, r2, ip, ror #10
     22c:	4d6d654d 	cfstr64mi	mvdx6, [sp, #-308]!	; 0xfffffecc
     230:	67616e61 	strbvs	r6, [r1, -r1, ror #28]!
     234:	61485f65 	cmpvs	r8, r5, ror #30
     238:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
     23c:	72660072 	rsbvc	r0, r6, #114	; 0x72
     240:	00656d61 	rsbeq	r6, r5, r1, ror #26
     244:	5f434352 	svcpl	0x00434352
     248:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0xfffff6ac
     24c:	00666544 	rsbeq	r6, r6, r4, asr #10
     250:	31425041 	cmpcc	r2, r1, asr #32
     254:	52545352 	subspl	r5, r4, #1207959553	; 0x48000001
     258:	43444200 	movtmi	r4, #16896	; 0x4200
     25c:	53480052 	movtpl	r0, #32850	; 0x8052
     260:	61745345 	cmnvs	r4, r5, asr #6
     264:	00737574 	rsbseq	r7, r3, r4, ror r5
     268:	49555043 	ldmdbmi	r5, {r0, r1, r6, ip, lr}^
     26c:	45520044 	ldrbmi	r0, [r2, #-68]	; 0xffffffbc
     270:	56524553 			; <UNDEFINED> instruction: 0x56524553
     274:	00304445 	eorseq	r4, r0, r5, asr #8
     278:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
     27c:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
     280:	745f3874 	ldrbvc	r3, [pc], #-2164	; 288 <_Minimum_Stack_Size+0x188>
     284:	42504100 	subsmi	r4, r0, #0, 2
     288:	524e4531 	subpl	r4, lr, #205520896	; 0xc400000
     28c:	73797300 	cmnvc	r9, #0, 6
     290:	2f6d6574 	svccs	0x006d6574
     294:	58303146 	ldmdapl	r0!, {r1, r2, r6, r8, ip, sp}
     298:	2f444d5f 	svccs	0x00444d5f
     29c:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     2a0:	632e6d65 			; <UNDEFINED> instruction: 0x632e6d65
     2a4:	53434900 	movtpl	r4, #14592	; 0x3900
     2a8:	504f0052 	subpl	r0, pc, r2, asr r0	; <UNPREDICTABLE>
     2ac:	59454b54 	stmdbpl	r5, {r2, r4, r6, r8, r9, fp, lr}^
     2b0:	46420052 			; <UNDEFINED> instruction: 0x46420052
     2b4:	70005241 	andvc	r5, r0, r1, asr #4
     2b8:	756d6c6c 	strbvc	r6, [sp, #-3180]!	; 0xfffff394
     2bc:	41006c6c 	tstmi	r0, ip, ror #24
     2c0:	4e454248 	cdpmi	2, 4, cr4, cr5, cr8, {2}
     2c4:	50410052 	subpl	r0, r1, r2, asr r0
     2c8:	53523242 	cmppl	r2, #536870916	; 0x20000004
     2cc:	57005254 	smlsdpl	r0, r4, r2, r5
     2d0:	00525052 	subseq	r5, r2, r2, asr r0
     2d4:	52534643 	subspl	r4, r3, #70254592	; 0x4300000
     2d8:	74655300 	strbtvc	r5, [r5], #-768	; 0xfffffd00
     2dc:	43737953 	cmnmi	r3, #1359872	; 0x14c000
     2e0:	6b636f6c 	blvs	18dc098 <__Main_Stack_Size+0x18dbc98>
     2e4:	32376f54 	eorscc	r6, r7, #84, 30	; 0x150
     2e8:	6c6c7000 	stclvs	0, cr7, [ip], #-0
     2ec:	72756f73 	rsbsvc	r6, r5, #460	; 0x1cc
     2f0:	41006563 	tstmi	r0, r3, ror #10
     2f4:	52435249 	subpl	r5, r3, #-1879048188	; 0x90000004
     2f8:	42435300 	submi	r5, r3, #0, 6
     2fc:	7079545f 	rsbsvc	r5, r9, pc, asr r4
     300:	50410065 	subpl	r0, r1, r5, rrx
     304:	4e453242 	cdpmi	2, 4, cr3, cr5, cr2, {2}
     308:	74530052 	ldrbvc	r0, [r3], #-82	; 0xffffffae
     30c:	55747261 	ldrbpl	r7, [r4, #-609]!	; 0xfffffd9f
     310:	756f4370 	strbvc	r4, [pc, #-880]!	; ffffffa8 <_estack+0xdfffafa8>
     314:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
     318:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
     31c:	5f363174 	svcpl	0x00363174
     320:	48530074 	ldmdami	r3, {r2, r4, r5, r6}^
     324:	00525343 	subseq	r5, r2, r3, asr #6
     328:	74737953 	ldrbtvc	r7, [r3], #-2387	; 0xfffff6ad
     32c:	6f436d65 	svcvs	0x00436d65
     330:	6c436572 	cfstr64vs	mvdx6, [r3], {114}	; 0x72
     334:	556b636f 	strbpl	r6, [fp, #-879]!	; 0xfffffc91
     338:	74616470 	strbtvc	r6, [r1], #-1136	; 0xfffffb90
     33c:	4d4d0065 	stclmi	0, cr0, [sp, #-404]	; 0xfffffe6c
     340:	00524146 	subseq	r4, r2, r6, asr #2
     344:	74737953 	ldrbtvc	r7, [r3], #-2387	; 0xfffff6ad
     348:	6e496d65 	cdpvs	13, 4, cr6, cr9, cr5, {3}
     34c:	56007469 	strpl	r7, [r0], -r9, ror #8
     350:	00524f54 	subseq	r4, r2, r4, asr pc
     354:	52415349 	subpl	r5, r1, #603979777	; 0x24000001
     358:	53464400 	movtpl	r4, #25600	; 0x6400
     35c:	79530052 	ldmdbvc	r3, {r1, r4, r6}^
     360:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
     364:	65726f43 	ldrbvs	r6, [r2, #-3907]!	; 0xfffff0bd
     368:	636f6c43 	cmnvs	pc, #17152	; 0x4300
     36c:	4648006b 	strbmi	r0, [r8], -fp, rrx
     370:	4d005253 	sfmmi	f5, 4, [r0, #-332]	; 0xfffffeb4
     374:	0052464d 	subseq	r4, r2, sp, asr #12
     378:	50424841 	subpl	r4, r2, r1, asr #16
     37c:	63736572 	cmnvs	r3, #478150656	; 0x1c800000
     380:	6c626154 	stfvse	f6, [r2], #-336	; 0xfffffeb0
     384:	65530065 	ldrbvs	r0, [r3, #-101]	; 0xffffff9b
     388:	73795374 	cmnvc	r9, #116, 6	; 0xd0000001
     38c:	636f6c43 	cmnvs	pc, #17152	; 0x4300
     390:	4552006b 	ldrbmi	r0, [r2, #-107]	; 0xffffff95
     394:	00544553 	subseq	r4, r4, r3, asr r5
     398:	52534641 	subspl	r4, r3, #68157440	; 0x4100000
     39c:	53455200 	movtpl	r5, #20992	; 0x5200
     3a0:	45565245 	ldrbmi	r5, [r6, #-581]	; 0xfffffdbb
     3a4:	4c460044 	mcrrmi	0, 4, r0, r6, cr4
     3a8:	5f485341 	svcpl	0x00485341
     3ac:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0xfffff6ac
     3b0:	00666544 	rsbeq	r6, r6, r4, asr #10
     3b4:	5f4d5449 	svcpl	0x004d5449
     3b8:	75427852 	strbvc	r7, [r2, #-2130]	; 0xfffff7ae
     3bc:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
     3c0:	41504300 	cmpmi	r0, r0, lsl #6
     3c4:	70005243 	andvc	r5, r0, r3, asr #4
     3c8:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
     3cc:	0072656c 	rsbseq	r6, r2, ip, ror #10
     3d0:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     3d4:	462f6d65 	strtmi	r6, [pc], -r5, ror #26
     3d8:	5f583031 	svcpl	0x00583031
     3dc:	762f444d 	strtvc	r4, [pc], -sp, asr #8
     3e0:	6f746365 	svcvs	0x00746365
     3e4:	632e7372 			; <UNDEFINED> instruction: 0x632e7372
     3e8:	66654400 	strbtvs	r4, [r5], -r0, lsl #8
     3ec:	746c7561 	strbtvc	r7, [ip], #-1377	; 0xfffffa9f
     3f0:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
     3f4:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
     3f8:	73655f00 	cmnvc	r5, #0, 30
     3fc:	6b636174 	blvs	18d89d4 <__Main_Stack_Size+0x18d85d4>
     400:	695f5f00 	ldmdbvs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     404:	765f7273 			; <UNDEFINED> instruction: 0x765f7273
     408:	6f746365 	svcvs	0x00746365
     40c:	63007372 	movwvs	r7, #882	; 0x372
     410:	0065646f 	rsbeq	r6, r5, pc, ror #8
     414:	65725f5f 	ldrbvs	r5, [r2, #-3935]!	; 0xfffff0a1
     418:	5f746573 	svcpl	0x00746573
     41c:	64726168 	ldrbtvs	r6, [r2], #-360	; 0xfffffe98
     420:	65726177 	ldrbvs	r6, [r2, #-375]!	; 0xfffffe89
     424:	78655f00 	stmdavc	r5!, {r8, r9, sl, fp, ip, lr}^
     428:	61007469 	tstvs	r0, r9, ror #8
     42c:	74726f62 	ldrbtvc	r6, [r2], #-3938	; 0xfffff09e
     430:	73797300 	cmnvc	r9, #0, 6
     434:	2f6d6574 	svccs	0x006d6574
     438:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     43c:	5f2f6269 	svcpl	0x002f6269
     440:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
     444:	5f00632e 	svcpl	0x0000632e
     448:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     44c:	6c616974 			; <UNDEFINED> instruction: 0x6c616974
     450:	5f657a69 	svcpl	0x00657a69
     454:	64726168 	ldrbtvs	r6, [r2], #-360	; 0xfffffe98
     458:	65726177 	ldrbvs	r6, [r2, #-375]!	; 0xfffffe89
     45c:	695f5f00 	ldmdbvs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     460:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
     464:	7a696c61 	bvc	1a5b5f0 <__Main_Stack_Size+0x1a5b1f0>
     468:	61685f65 	cmnvs	r8, r5, ror #30
     46c:	61776472 	cmnvs	r7, r2, ror r4
     470:	655f6572 	ldrbvs	r6, [pc, #-1394]	; ffffff06 <_estack+0xdfffaf06>
     474:	796c7261 	stmdbvc	ip!, {r0, r5, r6, r9, ip, sp, lr}^
     478:	73797300 	cmnvc	r9, #0, 6
     47c:	2f6d6574 	svccs	0x006d6574
     480:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     484:	5f2f6269 	svcpl	0x002f6269
     488:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
     48c:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
     490:	685f657a 	ldmdavs	pc, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
     494:	77647261 	strbvc	r7, [r4, -r1, ror #4]!
     498:	2e657261 	cdpcs	2, 6, cr7, cr5, cr1, {3}
     49c:	5f5f0063 	svcpl	0x005f0063
     4a0:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
     4a4:	5f73726f 	svcpl	0x0073726f
     4a8:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
     4ac:	5f5f0074 	svcpl	0x005f0074
     4b0:	00425344 	subeq	r5, r2, r4, asr #6
     4b4:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     4b8:	6e2f6d65 	cdpvs	13, 2, cr6, cr15, cr5, {3}
     4bc:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     4c0:	725f2f62 	subsvc	r2, pc, #392	; 0x188
     4c4:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
     4c8:	7261685f 	rsbvc	r6, r1, #6225920	; 0x5f0000
     4cc:	72617764 	rsbvc	r7, r1, #100, 14	; 0x1900000
     4d0:	00632e65 	rsbeq	r2, r3, r5, ror #28
     4d4:	4349564e 	movtmi	r5, #38478	; 0x964e
     4d8:	7379535f 	cmnvc	r9, #2080374785	; 0x7c000001
     4dc:	526d6574 	rsbpl	r6, sp, #116, 10	; 0x1d000000
     4e0:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
     4e4:	73645f00 	cmnvc	r4, #0, 30
     4e8:	61685f6f 	cmnvs	r8, pc, ror #30
     4ec:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
     4f0:	61725f00 	cmnvs	r2, r0, lsl #30
     4f4:	3834646e 	ldmdacc	r4!, {r1, r2, r3, r5, r6, sl, sp, lr}
     4f8:	6d655f00 	stclvs	15, cr5, [r5, #-0]
     4fc:	65677265 	strbvs	r7, [r7, #-613]!	; 0xfffffd9b
     500:	0079636e 	rsbseq	r6, r9, lr, ror #6
     504:	7263775f 	rsbvc	r7, r3, #24903680	; 0x17c0000
     508:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
     50c:	6174735f 	cmnvs	r4, pc, asr r3
     510:	5f006574 	svcpl	0x00006574
     514:	72736377 	rsbsvc	r6, r3, #-603979775	; 0xdc000001
     518:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
     51c:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
     520:	00657461 	rsbeq	r7, r5, r1, ror #8
     524:	66626c5f 			; <UNDEFINED> instruction: 0x66626c5f
     528:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
     52c:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     530:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
     534:	00745f65 	rsbseq	r5, r4, r5, ror #30
     538:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
     53c:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
     540:	6174735f 	cmnvs	r4, pc, asr r3
     544:	5f006574 	svcpl	0x00006574
     548:	6f746377 	svcvs	0x00746377
     54c:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
     550:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
     554:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 55c <__Main_Stack_Size+0x15c>
     558:	65735f6d 	ldrbvs	r5, [r3, #-3949]!	; 0xfffff093
     55c:	755f0063 	ldrbvc	r0, [pc, #-99]	; 501 <__Main_Stack_Size+0x101>
     560:	00667562 	rsbeq	r7, r6, r2, ror #10
     564:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
     568:	5f5f0065 	svcpl	0x005f0065
     56c:	685f6d74 	ldmdavs	pc, {r2, r4, r5, r6, r8, sl, fp, sp, lr}^	; <UNPREDICTABLE>
     570:	0072756f 	rsbseq	r7, r2, pc, ror #10
     574:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
     578:	6e6f5f00 	cdpvs	15, 6, cr5, cr15, cr0, {0}
     57c:	6978655f 	ldmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, sl, sp, lr}^
     580:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
     584:	5f007367 	svcpl	0x00007367
     588:	6b6f6f63 	blvs	1bdc31c <__Main_Stack_Size+0x1bdbf1c>
     58c:	5f006569 	svcpl	0x00006569
     590:	6c67735f 	stclvs	3, cr7, [r7], #-380	; 0xfffffe84
     594:	5f006575 	svcpl	0x00006575
     598:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
     59c:	63006f6e 	movwvs	r6, #3950	; 0xf6e
     5a0:	65727275 	ldrbvs	r7, [r2, #-629]!	; 0xfffffd8b
     5a4:	625f746e 	subsvs	r7, pc, #1845493760	; 0x6e000000
     5a8:	6b636f6c 	blvs	18dc360 <__Main_Stack_Size+0x18dbf60>
     5ac:	6464615f 	strbtvs	r6, [r4], #-351	; 0xfffffea1
     5b0:	73736572 	cmnvc	r3, #478150656	; 0x1c800000
     5b4:	6c665f00 	stclvs	15, cr5, [r6], #-0
     5b8:	00736761 	rsbseq	r6, r3, r1, ror #14
     5bc:	5f73695f 	svcpl	0x0073695f
     5c0:	00617863 	rsbeq	r7, r1, r3, ror #16
     5c4:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
     5c8:	5f006e69 	svcpl	0x00006e69
     5cc:	5f737973 	svcpl	0x00737973
     5d0:	6c727265 	lfmvs	f7, 2, [r2], #-404	; 0xfffffe6c
     5d4:	00747369 	rsbseq	r7, r4, r9, ror #6
     5d8:	7476635f 	ldrbtvc	r6, [r6], #-863	; 0xfffffca1
     5dc:	00667562 	rsbeq	r7, r6, r2, ror #10
     5e0:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
     5e4:	00746573 	rsbseq	r6, r4, r3, ror r5
     5e8:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
     5ec:	776f7472 			; <UNDEFINED> instruction: 0x776f7472
     5f0:	735f7363 	cmpvc	pc, #-1946157055	; 0x8c000001
     5f4:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
     5f8:	626d5f00 	rsbvs	r5, sp, #0, 30
     5fc:	6e656c72 	mcrvs	12, 3, r6, cr5, cr2, {3}
     600:	6174735f 	cmnvs	r4, pc, asr r3
     604:	5f006574 	svcpl	0x00006574
     608:	72616e66 	rsbvc	r6, r1, #1632	; 0x660
     60c:	5f007367 	svcpl	0x00007367
     610:	00736e66 	rsbseq	r6, r3, r6, ror #28
     614:	72636e69 	rsbvc	r6, r3, #1680	; 0x690
     618:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
     61c:	5f006e67 	svcpl	0x00006e67
     620:	636f6c66 	cmnvs	pc, #26112	; 0x6600
     624:	00745f6b 	rsbseq	r5, r4, fp, ror #30
     628:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
     62c:	00727265 	rsbseq	r7, r2, r5, ror #4
     630:	6769425f 			; <UNDEFINED> instruction: 0x6769425f
     634:	00746e69 	rsbseq	r6, r4, r9, ror #28
     638:	6d61675f 	stclvs	7, cr6, [r1, #-380]!	; 0xfffffe84
     63c:	735f616d 	cmpvc	pc, #1073741851	; 0x4000001b
     640:	676e6769 	strbvs	r6, [lr, -r9, ror #14]!
     644:	5f006d61 	svcpl	0x00006d61
     648:	75736572 	ldrbvc	r6, [r3, #-1394]!	; 0xfffffa8e
     64c:	6b5f746c 	blvs	17dd804 <__Main_Stack_Size+0x17dd404>
     650:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 658 <__Main_Stack_Size+0x258>
     654:	5f5f006d 	svcpl	0x005f006d
     658:	62686377 	rsbvs	r6, r8, #-603979775	; 0xdc000001
     65c:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
     660:	74756f64 	ldrbtvc	r6, [r5], #-3940	; 0xfffff09c
     664:	76635f00 	strbtvc	r5, [r3], -r0, lsl #30
     668:	6e656c74 	mcrvs	12, 3, r6, cr5, cr4, {3}
     66c:	69665f00 	stmdbvs	r6!, {r8, r9, sl, fp, ip, lr}^
     670:	5f00656c 	svcpl	0x0000656c
     674:	626f696e 	rsbvs	r6, pc, #1802240	; 0x1b8000
     678:	485f0073 	ldmdami	pc, {r0, r1, r4, r5, r6}^	; <UNPREDICTABLE>
     67c:	5f706165 	svcpl	0x00706165
     680:	696d694c 	stmdbvs	sp!, {r2, r3, r6, r8, fp, sp, lr}^
     684:	615f0074 	cmpvs	pc, r4, ror r0	; <UNPREDICTABLE>
     688:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
     68c:	5f003074 	svcpl	0x00003074
     690:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     694:	625f6c61 	subsvs	r6, pc, #24832	; 0x6100
     698:	5f006675 	svcpl	0x00006675
     69c:	74637361 	strbtvc	r7, [r3], #-865	; 0xfffffc9f
     6a0:	5f656d69 	svcpl	0x00656d69
     6a4:	00667562 	rsbeq	r7, r6, r2, ror #10
     6a8:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
     6ac:	00746c75 	rsbseq	r6, r4, r5, ror ip
     6b0:	63775f5f 	cmnvs	r7, #380	; 0x17c
     6b4:	69770068 	ldmdbvs	r7!, {r3, r5, r6}^
     6b8:	745f746e 	ldrbvc	r7, [pc], #-1134	; 6c0 <__Main_Stack_Size+0x2c0>
     6bc:	6f6c5f00 	svcvs	0x006c5f00
     6c0:	5f006b63 	svcpl	0x00006b63
     6c4:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
     6c8:	5f003273 	svcpl	0x00003273
     6cc:	5f6d745f 	svcpl	0x006d745f
     6d0:	72616579 	rsbvc	r6, r1, #507510784	; 0x1e400000
     6d4:	4f4c5f00 	svcmi	0x004c5f00
     6d8:	525f4b43 	subspl	r4, pc, #68608	; 0x10c00
     6dc:	52554345 	subspl	r4, r5, #335544321	; 0x14000001
     6e0:	45564953 	ldrbmi	r4, [r6, #-2387]	; 0xfffff6ad
     6e4:	6c00545f 	cfstrsvs	mvf5, [r0], {95}	; 0x5f
     6e8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     6ec:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
     6f0:	5f00656c 	svcpl	0x0000656c
     6f4:	7478656e 	ldrbtvc	r6, [r8], #-1390	; 0xfffffa92
     6f8:	5f5f0066 	svcpl	0x005f0066
     6fc:	6d5f6d74 	ldclvs	13, cr6, [pc, #-464]	; 534 <__Main_Stack_Size+0x134>
     700:	5f006e6f 	svcpl	0x00006e6f
     704:	78657461 	stmdavc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
     708:	5f007469 	svcpl	0x00007469
     70c:	6964735f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
     710:	696e6964 	stmdbvs	lr!, {r2, r5, r6, r8, fp, sp, lr}^
     714:	665f0074 			; <UNDEFINED> instruction: 0x665f0074
     718:	6c656572 	cfstr64vs	mvdx6, [r5], #-456	; 0xfffffe38
     71c:	00747369 	rsbseq	r7, r4, r9, ror #6
     720:	6165485f 	cmnvs	r5, pc, asr r8
     724:	65425f70 	strbvs	r5, [r2, #-3952]	; 0xfffff090
     728:	006e6967 	rsbeq	r6, lr, r7, ror #18
     72c:	72727563 	rsbsvc	r7, r2, #415236096	; 0x18c00000
     730:	5f746e65 	svcpl	0x00746e65
     734:	70616568 	rsbvc	r6, r1, r8, ror #10
     738:	646e655f 	strbtvs	r6, [lr], #-1375	; 0xfffffaa1
     73c:	656e5f00 	strbvs	r5, [lr, #-3840]!	; 0xfffff100
     740:	685f0077 	ldmdavs	pc, {r0, r1, r2, r4, r5, r6}^	; <UNPREDICTABLE>
     744:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
     748:	5f006f6e 	svcpl	0x00006f6e
     74c:	5f6d745f 	svcpl	0x006d745f
     750:	79616479 	stmdbvc	r1!, {r0, r3, r4, r5, r6, sl, sp, lr}^
     754:	735f5f00 	cmpvc	pc, #0, 30
     758:	00667562 	rsbeq	r7, r6, r2, ror #10
     75c:	626f695f 	rsbvs	r6, pc, #1556480	; 0x17c000
     760:	5f5f0073 	svcpl	0x005f0073
     764:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
     768:	626d5f00 	rsbvs	r5, sp, #0, 30
     76c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
     770:	00745f65 	rsbseq	r5, r4, r5, ror #30
     774:	46735f5f 	uhsaxmi	r5, r3, pc	; <UNPREDICTABLE>
     778:	00454c49 	subeq	r4, r5, r9, asr #24
     77c:	7379735f 	cmnvc	r9, #2080374785	; 0x7c000001
     780:	72656e5f 	rsbvc	r6, r5, #1520	; 0x5f0
     784:	6d5f0072 	ldclvs	0, cr0, [pc, #-456]	; 5c4 <__Main_Stack_Size+0x1c4>
     788:	61747362 	cmnvs	r4, r2, ror #6
     78c:	5f006574 	svcpl	0x00006574
     790:	646e6172 	strbtvs	r6, [lr], #-370	; 0xfffffe8e
     794:	78656e5f 	stmdavc	r5!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^
     798:	6d5f0074 	ldclvs	0, cr0, [pc, #-464]	; 5d0 <__Main_Stack_Size+0x1d0>
     79c:	6e656c62 	cdpvs	12, 6, cr6, cr5, cr2, {3}
     7a0:	6174735f 	cmnvs	r4, pc, asr r3
     7a4:	5f006574 	svcpl	0x00006574
     7a8:	00636e69 	rsbeq	r6, r3, r9, ror #28
     7ac:	646e695f 	strbtvs	r6, [lr], #-2399	; 0xfffff6a1
     7b0:	6f6c5f00 	svcvs	0x006c5f00
     7b4:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
     7b8:	635f5f00 	cmpvs	pc, #0, 30
     7bc:	6e61656c 	cdpvs	5, 6, cr6, cr1, cr12, {3}
     7c0:	5f007075 	svcpl	0x00007075
     7c4:	70736e75 	rsbsvc	r6, r3, r5, ror lr
     7c8:	66696365 	strbtvs	r6, [r9], -r5, ror #6
     7cc:	5f646569 	svcpl	0x00646569
     7d0:	61636f6c 	cmnvs	r3, ip, ror #30
     7d4:	695f656c 	ldmdbvs	pc, {r2, r3, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
     7d8:	006f666e 	rsbeq	r6, pc, lr, ror #12
     7dc:	78616d5f 	stmdavc	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
     7e0:	00736477 	rsbseq	r6, r3, r7, ror r4
     7e4:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
     7e8:	5f00746e 	svcpl	0x0000746e
     7ec:	64656573 	strbtvs	r6, [r5], #-1395	; 0xfffffa8d
     7f0:	635f5f00 	cmpvs	pc, #0, 30
     7f4:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
     7f8:	765f5f00 	ldrbvc	r5, [pc], -r0, lsl #30
     7fc:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
     800:	65735f00 	ldrbvs	r5, [r3, #-3840]!	; 0xfffff100
     804:	63006b65 	movwvs	r6, #2917	; 0xb65
     808:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
     80c:	5f00745f 	svcpl	0x0000745f
     810:	736f7066 	cmnvc	pc, #102	; 0x66
     814:	5f00745f 	svcpl	0x0000745f
     818:	5f6d745f 	svcpl	0x006d745f
     81c:	006e696d 	rsbeq	r6, lr, sp, ror #18
     820:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     824:	6e2f6d65 	cdpvs	13, 2, cr6, cr15, cr5, {3}
     828:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     82c:	735f2f62 	cmpvc	pc, #392	; 0x188
     830:	2e6b7262 	cdpcs	2, 6, cr7, cr11, cr2, {3}
     834:	6d5f0063 	ldclvs	0, cr0, [pc, #-396]	; 6b0 <__Main_Stack_Size+0x2b0>
     838:	00746c75 	rsbseq	r6, r4, r5, ror ip
     83c:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
     840:	5f6b6f74 	svcpl	0x006b6f74
     844:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0xfffffe94
     848:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
     84c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
     850:	615f0073 	cmpvs	pc, r3, ror r0	; <UNPREDICTABLE>
     854:	5f006464 	svcpl	0x00006464
     858:	6f4c555f 	svcvs	0x004c555f
     85c:	5f00676e 	svcpl	0x0000676e
     860:	64746567 	ldrbtvs	r6, [r4], #-1383	; 0xfffffa99
     864:	5f657461 	svcpl	0x00657461
     868:	00727265 	rsbseq	r7, r2, r5, ror #4
     86c:	6f6c675f 	svcvs	0x006c675f
     870:	5f6c6162 	svcpl	0x006c6162
     874:	75706d69 	ldrbvc	r6, [r0, #-3433]!	; 0xfffff297
     878:	705f6572 	subsvc	r6, pc, r2, ror r5	; <UNPREDICTABLE>
     87c:	5f007274 	svcpl	0x00007274
     880:	73756e75 	cmnvc	r5, #1872	; 0x750
     884:	725f6465 	subsvc	r6, pc, #1694498816	; 0x65000000
     888:	00646e61 	rsbeq	r6, r4, r1, ror #28
     88c:	7364775f 	cmnvc	r4, #24903680	; 0x17c0000
     890:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 898 <__Main_Stack_Size+0x498>
     894:	64775f6d 	ldrbtvs	r5, [r7], #-3949	; 0xfffff093
     898:	5f007961 	svcpl	0x00007961
     89c:	65756c67 	ldrbvs	r6, [r5, #-3175]!	; 0xfffff399
     8a0:	6d6e5f00 	stclvs	15, cr5, [lr, #-0]
     8a4:	6f6c6c61 	svcvs	0x006c6c61
     8a8:	6c5f0063 	mrrcvs	0, 6, r0, pc, cr3	; <UNPREDICTABLE>
     8ac:	5f613436 	svcpl	0x00613436
     8b0:	00667562 	rsbeq	r7, r6, r2, ror #10
     8b4:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
     8b8:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
     8bc:	6e5f0063 	cdpvs	0, 5, cr0, cr15, cr3, {3}
     8c0:	00667562 	rsbeq	r7, r6, r2, ror #10
     8c4:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
     8c8:	00646573 	rsbeq	r6, r4, r3, ror r5
     8cc:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
     8d0:	6473695f 	ldrbtvs	r6, [r3], #-2399	; 0xfffff6a1
     8d4:	5f007473 	svcpl	0x00007473
     8d8:	61636f6c 	cmnvs	r3, ip, ror #30
     8dc:	6d69746c 	cfstrdvs	mvd7, [r9, #-432]!	; 0xfffffe50
     8e0:	75625f65 	strbvc	r5, [r2, #-3941]!	; 0xfffff09b
     8e4:	635f0066 	cmpvs	pc, #102	; 0x66
     8e8:	65736f6c 	ldrbvs	r6, [r3, #-3948]!	; 0xfffff094
     8ec:	34725f00 	ldrbtcc	r5, [r2], #-3840	; 0xfffff100
     8f0:	6d5f0038 	ldclvs	0, cr0, [pc, #-224]	; 818 <__Main_Stack_Size+0x418>
     8f4:	776f7462 	strbvc	r7, [pc, -r2, ror #8]!
     8f8:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
     8fc:	00657461 	rsbeq	r7, r5, r1, ror #8
     900:	7335705f 	teqvc	r5, #95	; 0x5f
     904:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 90c <__Main_Stack_Size+0x50c>
     908:	646d5f6d 	strbtvs	r5, [sp], #-3949	; 0xfffff093
     90c:	5f007961 	svcpl	0x00007961
     910:	6b726273 	blvs	1c992e4 <__Main_Stack_Size+0x1c98ee4>
     914:	695f5f00 	ldmdbvs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     918:	5f74696e 	svcpl	0x0074696e
     91c:	61727261 	cmnvs	r2, r1, ror #4
     920:	74735f79 	ldrbtvc	r5, [r3], #-3961	; 0xfffff087
     924:	00747261 	rsbseq	r7, r4, r1, ror #4
     928:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
     92c:	61697469 	cmnvs	r9, r9, ror #8
     930:	657a696c 	ldrbvs	r6, [sl, #-2412]!	; 0xfffff694
     934:	7373625f 	cmnvc	r3, #-268435451	; 0xf0000005
     938:	64735f00 	ldrbtvs	r5, [r3], #-3840	; 0xfffff100
     93c:	00617461 	rsbeq	r7, r1, r1, ror #8
     940:	73625f5f 	cmnvc	r2, #380	; 0x17c
     944:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
     948:	5f747261 	svcpl	0x00747261
     94c:	6572005f 	ldrbvs	r0, [r2, #-95]!	; 0xffffffa1
     950:	6e6f6967 	vnmulvs.f16	s13, s30, s15	; <UNPREDICTABLE>
     954:	6765625f 			; <UNDEFINED> instruction: 0x6765625f
     958:	5f006e69 	svcpl	0x00006e69
     95c:	7373625f 	cmnvc	r3, #-268435451	; 0xf0000005
     960:	646e655f 	strbtvs	r6, [lr], #-1375	; 0xfffffaa1
     964:	66005f5f 			; <UNDEFINED> instruction: 0x66005f5f
     968:	006d6f72 	rsbeq	r6, sp, r2, ror pc
     96c:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0xfffff68d
     970:	6e2f6d65 	cdpvs	13, 2, cr6, cr15, cr5, {3}
     974:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     978:	735f2f62 	cmpvc	pc, #392	; 0x188
     97c:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
     980:	632e7075 			; <UNDEFINED> instruction: 0x632e7075
     984:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
     988:	61746164 	cmnvs	r4, r4, ror #2
     98c:	67657200 	strbvs	r7, [r5, -r0, lsl #4]!
     990:	5f6e6f69 	svcpl	0x006e6f69
     994:	00646e65 	rsbeq	r6, r4, r5, ror #28
     998:	6e69616d 	powvsez	f6, f1, #5.0
     99c:	705f5f00 	subsvc	r5, pc, r0, lsl #30
     9a0:	6e696572 	mcrvs	5, 3, r6, cr9, cr2, {3}
     9a4:	615f7469 	cmpvs	pc, r9, ror #8
     9a8:	79617272 	stmdbvc	r1!, {r1, r4, r5, r6, r9, ip, sp, lr}^
     9ac:	6174735f 	cmnvs	r4, pc, asr r3
     9b0:	5f007472 	svcpl	0x00007472
     9b4:	6e69665f 	mcrvs	6, 3, r6, cr9, cr15, {2}
     9b8:	72615f69 	rsbvc	r5, r1, #420	; 0x1a4
     9bc:	5f796172 	svcpl	0x00796172
     9c0:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
     9c4:	655f0074 	ldrbvs	r0, [pc, #-116]	; 958 <__Main_Stack_Size+0x558>
     9c8:	61746164 	cmnvs	r4, r4, ror #2
     9cc:	695f5f00 	ldmdbvs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     9d0:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
     9d4:	7a696c61 	bvc	1a5bb60 <__Main_Stack_Size+0x1a5b760>
     9d8:	61645f65 	cmnvs	r4, r5, ror #30
     9dc:	5f006174 	svcpl	0x00006174
     9e0:	6e69665f 	mcrvs	6, 3, r6, cr9, cr15, {2}
     9e4:	72615f69 	rsbvc	r5, r1, #420	; 0x1a4
     9e8:	5f796172 	svcpl	0x00796172
     9ec:	00646e65 	rsbeq	r6, r4, r5, ror #28
     9f0:	72705f5f 	rsbsvc	r5, r0, #380	; 0x17c
     9f4:	696e6965 	stmdbvs	lr!, {r0, r2, r5, r6, r8, fp, sp, lr}^
     9f8:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
     9fc:	5f796172 	svcpl	0x00796172
     a00:	00646e65 	rsbeq	r6, r4, r5, ror #28
     a04:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
     a08:	615f7469 	cmpvs	pc, r9, ror #8
     a0c:	79617272 	stmdbvc	r1!, {r1, r4, r5, r6, r9, ip, sp, lr}^
     a10:	646e655f 	strbtvs	r6, [lr], #-1375	; 0xfffffaa1
     a14:	695f5f00 	ldmdbvs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     a18:	6974696e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
     a1c:	7a696c61 	bvc	1a5bba8 <__Main_Stack_Size+0x1a5b7a8>
     a20:	72615f65 	rsbvc	r5, r1, #404	; 0x194
     a24:	5f007367 	svcpl	0x00007367
     a28:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
     a2c:	5f00745f 	svcpl	0x0000745f
     a30:	6469675f 	strbtvs	r6, [r9], #-1887	; 0xfffff8a1
     a34:	5f00745f 	svcpl	0x0000745f
     a38:	766e655f 			; <UNDEFINED> instruction: 0x766e655f
     a3c:	61645f00 	cmnvs	r4, r0, lsl #30
     a40:	67696c79 			; <UNDEFINED> instruction: 0x67696c79
     a44:	73007468 	movwvc	r7, #1128	; 0x468
     a48:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
     a4c:	74730076 	ldrbtvc	r0, [r3], #-118	; 0xffffff8a
     a50:	6469675f 	strbtvs	r6, [r9], #-1887	; 0xfffff8a1
     a54:	6f665f00 	svcvs	0x00665f00
     a58:	72006b72 	andvc	r6, r0, #116736	; 0x1c800
     a5c:	65736961 	ldrbvs	r6, [r3, #-2401]!	; 0xfffff69f
     a60:	74617000 	strbtvc	r7, [r1], #-0
     a64:	74730068 	ldrbtvc	r0, [r3], #-104	; 0xffffff98
     a68:	6f6c625f 	svcvs	0x006c625f
     a6c:	00736b63 	rsbseq	r6, r3, r3, ror #22
     a70:	5f736d74 	svcpl	0x00736d74
     a74:	69747563 	ldmdbvs	r4!, {r0, r1, r5, r6, r8, sl, ip, sp, lr}^
     a78:	6600656d 	strvs	r6, [r0], -sp, ror #10
     a7c:	65646c69 	strbvs	r6, [r4, #-3177]!	; 0xfffff397
     a80:	6b5f0073 	blvs	17c0c54 <__Main_Stack_Size+0x17c0854>
     a84:	006c6c69 	rsbeq	r6, ip, r9, ror #24
     a88:	6e7a745f 	mrcvs	4, 3, r7, cr10, cr15, {2}
     a8c:	00656d61 	rsbeq	r6, r5, r1, ror #26
     a90:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
     a94:	6e6f7a65 	vnmulvs.f32	s15, s30, s11
     a98:	5f5f0065 	svcpl	0x005f0065
     a9c:	65646f6d 	strbvs	r6, [r4, #-3949]!	; 0xfffff093
     aa0:	6700745f 	smlsdvs	r0, pc, r4, r7	; <UNPREDICTABLE>
     aa4:	70756f72 	rsbsvc	r6, r5, r2, ror pc
     aa8:	625f5f00 	subsvs	r5, pc, #0, 30
     aac:	6e636b6c 	vnmulvs.f64	d22, d3, d28
     ab0:	00745f74 	rsbseq	r5, r4, r4, ror pc
     ab4:	65706f5f 	ldrbvs	r6, [r0, #-3935]!	; 0xfffff0a1
     ab8:	7473006e 	ldrbtvc	r0, [r3], #-110	; 0xffffff92
     abc:	6170735f 	cmnvs	r0, pc, asr r3
     ac0:	00336572 	eorseq	r6, r3, r2, ror r5
     ac4:	656e776f 	strbvs	r7, [lr, #-1903]!	; 0xfffff891
     ac8:	665f0072 			; <UNDEFINED> instruction: 0x665f0072
     acc:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
     ad0:	65675f00 	strbvs	r5, [r7, #-3840]!	; 0xfffff100
     ad4:	64697074 	strbtvs	r7, [r9], #-116	; 0xffffff8c
     ad8:	66756200 	ldrbtvs	r6, [r5], -r0, lsl #4
     adc:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
     ae0:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffffbe8 <_estack+0xdfffabe8>
     ae4:	33746e69 	cmncc	r4, #1680	; 0x690
     ae8:	00745f32 	rsbseq	r5, r4, r2, lsr pc
     aec:	636f6c63 	cmnvs	pc, #25344	; 0x6300
     af0:	00745f6b 	rsbseq	r5, r4, fp, ror #30
     af4:	65645f5f 	strbvs	r5, [r4, #-3935]!	; 0xfffff0a1
     af8:	00745f76 	rsbseq	r5, r4, r6, ror pc
     afc:	735f7473 	cmpvc	pc, #1929379840	; 0x73000000
     b00:	65726170 	ldrbvs	r6, [r2, #-368]!	; 0xfffffe90
     b04:	74730031 	ldrbtvc	r0, [r3], #-49	; 0xffffffcf
     b08:	6170735f 	cmnvs	r0, pc, asr r3
     b0c:	00326572 	eorseq	r6, r2, r2, ror r5
     b10:	75735f5f 	ldrbvc	r5, [r3, #-3935]!	; 0xfffff0a1
     b14:	6f636573 	svcvs	0x00636573
     b18:	5f73646e 	svcpl	0x0073646e
     b1c:	74730074 	ldrbtvc	r0, [r3], #-116	; 0xffffff8c
     b20:	6469755f 	strbtvs	r7, [r9], #-1375	; 0xfffffaa1
     b24:	736c5f00 	cmnvc	ip, #0, 30
     b28:	006b6565 	rsbeq	r6, fp, r5, ror #10
     b2c:	5f736d74 	svcpl	0x00736d74
     b30:	6d697473 	cfstrdvs	mvd7, [r9, #-460]!	; 0xfffffe34
     b34:	6e650065 	cdpvs	0, 6, cr0, cr5, cr5, {3}
     b38:	6f726976 	svcvs	0x00726976
     b3c:	695f006e 	ldmdbvs	pc, {r1, r2, r3, r5, r6}^	; <UNPREDICTABLE>
     b40:	74746173 	ldrbtvc	r6, [r4], #-371	; 0xfffffe8d
     b44:	74730079 	ldrbtvc	r0, [r3], #-121	; 0xffffff87
     b48:	7a69735f 	bvc	1a5d8cc <__Main_Stack_Size+0x1a5d4cc>
     b4c:	725f0065 	subsvc	r0, pc, #101	; 0x65
     b50:	6c646165 	stfvse	f6, [r4], #-404	; 0xfffffe6c
     b54:	006b6e69 	rsbeq	r6, fp, r9, ror #28
     b58:	72615f70 	rsbvc	r5, r1, #112, 30	; 0x1c0
     b5c:	70006367 	andvc	r6, r0, r7, ror #6
     b60:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     b64:	006c6176 	rsbeq	r6, ip, r6, ror r1
     b68:	6174735f 	cmnvs	r4, pc, asr r3
     b6c:	76740074 			; <UNDEFINED> instruction: 0x76740074
     b70:	6365735f 	cmnvs	r5, #2080374785	; 0x7c000001
     b74:	79735f00 	ldmdbvc	r3!, {r8, r9, sl, fp, ip, lr}^
     b78:	6e696c6d 	cdpvs	12, 6, cr6, cr9, cr13, {3}
     b7c:	5f70006b 	svcpl	0x0070006b
     b80:	76677261 	strbtvc	r7, [r7], -r1, ror #4
     b84:	61775f00 	cmnvs	r7, r0, lsl #30
     b88:	5f007469 	svcpl	0x00007469
     b8c:	6b6c625f 	blvs	1b19510 <__Main_Stack_Size+0x1b19110>
     b90:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
     b94:	7400745f 	strvc	r7, [r0], #-1119	; 0xfffffba1
     b98:	5f656d69 	svcpl	0x00656d69
     b9c:	6d740074 	ldclvs	0, cr0, [r4, #-464]!	; 0xfffffe30
     ba0:	74755f73 	ldrbtvc	r5, [r5], #-3955	; 0xfffff08d
     ba4:	00656d69 	rsbeq	r6, r5, r9, ror #26
     ba8:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
     bac:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     bb0:	6164666f 	cmnvs	r4, pc, ror #12
     bb4:	745f0079 	ldrbvc	r0, [pc], #-121	; bbc <__Main_Stack_Size+0x7bc>
     bb8:	7a656d69 	bvc	195c164 <__Main_Stack_Size+0x195bd64>
     bbc:	00656e6f 	rsbeq	r6, r5, pc, ror #28
     bc0:	6e5f7473 	mrcvs	4, 2, r7, cr15, cr3, {3}
     bc4:	6b6e696c 	blvs	1b9b17c <__Main_Stack_Size+0x1b9ad7c>
     bc8:	78655f00 	stmdavc	r5!, {r8, r9, sl, fp, ip, lr}^
     bcc:	65766365 	ldrbvs	r6, [r6, #-869]!	; 0xfffffc9b
     bd0:	5f747300 	svcpl	0x00747300
     bd4:	006f6e69 	rsbeq	r6, pc, r9, ror #28
     bd8:	69705f5f 	ldmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     bdc:	00745f64 	rsbseq	r5, r4, r4, ror #30
     be0:	625f7473 	subsvs	r7, pc, #1929379840	; 0x73000000
     be4:	69736b6c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, r9, fp, sp, lr}^
     be8:	7300657a 	movwvc	r6, #1402	; 0x57a
     bec:	74635f74 	strbtvc	r5, [r3], #-3956	; 0xfffff08c
     bf0:	00656d69 	rsbeq	r6, r5, r9, ror #26
     bf4:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
     bf8:	00745f6f 	rsbseq	r5, r4, pc, ror #30
     bfc:	615f7473 	cmpvs	pc, r3, ror r4	; <UNPREDICTABLE>
     c00:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     c04:	5f747300 	svcpl	0x00747300
     c08:	72617073 	rsbvc	r7, r1, #115	; 0x73
     c0c:	70003465 	andvc	r3, r0, r5, ror #8
     c10:	32687461 	rsbcc	r7, r8, #1627389952	; 0x61000000
     c14:	68635f00 	stmdavs	r3!, {r8, r9, sl, fp, ip, lr}^
     c18:	006e776f 	rsbeq	r7, lr, pc, ror #14
     c1c:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     c20:	00745f64 	rsbseq	r5, r4, r4, ror #30
     c24:	6d5f7473 	cfldrdvs	mvd7, [pc, #-460]	; a60 <__Main_Stack_Size+0x660>
     c28:	0065646f 	rsbeq	r6, r5, pc, ror #8
     c2c:	5f736d74 	svcpl	0x00736d74
     c30:	69747363 	ldmdbvs	r4!, {r0, r1, r5, r6, r8, r9, ip, sp, lr}^
     c34:	7300656d 	movwvc	r6, #1389	; 0x56d
     c38:	65747379 	ldrbvs	r7, [r4, #-889]!	; 0xfffffc87
     c3c:	656e2f6d 	strbvs	r2, [lr, #-3949]!	; 0xfffff093
     c40:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     c44:	79735f2f 	ldmdbvc	r3!, {r0, r1, r2, r3, r5, r8, r9, sl, fp, ip, lr}^
     c48:	6c616373 	stclvs	3, cr6, [r1], #-460	; 0xfffffe34
     c4c:	632e736c 			; <UNDEFINED> instruction: 0x632e736c
     c50:	5f767400 	svcpl	0x00767400
     c54:	63657375 	cmnvs	r5, #-738197503	; 0xd4000001
     c58:	61747300 	cmnvs	r4, r0, lsl #6
     c5c:	00737574 	rsbseq	r7, r3, r4, ror r5
     c60:	6d69745f 	cfstrdvs	mvd7, [r9, #-380]!	; 0xfffffe84
     c64:	5f007365 	svcpl	0x00007365
     c68:	696c6e75 	stmdbvs	ip!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     c6c:	73006b6e 	movwvc	r6, #2926	; 0xb6e
     c70:	64725f74 	ldrbtvs	r5, [r2], #-3956	; 0xfffff08c
     c74:	65007665 	strvs	r7, [r0, #-1637]	; 0xfffff99b
     c78:	74736978 	ldrbtvc	r6, [r3], #-2424	; 0xfffff688
     c7c:	00676e69 	rsbeq	r6, r7, r9, ror #28
     c80:	6e696c5f 	mcrvs	12, 3, r6, cr9, cr15, {2}
     c84:	6170006b 	cmnvs	r0, fp, rrx
     c88:	00316874 	eorseq	r6, r1, r4, ror r8
     c8c:	6c6e5f5f 	stclvs	15, cr5, [lr], #-380	; 0xfffffe84
     c90:	5f6b6e69 	svcpl	0x006b6e69
     c94:	74730074 	ldrbtvc	r0, [r3], #-116	; 0xffffff8c
     c98:	69746d5f 	ldmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
     c9c:	7300656d 	movwvc	r6, #1389	; 0x56d
     ca0:	5f706574 	svcpl	0x00706574
     ca4:	6e635f30 	mcrvs	15, 3, r5, cr3, cr0, {1}
     ca8:	4f500074 	svcmi	0x00500074
     cac:	49544953 	ldmdbmi	r4, {r0, r1, r4, r6, r8, fp, lr}^
     cb0:	70004e4f 	andvc	r4, r0, pc, asr #28
     cb4:	735f6469 	cmpvc	pc, #1761607680	; 0x69000000
     cb8:	705f7465 	subsvc	r7, pc, r5, ror #8
     cbc:	746e696f 	strbtvc	r6, [lr], #-2415	; 0xfffff691
     cc0:	636e6500 	cmnvs	lr, #0, 10
     cc4:	7265646f 	rsbvc	r6, r5, #1862270976	; 0x6f000000
     cc8:	62757300 	rsbsvs	r7, r5, #0, 6
     ccc:	00646d63 	rsbeq	r6, r4, r3, ror #26
     cd0:	5f646970 	svcpl	0x00646970
     cd4:	72706565 	rsbsvc	r6, r0, #423624704	; 0x19400000
     cd8:	44006d6f 	strmi	r6, [r0], #-3439	; 0xfffff291
     cdc:	0052414d 	subseq	r4, r2, sp, asr #2
     ce0:	696f7461 	stmdbvs	pc!, {r0, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
     ce4:	53544600 	cmppl	r4, #0, 12
     ce8:	43430052 	movtmi	r0, #12370	; 0x3052
     cec:	43003152 	movwmi	r3, #338	; 0x152
     cf0:	00325243 	eorseq	r5, r2, r3, asr #4
     cf4:	33524343 	cmpcc	r2, #201326593	; 0xc000001
     cf8:	52434300 	subpl	r4, r3, #0, 6
     cfc:	4f540034 	svcmi	0x00540034
     d00:	45555152 	ldrbmi	r5, [r5, #-338]	; 0xfffffeae
     d04:	72617500 	rsbvc	r7, r1, #0, 10
     d08:	6e695f74 	mcrvs	15, 3, r5, cr9, cr4, {3}
     d0c:	69007469 	stmdbvs	r0, {r0, r3, r5, r6, sl, ip, sp, lr}
     d10:	6765746e 	strbvs	r7, [r5, -lr, ror #8]!
     d14:	006c6172 	rsbeq	r6, ip, r2, ror r1
     d18:	5f646970 	svcpl	0x00646970
     d1c:	65736572 	ldrbvs	r6, [r3, #-1394]!	; 0xfffffa8e
     d20:	65660074 	strbvs	r0, [r6, #-116]!	; 0xffffff8c
     d24:	61626465 	cmnvs	r2, r5, ror #8
     d28:	625f6b63 	subsvs	r6, pc, #101376	; 0x18c00
     d2c:	52006675 	andpl	r6, r0, #122683392	; 0x7500000
     d30:	00525354 	subseq	r5, r2, r4, asr r3
     d34:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
     d38:	7079545f 	rsbsvc	r5, r9, pc, asr r4
     d3c:	66654465 	strbtvs	r4, [r5], -r5, ror #8
     d40:	72617500 	rsbvc	r7, r1, #0, 10
     d44:	65725f74 	ldrbvs	r5, [r2, #-3956]!	; 0xfffff08c
     d48:	6e5f6461 	cdpvs	4, 5, cr6, cr15, cr1, {3}
     d4c:	6c626e6f 	stclvs	14, cr6, [r2], #-444	; 0xfffffe44
     d50:	006b636f 	rsbeq	r6, fp, pc, ror #6
     d54:	5f4d4954 	svcpl	0x004d4954
     d58:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0xfffff6ac
     d5c:	00666544 	rsbeq	r6, r6, r4, asr #10
     d60:	5f646970 	svcpl	0x00646970
     d64:	5f746573 	svcpl	0x00746573
     d68:	65646f6d 	strbvs	r6, [r4, #-3949]!	; 0xfffff093
     d6c:	64697000 	strbtvs	r7, [r9], #-0
     d70:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     d74:	45520074 	ldrbmi	r0, [r2, #-116]	; 0xffffff8c
     d78:	56524553 			; <UNDEFINED> instruction: 0x56524553
     d7c:	00314445 	eorseq	r4, r1, r5, asr #8
     d80:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
     d84:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
     d88:	45520033 	ldrbmi	r0, [r2, #-51]	; 0xffffffcd
     d8c:	56524553 			; <UNDEFINED> instruction: 0x56524553
     d90:	00344445 	eorseq	r4, r4, r5, asr #8
     d94:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
     d98:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
     d9c:	45520035 	ldrbmi	r0, [r2, #-53]	; 0xffffffcb
     da0:	56524553 			; <UNDEFINED> instruction: 0x56524553
     da4:	00364445 	eorseq	r4, r6, r5, asr #8
     da8:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
     dac:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
     db0:	45520037 	ldrbmi	r0, [r2, #-55]	; 0xffffffc9
     db4:	56524553 			; <UNDEFINED> instruction: 0x56524553
     db8:	00384445 	eorseq	r4, r8, r5, asr #8
     dbc:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
     dc0:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
     dc4:	72730039 	rsbsvc	r0, r3, #57	; 0x39
     dc8:	616d2f63 	cmnvs	sp, r3, ror #30
     dcc:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
     dd0:	72657300 	rsbvc	r7, r5, #0, 6
     dd4:	6d5f6f76 	ldclvs	15, cr6, [pc, #-472]	; c04 <__Main_Stack_Size+0x804>
     dd8:	0065646f 	rsbeq	r6, r5, pc, ror #8
     ddc:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
     de0:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
     de4:	43430032 	movtmi	r0, #12338	; 0x3032
     de8:	0031524d 	eorseq	r5, r1, sp, asr #4
     dec:	524d4343 	subpl	r4, sp, #201326593	; 0xc000001
     df0:	65700032 	ldrbvs	r0, [r0, #-50]!	; 0xffffffce
     df4:	68706972 	ldmdavs	r0!, {r1, r4, r5, r6, r8, fp, sp, lr}^
     df8:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     dfc:	50530074 	subspl	r0, r3, r4, ror r0
     e00:	00444545 	subeq	r4, r4, r5, asr #10
     e04:	6e655f5f 	mcrvs	15, 3, r5, cr5, cr15, {2}
     e08:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
     e0c:	7172695f 	cmnvc	r2, pc, asr r9
     e10:	45494400 	strbmi	r4, [r9, #-1024]	; 0xfffffc00
     e14:	434c0052 	movtmi	r0, #49234	; 0xc052
     e18:	7300524b 	movwvc	r5, #587	; 0x24b
     e1c:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
     e20:	70006674 	andvc	r6, r0, r4, ror r6
     e24:	6e5f6d77 	mrcvs	13, 2, r6, cr15, cr7, {3}
     e28:	6d777000 	ldclvs	0, cr7, [r7, #-0]
     e2c:	5f00705f 	svcpl	0x0000705f
     e30:	7369645f 	cmnvc	r9, #1593835520	; 0x5f000000
     e34:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
     e38:	7172695f 	cmnvc	r2, pc, asr r9
     e3c:	65656600 	strbvs	r6, [r5, #-1536]!	; 0xfffffa00
     e40:	63616264 	cmnvs	r1, #100, 4	; 0x40000006
     e44:	72735f6b 	rsbsvc	r5, r3, #428	; 0x1ac
     e48:	6c610063 	stclvs	0, cr0, [r1], #-396	; 0xfffffe74
     e4c:	006e6769 	rsbeq	r6, lr, r9, ror #14
     e50:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0xfffffe94
     e54:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
     e58:	7600726f 	strvc	r7, [r0], -pc, ror #4
     e5c:	636f6c65 	cmnvs	pc, #25856	; 0x6500
     e60:	00797469 	rsbseq	r7, r9, r9, ror #8
     e64:	705f7872 	subsvc	r7, pc, r2, ror r8	; <UNPREDICTABLE>
     e68:	75646f72 	strbvc	r6, [r4, #-3954]!	; 0xfffff08e
     e6c:	75006563 	strvc	r6, [r0, #-1379]	; 0xfffffa9d
     e70:	5f747261 	svcpl	0x00747261
     e74:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
     e78:	64697000 	strbtvs	r7, [r9], #-0
     e7c:	6470755f 	ldrbtvs	r7, [r0], #-1375	; 0xfffffaa1
     e80:	00657461 	rsbeq	r7, r5, r1, ror #8
     e84:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0xfffffe94
     e88:	736f705f 	cmnvc	pc, #95	; 0x5f
     e8c:	6f697469 	svcvs	0x00697469
     e90:	6970006e 	ldmdbvs	r0!, {r1, r2, r3, r5, r6}^
     e94:	65735f64 	ldrbvs	r5, [r3, #-3940]!	; 0xfffff09c
     e98:	61705f74 	cmnvs	r0, r4, ror pc
     e9c:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
     ea0:	73726574 	cmnvc	r2, #116, 10	; 0x1d000000
     ea4:	49575300 	ldmdbmi	r7, {r8, r9, ip, lr}^
     ea8:	66005245 	strvs	r5, [r0], -r5, asr #4
     eac:	6873616c 	ldmdavs	r3!, {r2, r3, r5, r6, r8, sp, lr}^
     eb0:	6f74735f 	svcvs	0x0074735f
     eb4:	665f6572 			; <UNDEFINED> instruction: 0x665f6572
     eb8:	5f6d6f72 	svcpl	0x006d6f72
     ebc:	74736f68 	ldrbtvc	r6, [r3], #-3944	; 0xfffff098
     ec0:	73657200 	cmnvc	r5, #0, 4
     ec4:	6c706d61 	ldclvs	13, cr6, [r0], #-388	; 0xfffffe7c
     ec8:	325f7265 	subscc	r7, pc, #1342177286	; 0x50000006
     ecc:	7a483035 	bvc	120cfa8 <__Main_Stack_Size+0x120cba8>
     ed0:	53455200 	movtpl	r5, #20992	; 0x5200
     ed4:	45565245 	ldrbmi	r5, [r6, #-581]	; 0xfffffdbb
     ed8:	00303144 	eorseq	r3, r0, r4, asr #2
     edc:	52454343 	subpl	r4, r5, #201326593	; 0xc000001
     ee0:	53455200 	movtpl	r5, #20992	; 0x5200
     ee4:	45565245 	ldrbmi	r5, [r6, #-581]	; 0xfffffdbb
     ee8:	00323144 	eorseq	r3, r2, r4, asr #2
     eec:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
     ef0:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
     ef4:	52003331 	andpl	r3, r0, #-1006632960	; 0xc4000000
     ef8:	52455345 	subpl	r5, r5, #335544321	; 0x14000001
     efc:	31444556 	cmpcc	r4, r6, asr r5
     f00:	45520034 	ldrbmi	r0, [r2, #-52]	; 0xffffffcc
     f04:	56524553 			; <UNDEFINED> instruction: 0x56524553
     f08:	35314445 	ldrcc	r4, [r1, #-1093]!	; 0xfffffbbb
     f0c:	53455200 	movtpl	r5, #20992	; 0x5200
     f10:	45565245 	ldrbmi	r5, [r6, #-581]	; 0xfffffdbb
     f14:	00363144 	eorseq	r3, r6, r4, asr #2
     f18:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
     f1c:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
     f20:	52003731 	andpl	r3, r0, #12845056	; 0xc40000
     f24:	52455345 	subpl	r5, r5, #335544321	; 0x14000001
     f28:	31444556 	cmpcc	r4, r6, asr r5
     f2c:	45520038 	ldrbmi	r0, [r2, #-56]	; 0xffffffc8
     f30:	56524553 			; <UNDEFINED> instruction: 0x56524553
     f34:	39314445 	ldmdbcc	r1!, {r0, r2, r6, sl, lr}
     f38:	746e6900 	strbtvc	r6, [lr], #-2304	; 0xfffff700
     f3c:	61726765 	cmnvs	r2, r5, ror #14
     f40:	696c5f6c 	stmdbvs	ip!, {r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
     f44:	0074696d 	rsbseq	r6, r4, sp, ror #18
     f48:	52434d53 	subpl	r4, r3, #5312	; 0x14c0
     f4c:	6d726100 	ldfvse	f6, [r2, #-0]
     f50:	6469705f 	strbtvs	r7, [r9], #-95	; 0xffffffa1
     f54:	6100745f 	tstvs	r0, pc, asr r4
     f58:	705f6d72 	subsvc	r6, pc, r2, ror sp	; <UNPREDICTABLE>
     f5c:	695f6469 	ldmdbvs	pc, {r0, r3, r5, r6, sl, sp, lr}^	; <UNPREDICTABLE>
     f60:	6174736e 	cmnvs	r4, lr, ror #6
     f64:	5f65636e 	svcpl	0x0065636e
     f68:	61750074 	cmnvs	r5, r4, ror r0
     f6c:	705f7472 	subsvc	r7, pc, r2, ror r4	; <UNPREDICTABLE>
     f70:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
     f74:	65656600 	strbvs	r6, [r5, #-1536]!	; 0xfffffa00
     f78:	63616264 	cmnvs	r1, #100, 4	; 0x40000006
     f7c:	6863006b 	stmdavs	r3!, {r0, r1, r3, r5, r6}^
     f80:	5f6b6365 	svcpl	0x006b6365
     f84:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
     f88:	646d635f 	strbtvs	r6, [sp], #-863	; 0xfffffca1
     f8c:	62757300 	rsbsvs	r7, r5, #0, 6
     f90:	6174706f 	cmnvs	r4, pc, rrx
     f94:	73006772 	movwvc	r6, #1906	; 0x772
     f98:	5f706574 	svcpl	0x00706574
     f9c:	6e635f31 	mcrvs	15, 3, r5, cr3, cr1, {1}
     fa0:	53420074 	movtpl	r0, #8308	; 0x2074
     fa4:	47005252 	smlsdmi	r0, r2, r2, r5
     fa8:	5f4f4950 	svcpl	0x004f4950
     fac:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0xfffff6ac
     fb0:	00666544 	rsbeq	r6, r6, r4, asr #10
     fb4:	73616c66 	cmnvc	r1, #26112	; 0x6600
     fb8:	6f6c5f68 	svcvs	0x006c5f68
     fbc:	745f6461 	ldrbvc	r6, [pc], #-1121	; fc4 <__Main_Stack_Size+0xbc4>
     fc0:	6f685f6f 	svcvs	0x00685f6f
     fc4:	45007473 	strmi	r7, [r0, #-1139]	; 0xfffffb8d
     fc8:	31495458 	cmpcc	r9, r8, asr r4
     fcc:	30315f35 	eorscc	r5, r1, r5, lsr pc
     fd0:	5152495f 	cmppl	r2, pc, asr r9
     fd4:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
     fd8:	0072656c 	rsbseq	r6, r2, ip, ror #10
     fdc:	52544442 	subspl	r4, r4, #1107296256	; 0x42000000
     fe0:	64697000 	strbtvs	r7, [r9], #-0
     fe4:	7465735f 	strbtvc	r7, [r5], #-863	; 0xfffffca1
     fe8:	6275735f 	rsbsvs	r7, r5, #2080374785	; 0x7c000001
     fec:	646d635f 	strbtvs	r6, [sp], #-863	; 0xfffffca1
     ff0:	65656600 	strbvs	r6, [r5, #-1536]!	; 0xfffffa00
     ff4:	63616264 	cmnvs	r1, #100, 4	; 0x40000006
     ff8:	75625f6b 	strbvc	r5, [r2, #-3947]!	; 0xfffff095
     ffc:	6e695f66 	cdpvs	15, 6, cr5, cr9, cr6, {3}
    1000:	00786564 	rsbseq	r6, r8, r4, ror #10
    1004:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
    1008:	44455652 	strbmi	r5, [r5], #-1618	; 0xfffff9ae
    100c:	70003131 	andvc	r3, r0, r1, lsr r1
    1010:	6d5f6d77 	ldclvs	13, cr6, [pc, #-476]	; e3c <__Main_Stack_Size+0xa3c>
    1014:	765f7861 	ldrbvc	r7, [pc], -r1, ror #16
    1018:	69006c61 	stmdbvs	r0, {r0, r5, r6, sl, fp, sp, lr}
    101c:	3436746e 	ldrtcc	r7, [r6], #-1134	; 0xfffffb92
    1020:	7300745f 	movwvc	r7, #1119	; 0x45f
    1024:	6f707465 	svcvs	0x00707465
    1028:	00746e69 	rsbseq	r6, r4, r9, ror #28
    102c:	5f425355 	svcpl	0x00425355
    1030:	435f504c 	cmpmi	pc, #76	; 0x4c
    1034:	5f314e41 	svcpl	0x00314e41
    1038:	5f305852 	svcpl	0x00305852
    103c:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    1040:	72617500 	rsbvc	r7, r1, #0, 10
    1044:	72775f74 	rsbsvc	r5, r7, #116, 30	; 0x1d0
    1048:	00657469 	rsbeq	r7, r5, r9, ror #8
    104c:	314e4143 	cmpcc	lr, r3, asr #2
    1050:	4543535f 	strbmi	r5, [r3, #-863]	; 0xfffffca1
    1054:	5152495f 	cmppl	r2, pc, asr r9
    1058:	4d44006e 	stclmi	0, cr0, [r4, #-440]	; 0xfffffe48
    105c:	435f3141 	cmpmi	pc, #1073741840	; 0x40000010
    1060:	6e6e6168 	powvsez	f6, f6, #0.0
    1064:	5f376c65 	svcpl	0x00376c65
    1068:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    106c:	43324900 	teqmi	r2, #0, 18
    1070:	52455f32 	subpl	r5, r5, #50, 30	; 0xc8
    1074:	5152495f 	cmppl	r2, pc, asr r9
    1078:	6162006e 	cmnvs	r2, lr, rrx
    107c:	61726475 	cmnvs	r2, r5, ror r4
    1080:	54006574 	strpl	r6, [r0], #-1396	; 0xfffffa8c
    1084:	5f344d49 	svcpl	0x00344d49
    1088:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    108c:	414d4400 	cmpmi	sp, r0, lsl #8
    1090:	68435f31 	stmdavs	r3, {r0, r4, r5, r8, r9, sl, fp, ip, lr}^
    1094:	656e6e61 	strbvs	r6, [lr, #-3681]!	; 0xfffff19f
    1098:	495f326c 	ldmdbmi	pc, {r2, r3, r5, r6, r9, ip, sp}^	; <UNPREDICTABLE>
    109c:	006e5152 	rsbeq	r5, lr, r2, asr r1
    10a0:	53414c46 	movtpl	r4, #7238	; 0x1c46
    10a4:	52495f48 	subpl	r5, r9, #72, 30	; 0x120
    10a8:	45006e51 	strmi	r6, [r0, #-3665]	; 0xfffff1af
    10ac:	30495458 	subcc	r5, r9, r8, asr r4
    10b0:	5152495f 	cmppl	r2, pc, asr r9
    10b4:	7872006e 	ldmdavc	r2!, {r1, r2, r3, r5, r6}^
    10b8:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    10bc:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    10c0:	5f353149 	svcpl	0x00353149
    10c4:	495f3031 	ldmdbmi	pc, {r0, r4, r5, ip, sp}^	; <UNPREDICTABLE>
    10c8:	006e5152 	rsbeq	r5, lr, r2, asr r1
    10cc:	646e6550 	strbtvs	r6, [lr], #-1360	; 0xfffffab0
    10d0:	495f5653 	ldmdbmi	pc, {r0, r1, r4, r6, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    10d4:	006e5152 	rsbeq	r5, lr, r2, asr r1
    10d8:	5f434352 	svcpl	0x00434352
    10dc:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    10e0:	50544700 	subspl	r4, r4, r0, lsl #14
    10e4:	654d0052 	strbvs	r0, [sp, #-82]	; 0xffffffae
    10e8:	79726f6d 	ldmdbvc	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    10ec:	616e614d 	cmnvs	lr, sp, asr #2
    10f0:	656d6567 	strbvs	r6, [sp, #-1383]!	; 0xfffffa99
    10f4:	495f746e 	ldmdbmi	pc, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    10f8:	006e5152 	rsbeq	r5, lr, r2, asr r1
    10fc:	705f7874 	subsvc	r7, pc, r4, ror r8	; <UNPREDICTABLE>
    1100:	75646f72 	strbvc	r6, [r4, #-3954]!	; 0xfffff08e
    1104:	49006563 	stmdbmi	r0, {r0, r1, r5, r6, r8, sl, sp, lr}
    1108:	00524553 	subseq	r4, r2, r3, asr r5
    110c:	314d4954 	cmpcc	sp, r4, asr r9
    1110:	4b52425f 	blmi	1491a94 <__Main_Stack_Size+0x1491694>
    1114:	5152495f 	cmppl	r2, pc, asr r9
    1118:	7266006e 	rsbvc	r0, r6, #110	; 0x6e
    111c:	00746361 	rsbseq	r6, r4, r1, ror #6
    1120:	52455352 	subpl	r5, r5, #1207959553	; 0x48000001
    1124:	31444556 	cmpcc	r4, r6, asr r5
    1128:	49505300 	ldmdbmi	r0, {r8, r9, ip, lr}^
    112c:	52495f31 	subpl	r5, r9, #49, 30	; 0xc4
    1130:	44006e51 	strmi	r6, [r0], #-3665	; 0xfffff1af
    1134:	5f31414d 	svcpl	0x0031414d
    1138:	6e616843 	cdpvs	8, 6, cr6, cr1, cr3, {2}
    113c:	346c656e 	strbtcc	r6, [ip], #-1390	; 0xfffffa92
    1140:	5152495f 	cmppl	r2, pc, asr r9
    1144:	564e006e 	strbpl	r0, [lr], -lr, rrx
    1148:	455f4349 	ldrbmi	r4, [pc, #-841]	; e07 <__Main_Stack_Size+0xa07>
    114c:	6c62616e 	stfvse	f6, [r2], #-440	; 0xfffffe48
    1150:	51524965 	cmppl	r2, r5, ror #18
    1154:	63727300 	cmnvs	r2, #0, 6
    1158:	7261752f 	rsbvc	r7, r1, #197132288	; 0xbc00000
    115c:	00632e74 	rsbeq	r2, r3, r4, ror lr
    1160:	314e4143 	cmpcc	lr, r3, asr #2
    1164:	3158525f 	cmpcc	r8, pc, asr r2
    1168:	5152495f 	cmppl	r2, pc, asr r9
    116c:	5355006e 	cmppl	r5, #110	; 0x6e
    1170:	50485f42 	subpl	r5, r8, r2, asr #30
    1174:	4e41435f 	mcrmi	3, 2, r4, cr1, cr15, {2}
    1178:	58545f31 	ldmdapl	r4, {r0, r4, r5, r8, r9, sl, fp, ip, lr}^
    117c:	5152495f 	cmppl	r2, pc, asr r9
    1180:	5249006e 	subpl	r0, r9, #110	; 0x6e
    1184:	545f6e51 	ldrbpl	r6, [pc], #-3665	; 118c <__Main_Stack_Size+0xd8c>
    1188:	00657079 	rsbeq	r7, r5, r9, ror r0
    118c:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    1190:	495f3254 	ldmdbmi	pc, {r2, r4, r6, r9, ip, sp}^	; <UNPREDICTABLE>
    1194:	006e5152 	rsbeq	r5, lr, r2, asr r1
    1198:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    119c:	79545f54 	ldmdbvc	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    11a0:	65446570 	strbvs	r6, [r4, #-1392]	; 0xfffffa90
    11a4:	58450066 	stmdapl	r5, {r1, r2, r5, r6}^
    11a8:	5f324954 	svcpl	0x00324954
    11ac:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    11b0:	5f787400 	svcpl	0x00787400
    11b4:	00667562 	rsbeq	r7, r6, r2, ror #10
    11b8:	32433249 	subcc	r3, r3, #-1879048188	; 0x90000004
    11bc:	5f56455f 	svcpl	0x0056455f
    11c0:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    11c4:	414d4400 	cmpmi	sp, r0, lsl #8
    11c8:	68435f31 	stmdavs	r3, {r0, r4, r5, r8, r9, sl, fp, ip, lr}^
    11cc:	656e6e61 	strbvs	r6, [lr, #-3681]!	; 0xfffff19f
    11d0:	495f366c 	ldmdbmi	pc, {r2, r3, r5, r6, r9, sl, ip, sp}^	; <UNPREDICTABLE>
    11d4:	006e5152 	rsbeq	r5, lr, r2, asr r1
    11d8:	334d4954 	movtcc	r4, #55636	; 0xd954
    11dc:	5152495f 	cmppl	r2, pc, asr r9
    11e0:	4d44006e 	stclmi	0, cr0, [r4, #-440]	; 0xfffffe48
    11e4:	435f3141 	cmpmi	pc, #1073741840	; 0x40000010
    11e8:	6e6e6168 	powvsez	f6, f6, #0.0
    11ec:	5f316c65 	svcpl	0x00316c65
    11f0:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    11f4:	42535500 	subsmi	r5, r3, #0, 10
    11f8:	656b6157 	strbvs	r6, [fp, #-343]!	; 0xfffffea9
    11fc:	495f7055 	ldmdbmi	pc, {r0, r2, r4, r6, ip, sp, lr}^	; <UNPREDICTABLE>
    1200:	006e5152 	rsbeq	r5, lr, r2, asr r1
    1204:	47445757 	smlsldmi	r5, r4, r7, r7
    1208:	5152495f 	cmppl	r2, pc, asr r9
    120c:	7542006e 	strbvc	r0, [r2, #-110]	; 0xffffff92
    1210:	75614673 	strbvc	r4, [r1, #-1651]!	; 0xfffff98d
    1214:	495f746c 	ldmdbmi	pc, {r2, r3, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    1218:	006e5152 	rsbeq	r5, lr, r2, asr r1
    121c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1220:	52495f34 	subpl	r5, r9, #52, 30	; 0xd0
    1224:	50006e51 	andpl	r6, r0, r1, asr lr
    1228:	495f4456 	ldmdbmi	pc, {r1, r2, r4, r6, sl, lr}^	; <UNPREDICTABLE>
    122c:	006e5152 	rsbeq	r5, lr, r2, asr r1
    1230:	52504349 	subspl	r4, r0, #603979777	; 0x24000001
    1234:	414d4400 	cmpmi	sp, r0, lsl #8
    1238:	68435f31 	stmdavs	r3, {r0, r4, r5, r8, r9, sl, fp, ip, lr}^
    123c:	656e6e61 	strbvs	r6, [lr, #-3681]!	; 0xfffff19f
    1240:	495f336c 	ldmdbmi	pc, {r2, r3, r5, r6, r8, r9, ip, sp}^	; <UNPREDICTABLE>
    1244:	006e5152 	rsbeq	r5, lr, r2, asr r1
    1248:	31433249 	cmpcc	r3, r9, asr #4
    124c:	5f56455f 	svcpl	0x0056455f
    1250:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    1254:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
    1258:	50555f31 	subspl	r5, r5, r1, lsr pc
    125c:	5152495f 	cmppl	r2, pc, asr r9
    1260:	5453006e 	ldrbpl	r0, [r3], #-110	; 0xffffff92
    1264:	52005249 	andpl	r5, r0, #-1879048188	; 0x90000004
    1268:	495f4354 	ldmdbmi	pc, {r2, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    126c:	006e5152 	rsbeq	r5, lr, r2, asr r1
    1270:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    1274:	495f3154 	ldmdbmi	pc, {r2, r4, r6, r8, ip, sp}^	; <UNPREDICTABLE>
    1278:	006e5152 	rsbeq	r5, lr, r2, asr r1
    127c:	4d6e6f4e 	stclmi	15, cr6, [lr, #-312]!	; 0xfffffec8
    1280:	616b7361 	cmnvs	fp, r1, ror #6
    1284:	49656c62 	stmdbmi	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    1288:	495f746e 	ldmdbmi	pc, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    128c:	006e5152 	rsbeq	r5, lr, r2, asr r1
    1290:	635f7874 	cmpvs	pc, #116, 16	; 0x740000
    1294:	75736e6f 	ldrbvc	r6, [r3, #-3695]!	; 0xfffff191
    1298:	5400656d 	strpl	r6, [r0], #-1389	; 0xfffffa93
    129c:	5f314d49 	svcpl	0x00314d49
    12a0:	495f4343 	ldmdbmi	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    12a4:	006e5152 	rsbeq	r5, lr, r2, asr r1
    12a8:	635f7874 	cmpvs	pc, #116, 16	; 0x740000
    12ac:	45007374 	strmi	r7, [r0, #-884]	; 0xfffffc8c
    12b0:	31495458 	cmpcc	r9, r8, asr r4
    12b4:	5152495f 	cmppl	r2, pc, asr r9
    12b8:	564e006e 	strbpl	r0, [lr], -lr, rrx
    12bc:	545f4349 	ldrbpl	r4, [pc], #-841	; 12c4 <__Main_Stack_Size+0xec4>
    12c0:	00657079 	rsbeq	r7, r5, r9, ror r0
    12c4:	635f7872 	cmpvs	pc, #7471104	; 0x720000
    12c8:	75736e6f 	ldrbvc	r6, [r3, #-3695]!	; 0xfffff191
    12cc:	5400656d 	strpl	r6, [r0], #-1389	; 0xfffffa93
    12d0:	5f314d49 	svcpl	0x00314d49
    12d4:	5f475254 	svcpl	0x00475254
    12d8:	5f4d4f43 	svcpl	0x004d4f43
    12dc:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    12e0:	43324900 	teqmi	r2, #0, 18
    12e4:	52455f31 	subpl	r5, r5, #49, 30	; 0xc4
    12e8:	5152495f 	cmppl	r2, pc, asr r9
    12ec:	7953006e 	ldmdbvc	r3, {r1, r2, r3, r5, r6}^
    12f0:	63695473 	cmnvs	r9, #1929379840	; 0x73000000
    12f4:	52495f6b 	subpl	r5, r9, #428	; 0x1ac
    12f8:	54006e51 	strpl	r6, [r0], #-3665	; 0xfffff1af
    12fc:	5f324d49 	svcpl	0x00324d49
    1300:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
    1304:	62654400 	rsbvs	r4, r5, #0, 8
    1308:	6f4d6775 	svcvs	0x004d6775
    130c:	6f74696e 	svcvs	0x0074696e
    1310:	52495f72 	subpl	r5, r9, #456	; 0x1c8
    1314:	55006e51 	strpl	r6, [r0, #-3665]	; 0xfffff1af
    1318:	65676173 	strbvs	r6, [r7, #-371]!	; 0xfffffe8d
    131c:	6c756146 	ldfvse	f6, [r5], #-280	; 0xfffffee8
    1320:	52495f74 	subpl	r5, r9, #116, 30	; 0x1d0
    1324:	69006e51 	stmdbvs	r0, {r0, r4, r6, r9, sl, fp, sp, lr}
    1328:	6765746e 	strbvs	r7, [r5, -lr, ror #8]!
    132c:	45007265 	strmi	r7, [r0, #-613]	; 0xfffffd9b
    1330:	39495458 	stmdbcc	r9, {r3, r4, r6, sl, ip, lr}^
    1334:	495f355f 	ldmdbmi	pc, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp}^	; <UNPREDICTABLE>
    1338:	006e5152 	rsbeq	r5, lr, r2, asr r1
    133c:	61435653 	cmpvs	r3, r3, asr r6
    1340:	495f6c6c 	ldmdbmi	pc, {r2, r3, r5, r6, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    1344:	006e5152 	rsbeq	r5, lr, r2, asr r1
    1348:	52454349 	subpl	r4, r5, #603979777	; 0x24000001
    134c:	49505300 	ldmdbmi	r0, {r8, r9, ip, lr}^
    1350:	52495f32 	subpl	r5, r9, #50, 30	; 0xc8
    1354:	49006e51 	stmdbmi	r0, {r0, r4, r6, r9, sl, fp, sp, lr}
    1358:	00524241 	subseq	r4, r2, r1, asr #4
    135c:	31414d44 	cmpcc	r1, r4, asr #26
    1360:	6168435f 	cmnvs	r8, pc, asr r3
    1364:	6c656e6e 	stclvs	14, cr6, [r5], #-440	; 0xfffffe48
    1368:	52495f35 	subpl	r5, r9, #53, 30	; 0xd4
    136c:	45006e51 	strmi	r6, [r0, #-3665]	; 0xfffff1af
    1370:	33495458 	movtcc	r5, #37976	; 0x9458
    1374:	5152495f 	cmppl	r2, pc, asr r9
    1378:	5349006e 	movtpl	r0, #36974	; 0x906e
    137c:	41005250 	tstmi	r0, r0, asr r2
    1380:	5f314344 	svcpl	0x00314344
    1384:	52495f32 	subpl	r5, r9, #50, 30	; 0xc8
    1388:	55006e51 	strpl	r6, [r0, #-3665]	; 0xfffff1af
    138c:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    1390:	52495f33 	subpl	r5, r9, #51, 30	; 0xcc
    1394:	54006e51 	strpl	r6, [r0], #-3665	; 0xfffff1af
    1398:	45504d41 	ldrbmi	r4, [r0, #-3393]	; 0xfffff2bf
    139c:	52495f52 	subpl	r5, r9, #328	; 0x148
    13a0:	55006e51 	strpl	r6, [r0, #-3665]	; 0xfffff1af
    13a4:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    13a8:	52495f32 	subpl	r5, r9, #50, 30	; 0xc8
    13ac:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    13b0:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    13b4:	43545200 	cmpmi	r4, #0, 4
    13b8:	72616c41 	rsbvc	r6, r1, #16640	; 0x4100
    13bc:	52495f6d 	subpl	r5, r9, #436	; 0x1b4
    13c0:	70006e51 	andvc	r6, r0, r1, asr lr
    13c4:	41656761 	cmnmi	r5, r1, ror #14
    13c8:	65726464 	ldrbvs	r6, [r2, #-1124]!	; 0xfffffb9c
    13cc:	65007373 	strvs	r7, [r0, #-883]	; 0xfffffc8d
    13d0:	00646970 	rsbeq	r6, r4, r0, ror r9
    13d4:	636d656d 	cmnvs	sp, #457179136	; 0x1b400000
    13d8:	73007970 	movwvc	r7, #2416	; 0x970
    13dc:	652f6372 	strvs	r6, [pc, #-882]!	; 1072 <__Main_Stack_Size+0xc72>
    13e0:	6f727065 	svcvs	0x00727065
    13e4:	00632e6d 	rsbeq	r2, r3, sp, ror #28
    13e8:	6c6c6563 	cfstr64vs	mvdx6, [ip], #-396	; 0xfffffe74
    13ec:	706e7300 	rsbvc	r7, lr, r0, lsl #6
    13f0:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
    13f4:	6c660066 	stclvs	0, cr0, [r6], #-408	; 0xfffffe68
    13f8:	5f687361 	svcpl	0x00687361
    13fc:	73617265 	cmnvc	r1, #1342177286	; 0x50000006
    1400:	6c660065 	stclvs	0, cr0, [r6], #-404	; 0xfffffe6c
    1404:	5f687361 	svcpl	0x00687361
    1408:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
    140c:	564e0065 	strbpl	r0, [lr], -r5, rrx
    1410:	535f4349 	cmppl	pc, #603979777	; 0x24000001
    1414:	72507465 	subsvc	r7, r0, #1694498816	; 0x65000000
    1418:	69726f69 	ldmdbvs	r2!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    141c:	4c007974 			; <UNDEFINED> instruction: 0x4c007974
    1420:	0044414f 	subeq	r4, r4, pc, asr #2
    1424:	5250414d 	subspl	r4, r0, #1073741843	; 0x40000013
    1428:	4c414300 	mcrrmi	3, 0, r4, r1, cr0
    142c:	73004249 	movwvc	r4, #585	; 0x249
    1430:	702f6372 	eorvc	r6, pc, r2, ror r3	; <UNPREDICTABLE>
    1434:	70697265 	rsbvc	r7, r9, r5, ror #4
    1438:	61726568 	cmnvs	r2, r8, ror #10
    143c:	00632e6c 	rsbeq	r2, r3, ip, ror #28
    1440:	54737953 	ldrbtpl	r7, [r3], #-2387	; 0xfffff6ad
    1444:	5f6b6369 	svcpl	0x006b6369
    1448:	666e6f43 	strbtvs	r6, [lr], -r3, asr #30
    144c:	74006769 	strvc	r6, [r0], #-1897	; 0xfffff897
    1450:	736b6369 	cmnvc	fp, #-1543503871	; 0xa4000001
    1454:	49464100 	stmdbmi	r6, {r8, lr}^
    1458:	79545f4f 	ldmdbvc	r4, {r0, r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    145c:	65446570 	strbvs	r6, [r4, #-1392]	; 0xfffffa90
    1460:	58450066 	stmdapl	r5, {r1, r2, r5, r6}^
    1464:	52434954 	subpl	r4, r3, #84, 18	; 0x150000
    1468:	52544300 	subspl	r4, r4, #0, 6
    146c:	7953004c 	ldmdbvc	r3, {r2, r3, r6}^
    1470:	63695473 	cmnvs	r9, #1929379840	; 0x73000000
    1474:	79545f6b 	ldmdbvc	r4, {r0, r1, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    1478:	70006570 	andvc	r6, r0, r0, ror r5
    147c:	726f6972 	rsbvc	r6, pc, #1867776	; 0x1c8000
    1480:	00797469 	rsbseq	r7, r9, r9, ror #8
    1484:	5250414d 	subspl	r4, r0, #1073741843	; 0x40000013
    1488:	56450032 			; <UNDEFINED> instruction: 0x56450032
    148c:	70005243 	andvc	r5, r0, r3, asr #4
    1490:	725f6469 	subsvc	r6, pc, #1761607680	; 0x69000000
    1494:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
    1498:	616c665f 	cmnvs	ip, pc, asr r6
    149c:	69700067 	ldmdbvs	r0!, {r0, r1, r2, r5, r6}^
    14a0:	65735f64 	ldrbvs	r5, [r3, #-3940]!	; 0xfffff09c
    14a4:	57505f74 			; <UNDEFINED> instruction: 0x57505f74
    14a8:	6970004d 	ldmdbvs	r0!, {r0, r2, r3, r6}^
    14ac:	6e695f64 	cdpvs	15, 6, cr5, cr9, cr4, {3}
    14b0:	70007473 	andvc	r7, r0, r3, ror r4
    14b4:	675f6469 	ldrbvs	r6, [pc, -r9, ror #8]
    14b8:	736e6961 	cmnvc	lr, #1589248	; 0x184000
    14bc:	65707300 	ldrbvs	r7, [r0, #-768]!	; 0xfffffd00
    14c0:	635f6465 	cmpvs	pc, #1694498816	; 0x65000000
    14c4:	61706d6f 	cmnvs	r0, pc, ror #26
    14c8:	62006572 	andvs	r6, r0, #478150656	; 0x1c800000
    14cc:	6f72657a 	svcvs	0x0072657a
    14d0:	63727300 	cmnvs	r2, #0, 6
    14d4:	6469702f 	strbtvs	r7, [r9], #-47	; 0xffffffd1
    14d8:	7000632e 	andvc	r6, r0, lr, lsr #6
    14dc:	6d636469 	cfstrdvs	mvd6, [r3, #-420]!	; 0xfffffe5c
    14e0:	Address 0x00000000000014e0 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
{
   0:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
  _exit (1);
   4:	08000930 	stmdaeq	r0, {r4, r5, r8, fp}
   8:	9f300002 	svcls	0x00300002
   c:	08000930 	stmdaeq	r0, {r4, r5, r8, fp}
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
  10:	08000934 	stmdaeq	r0, {r2, r4, r5, r8, fp}
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
  14:	00730005 	rsbseq	r0, r3, r5
    *p++ = *from++;
  18:	349f1a3c 	ldrcc	r1, [pc], #2620	; 20 <_Minimum_Stack_Size-0xe0>
  while (p < region_end)
  1c:	3a080009 	bcc	200048 <__Main_Stack_Size+0x1ffc48>
		tx_cts = 0;
  20:	01080009 	tsteq	r8, r9
		USART2->DR = (uint8_t) c;
  24:	09565300 	ldmdbeq	r6, {r8, r9, ip, lr}^
  28:	09580800 	ldmdbeq	r8, {fp}^
  2c:	00010800 	andeq	r0, r1, r0, lsl #16
  30:	00096653 	andeq	r6, r9, r3, asr r6
  34:	00096c08 	andeq	r6, r9, r8, lsl #24
  38:	52000108 	andpl	r0, r0, #8, 2
	...
  44:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
  48:	0800093a 	stmdaeq	r0, {r1, r3, r4, r5, r8, fp}
  4c:	9f300002 	svcls	0x00300002
  50:	0800093a 	stmdaeq	r0, {r1, r3, r4, r5, r8, fp}
  54:	08000940 	stmdaeq	r0, {r6, r8, fp}
  58:	00730007 	rsbseq	r0, r3, r7
  5c:	1a24414e 	bne	91059c <__Main_Stack_Size+0x91019c>
  60:	0009469f 	muleq	r9, pc, r6	; <UNPREDICTABLE>
  64:	00095408 	andeq	r5, r9, r8, lsl #8
  68:	53000108 	movwpl	r0, #264	; 0x108
  6c:	08000956 	stmdaeq	r0, {r1, r2, r4, r6, r8, fp}
  70:	08000958 	stmdaeq	r0, {r3, r4, r6, r8, fp}
  74:	9f300002 	svcls	0x00300002
  78:	0800096c 	stmdaeq	r0, {r2, r3, r5, r6, r8, fp}
  7c:	08000972 	stmdaeq	r0, {r1, r4, r5, r6, r8, fp}
  80:	00530001 	subseq	r0, r3, r1
  84:	00000000 	andeq	r0, r0, r0
  88:	2c000000 	stccs	0, cr0, [r0], {-0}
  8c:	3c080009 	stccc	0, cr0, [r8], {9}
  90:	02080009 	andeq	r0, r8, #9
  94:	3c9f3000 	ldccc	0, cr3, [pc], {0}
  98:	42080009 	andmi	r0, r8, #9
  9c:	07080009 	streq	r0, [r8, -r9]
  a0:	40007100 	andmi	r7, r0, r0, lsl #2
  a4:	9f1a243c 	svcls	0x001a243c
  a8:	08000956 	stmdaeq	r0, {r1, r2, r4, r6, r8, fp}
  ac:	08000958 	stmdaeq	r0, {r3, r4, r6, r8, fp}
  b0:	9f300002 	svcls	0x00300002
	...
  bc:	08000988 	stmdaeq	r0, {r3, r7, r8, fp}
  c0:	0800098d 	stmdaeq	r0, {r0, r2, r3, r7, r8, fp}
  c4:	8d500001 	ldclhi	0, cr0, [r0, #-4]
  c8:	8e080009 	cdphi	0, 0, cr0, cr8, cr9, {0}
  cc:	04080009 	streq	r0, [r8], #-9
  d0:	5001f300 	andpl	pc, r1, r0, lsl #6
  d4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
  d8:	00000000 	andeq	r0, r0, r0
  dc:	0009cc00 	andeq	ip, r9, r0, lsl #24
  e0:	0009d608 	andeq	sp, r9, r8, lsl #12
  e4:	50000108 	andpl	r0, r0, r8, lsl #2
  e8:	080009d6 	stmdaeq	r0, {r1, r2, r4, r6, r7, r8, fp}
  ec:	080009da 	stmdaeq	r0, {r1, r3, r4, r6, r7, r8, fp}
  f0:	00700006 	rsbseq	r0, r0, r6
  f4:	9f1afc09 	svcls	0x001afc09
  f8:	080009da 	stmdaeq	r0, {r1, r3, r4, r6, r7, r8, fp}
  fc:	080009de 	stmdaeq	r0, {r1, r2, r3, r4, r6, r7, r8, fp}
 100:	de500001 	cdple	0, 5, cr0, cr0, cr1, {0}
 104:	e8080009 	stmda	r8, {r0, r3}
 108:	09080009 	stmdbeq	r8, {r0, r3}
 10c:	5001f300 	andpl	pc, r1, r0, lsl #6
 110:	fc090323 	stc2	3, cr0, [r9], {35}	; 0x23
 114:	09e89f1a 	stmibeq	r8!, {r1, r3, r4, r8, r9, sl, fp, ip, pc}^
 118:	09f00800 	ldmibeq	r0!, {fp}^
 11c:	00010800 	andeq	r0, r1, r0, lsl #16
 120:	0009f050 	andeq	pc, r9, r0, asr r0	; <UNPREDICTABLE>
 124:	000a0c08 	andeq	r0, sl, r8, lsl #24
 128:	f3000908 	vmls.i8	d0, d0, d8
 12c:	03235001 			; <UNDEFINED> instruction: 0x03235001
 130:	9f1afc09 	svcls	0x001afc09
	...
 13c:	080009d4 	stmdaeq	r0, {r2, r4, r6, r7, r8, fp}
 140:	080009e4 	stmdaeq	r0, {r2, r5, r6, r7, r8, fp}
 144:	f0030005 			; <UNDEFINED> instruction: 0xf0030005
 148:	f0200001 			; <UNDEFINED> instruction: 0xf0200001
 14c:	f3080009 	vhadd.u8	d0, d8, d9
 150:	05080009 	streq	r0, [r8, #-9]
 154:	01f00300 	mvnseq	r0, r0, lsl #6
 158:	00002000 	andeq	r2, r0, r0
 15c:	00000000 	andeq	r0, r0, r0
 160:	01e00000 	mvneq	r0, r0
 164:	01e30800 	mvneq	r0, r0, lsl #16
 168:	00010800 	andeq	r0, r1, r0, lsl #16
 16c:	00000050 	andeq	r0, r0, r0, asr r0
 170:	00000000 	andeq	r0, r0, r0
 174:	0001a200 	andeq	sl, r1, r0, lsl #4
 178:	0001a608 	andeq	sl, r1, r8, lsl #12
 17c:	51000108 	tstpl	r0, r8, lsl #2
 180:	080001a6 	stmdaeq	r0, {r1, r2, r5, r7, r8}
 184:	080001aa 	stmdaeq	r0, {r1, r3, r5, r7, r8}
 188:	7c710003 	ldclvc	0, cr0, [r1], #-12
 18c:	0001aa9f 	muleq	r1, pc, sl	; <UNPREDICTABLE>
 190:	0001ae08 	andeq	sl, r1, r8, lsl #28
 194:	51000108 	tstpl	r0, r8, lsl #2
	...
 1a8:	00500001 	subseq	r0, r0, r1
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	03000000 	movweq	r0, #0
 1b4:	9f7c7000 	svcls	0x007c7000
	...
 1c0:	00500001 	subseq	r0, r0, r1
	...
 1d0:	01000000 	mrseq	r0, (UNDEF: 0)
 1d4:	00005100 	andeq	r5, r0, r0, lsl #2
 1d8:	00000000 	andeq	r0, r0, r0
 1dc:	00040000 	andeq	r0, r4, r0
 1e0:	9f5101f3 	svcls	0x005101f3
	...
 1f4:	00520001 	subseq	r0, r2, r1
 1f8:	00000000 	andeq	r0, r0, r0
 1fc:	04000000 	streq	r0, [r0], #-0
 200:	5201f300 	andpl	pc, r1, #0, 6
 204:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 214:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 220:	01f30004 	mvnseq	r0, r4
 224:	00009f51 	andeq	r9, r0, r1, asr pc
	...
 234:	00010000 	andeq	r0, r1, r0
 238:	00000050 	andeq	r0, r0, r0, asr r0
 23c:	00000000 	andeq	r0, r0, r0
 240:	f3000400 	vshl.u8	d0, d0, d0
 244:	009f5001 	addseq	r5, pc, r1
	...
 254:	01000000 	mrseq	r0, (UNDEF: 0)
 258:	00005000 	andeq	r5, r0, r0
 25c:	00000000 	andeq	r0, r0, r0
 260:	00040000 	andeq	r0, r4, r0
 264:	9f5001f3 	svcls	0x005001f3
	...
 278:	00500001 	subseq	r0, r0, r1
 27c:	00000000 	andeq	r0, r0, r0
 280:	04000000 	streq	r0, [r0], #-0
 284:	5001f300 	andpl	pc, r1, r0, lsl #6
 288:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 298:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 2a4:	01f30004 	mvnseq	r0, r4
 2a8:	00009f51 	andeq	r9, r0, r1, asr pc
	...
 2b8:	00010000 	andeq	r0, r1, r0
 2bc:	00000052 	andeq	r0, r0, r2, asr r0
 2c0:	00000000 	andeq	r0, r0, r0
 2c4:	f3000400 	vshl.u8	d0, d0, d0
 2c8:	009f5201 	addseq	r5, pc, r1, lsl #4
	...
 2d8:	01000000 	mrseq	r0, (UNDEF: 0)
 2dc:	00005000 	andeq	r5, r0, r0
 2e0:	00000000 	andeq	r0, r0, r0
 2e4:	00040000 	andeq	r0, r4, r0
 2e8:	9f5001f3 	svcls	0x005001f3
	...
 2fc:	00510001 	subseq	r0, r1, r1
 300:	00000000 	andeq	r0, r0, r0
 304:	04000000 	streq	r0, [r0], #-0
 308:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
 30c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 31c:	52000100 	andpl	r0, r0, #0, 2
	...
 328:	01f30004 	mvnseq	r0, r4
 32c:	00009f52 	andeq	r9, r0, r2, asr pc
	...
 33c:	00010000 	andeq	r0, r1, r0
 340:	00000050 	andeq	r0, r0, r0, asr r0
 344:	00000000 	andeq	r0, r0, r0
 348:	f3000400 	vshl.u8	d0, d0, d0
 34c:	009f5001 	addseq	r5, pc, r1
	...
 35c:	01000000 	mrseq	r0, (UNDEF: 0)
 360:	00005100 	andeq	r5, r0, r0, lsl #2
 364:	00000000 	andeq	r0, r0, r0
 368:	00040000 	andeq	r0, r4, r0
 36c:	9f5101f3 	svcls	0x005101f3
	...
 380:	00520001 	subseq	r0, r2, r1
 384:	00000000 	andeq	r0, r0, r0
 388:	04000000 	streq	r0, [r0], #-0
 38c:	5201f300 	andpl	pc, r1, #0, 6
 390:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 3a0:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 3ac:	01f30004 	mvnseq	r0, r4
 3b0:	00009f50 	andeq	r9, r0, r0, asr pc
	...
 3c0:	00010000 	andeq	r0, r1, r0
 3c4:	00000051 	andeq	r0, r0, r1, asr r0
 3c8:	00000000 	andeq	r0, r0, r0
 3cc:	f3000400 	vshl.u8	d0, d0, d0
 3d0:	009f5101 	addseq	r5, pc, r1, lsl #2
	...
 3e0:	01000000 	mrseq	r0, (UNDEF: 0)
 3e4:	00005000 	andeq	r5, r0, r0
 3e8:	00000000 	andeq	r0, r0, r0
 3ec:	00040000 	andeq	r0, r4, r0
 3f0:	9f5001f3 	svcls	0x005001f3
	...
 404:	00500001 	subseq	r0, r0, r1
 408:	00000000 	andeq	r0, r0, r0
 40c:	04000000 	streq	r0, [r0], #-0
 410:	5001f300 	andpl	pc, r1, r0, lsl #6
 414:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 424:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 430:	01f30004 	mvnseq	r0, r4
 434:	00009f51 	andeq	r9, r0, r1, asr pc
	...
 444:	00010000 	andeq	r0, r1, r0
 448:	00000050 	andeq	r0, r0, r0, asr r0
 44c:	00000000 	andeq	r0, r0, r0
 450:	f3000400 	vshl.u8	d0, d0, d0
 454:	009f5001 	addseq	r5, pc, r1
	...
 464:	01000000 	mrseq	r0, (UNDEF: 0)
 468:	00005100 	andeq	r5, r0, r0, lsl #2
 46c:	00000000 	andeq	r0, r0, r0
 470:	00040000 	andeq	r0, r4, r0
 474:	9f5101f3 	svcls	0x005101f3
	...
 488:	00520001 	subseq	r0, r2, r1
 48c:	00000000 	andeq	r0, r0, r0
 490:	04000000 	streq	r0, [r0], #-0
 494:	5201f300 	andpl	pc, r1, #0, 6
 498:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 4a8:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 4b4:	01f30004 	mvnseq	r0, r4
 4b8:	00009f50 	andeq	r9, r0, r0, asr pc
	...
 4c8:	00010000 	andeq	r0, r1, r0
 4cc:	00000050 	andeq	r0, r0, r0, asr r0
 4d0:	00000000 	andeq	r0, r0, r0
 4d4:	f3000400 	vshl.u8	d0, d0, d0
 4d8:	009f5001 	addseq	r5, pc, r1
	...
 4e8:	01000000 	mrseq	r0, (UNDEF: 0)
 4ec:	00005100 	andeq	r5, r0, r0, lsl #2
 4f0:	00000000 	andeq	r0, r0, r0
 4f4:	00040000 	andeq	r0, r4, r0
 4f8:	9f5101f3 	svcls	0x005101f3
	...
 50c:	00520001 	subseq	r0, r2, r1
 510:	00000000 	andeq	r0, r0, r0
 514:	04000000 	streq	r0, [r0], #-0
 518:	5201f300 	andpl	pc, r1, #0, 6
 51c:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 52c:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 538:	01f30004 	mvnseq	r0, r4
 53c:	00009f50 	andeq	r9, r0, r0, asr pc
	...
 54c:	00010000 	andeq	r0, r1, r0
 550:	00000051 	andeq	r0, r0, r1, asr r0
 554:	00000000 	andeq	r0, r0, r0
 558:	f3000400 	vshl.u8	d0, d0, d0
 55c:	009f5101 	addseq	r5, pc, r1, lsl #2
	...
 56c:	01000000 	mrseq	r0, (UNDEF: 0)
 570:	00005000 	andeq	r5, r0, r0
 574:	00000000 	andeq	r0, r0, r0
 578:	00040000 	andeq	r0, r4, r0
 57c:	9f5001f3 	svcls	0x005001f3
	...
 590:	00500001 	subseq	r0, r0, r1
 594:	00000000 	andeq	r0, r0, r0
 598:	04000000 	streq	r0, [r0], #-0
 59c:	5001f300 	andpl	pc, r1, r0, lsl #6
 5a0:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 5b0:	51000100 	mrspl	r0, (UNDEF: 16)
	...
 5bc:	01f30004 	mvnseq	r0, r4
 5c0:	00009f51 	andeq	r9, r0, r1, asr pc
	...
 5d0:	00010000 	andeq	r0, r1, r0
 5d4:	00000050 	andeq	r0, r0, r0, asr r0
 5d8:	00000000 	andeq	r0, r0, r0
 5dc:	f3000400 	vshl.u8	d0, d0, d0
 5e0:	009f5001 	addseq	r5, pc, r1
	...
 5f0:	01000000 	mrseq	r0, (UNDEF: 0)
 5f4:	00005100 	andeq	r5, r0, r0, lsl #2
 5f8:	00000000 	andeq	r0, r0, r0
 5fc:	00040000 	andeq	r0, r4, r0
 600:	9f5101f3 	svcls	0x005101f3
	...
 614:	00520001 	subseq	r0, r2, r1
 618:	00000000 	andeq	r0, r0, r0
 61c:	04000000 	streq	r0, [r0], #-0
 620:	5201f300 	andpl	pc, r1, #0, 6
 624:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
 634:	50000100 	andpl	r0, r0, r0, lsl #2
	...
 640:	01f30004 	mvnseq	r0, r4
 644:	00009f50 	andeq	r9, r0, r0, asr pc
 648:	00000000 	andeq	r0, r0, r0
 64c:	0c060000 	stceq	0, cr0, [r6], {-0}
 650:	0c0e0800 	stceq	8, cr0, [lr], {-0}
 654:	00050800 	andeq	r0, r5, r0, lsl #16
 658:	29300073 	ldmdbcs	r0!, {r0, r1, r4, r5, r6}
 65c:	000c349f 	muleq	ip, pc, r4	; <UNPREDICTABLE>
 660:	000c3c08 	andeq	r3, ip, r8, lsl #24
 664:	73000508 	movwvc	r0, #1288	; 0x508
 668:	9f293000 	svcls	0x00293000
	...
 674:	08000b4a 	stmdaeq	r0, {r1, r3, r6, r8, r9, fp}
 678:	08000b5d 	stmdaeq	r0, {r0, r2, r3, r4, r6, r8, r9, fp}
 67c:	00510001 	subseq	r0, r1, r1
	...
 68c:	01000000 	mrseq	r0, (UNDEF: 0)
 690:	00005000 	andeq	r5, r0, r0
 694:	00000000 	andeq	r0, r0, r0
 698:	0ebc0000 	cdpeq	0, 11, cr0, cr12, cr0, {0}
 69c:	0ebe0800 	cdpeq	8, 11, cr0, cr14, cr0, {0}
 6a0:	00030800 	andeq	r0, r3, r0, lsl #16
 6a4:	009f2608 	addseq	r2, pc, r8, lsl #12
 6a8:	00000000 	andeq	r0, r0, r0
 6ac:	30000000 	andcc	r0, r0, r0
 6b0:	3a08000e 	bcc	2006f0 <__Main_Stack_Size+0x2002f0>
 6b4:	0108000e 	tsteq	r8, lr
 6b8:	0e3a5000 	cdpeq	0, 3, cr5, cr10, cr0, {0}
 6bc:	0e800800 	cdpeq	8, 8, cr0, cr0, cr0, {0}
 6c0:	00030800 	andeq	r0, r3, r0, lsl #16
 6c4:	009f0170 	addseq	r0, pc, r0, ror r1	; <UNPREDICTABLE>
 6c8:	00000000 	andeq	r0, r0, r0
 6cc:	42000000 	andmi	r0, r0, #0
 6d0:	5008000e 	andpl	r0, r8, lr
 6d4:	0108000e 	tsteq	r8, lr
 6d8:	0e505300 	cdpeq	3, 5, cr5, cr0, cr0, {0}
 6dc:	0e560800 	cdpeq	8, 5, cr0, cr6, cr0, {0}
 6e0:	00010800 	andeq	r0, r1, r0, lsl #16
 6e4:	000e5654 	andeq	r5, lr, r4, asr r6
 6e8:	000e8008 	andeq	r8, lr, r8
 6ec:	53000108 	movwpl	r0, #264	; 0x108
	...
 6f8:	08000e56 	stmdaeq	r0, {r1, r2, r4, r6, r9, sl, fp}
 6fc:	08000e62 	stmdaeq	r0, {r1, r5, r6, r9, sl, fp}
 700:	00530001 	subseq	r0, r3, r1
	...
 710:	01000000 	mrseq	r0, (UNDEF: 0)
 714:	00005000 	andeq	r5, r0, r0
 718:	00000000 	andeq	r0, r0, r0
 71c:	0f140000 	svceq	0x00140000
 720:	0f260800 	svceq	0x00260800
 724:	00010800 	andeq	r0, r1, r0, lsl #16
 728:	000f2650 	andeq	r2, pc, r0, asr r6	; <UNPREDICTABLE>
 72c:	000fcc08 	andeq	ip, pc, r8, lsl #24
 730:	f3000408 	vshl.u8	d0, d8, d0
 734:	009f5001 	addseq	r5, pc, r1
 738:	00000000 	andeq	r0, r0, r0
 73c:	14000000 	strne	r0, [r0], #-0
 740:	2008000f 	andcs	r0, r8, pc
 744:	0108000f 	tsteq	r8, pc
 748:	0f205100 	svceq	0x00205100
 74c:	0f420800 	svceq	0x00420800
 750:	00010800 	andeq	r0, r1, r0, lsl #16
 754:	000f4256 	andeq	r4, pc, r6, asr r2	; <UNPREDICTABLE>
 758:	000fcc08 	andeq	ip, pc, r8, lsl #24
 75c:	f3000408 	vshl.u8	d0, d8, d0
 760:	009f5101 	addseq	r5, pc, r1, lsl #2
 764:	00000000 	andeq	r0, r0, r0
 768:	92000000 	andls	r0, r0, #0
 76c:	c008000f 	andgt	r0, r8, pc
 770:	0108000f 	tsteq	r8, pc
 774:	00005100 	andeq	r5, r0, r0, lsl #2
 778:	00000000 	andeq	r0, r0, r0
 77c:	0ed40000 	cdpeq	0, 13, cr0, cr4, cr0, {0}
 780:	0eda0800 	cdpeq	8, 13, cr0, cr10, cr0, {0}
 784:	00010800 	andeq	r0, r1, r0, lsl #16
 788:	000eda50 	andeq	sp, lr, r0, asr sl
 78c:	000f1408 	andeq	r1, pc, r8, lsl #8
 790:	f3000408 	vshl.u8	d0, d8, d0
 794:	009f5001 	addseq	r5, pc, r1
 798:	00000000 	andeq	r0, r0, r0
 79c:	96000000 	strls	r0, [r0], -r0
 7a0:	9c080010 	stcls	0, cr0, [r8], {16}
 7a4:	03080010 	movweq	r0, #32784	; 0x8010
 7a8:	9f280800 	svcls	0x00280800
	...
 7b4:	080010c2 	stmdaeq	r0, {r1, r6, r7, ip}
 7b8:	080010d0 	stmdaeq	r0, {r4, r6, r7, ip}
 7bc:	400c0006 	andmi	r0, ip, r6
 7c0:	9f000119 	svcls	0x00000119
	...
 7cc:	080010c8 	stmdaeq	r0, {r3, r6, r7, ip}
 7d0:	080010cc 	stmdaeq	r0, {r2, r3, r6, r7, ip}
 7d4:	9f3f0002 	svcls	0x003f0002
	...
 7e0:	080010c8 	stmdaeq	r0, {r3, r6, r7, ip}
 7e4:	080010cc 	stmdaeq	r0, {r2, r3, r6, r7, ip}
 7e8:	ff090003 			; <UNDEFINED> instruction: 0xff090003
 7ec:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 7f0:	00000000 	andeq	r0, r0, r0
 7f4:	00128c00 	andseq	r8, r2, r0, lsl #24
 7f8:	00129f08 	andseq	r9, r2, r8, lsl #30
 7fc:	50000108 	andpl	r0, r0, r8, lsl #2
 800:	0800129f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r7, r9, ip}
 804:	080012cc 	stmdaeq	r0, {r2, r3, r6, r7, r9, ip}
 808:	00540001 	subseq	r0, r4, r1
 80c:	00000000 	andeq	r0, r0, r0
 810:	8c000000 	stchi	0, cr0, [r0], {-0}
 814:	96080012 			; <UNDEFINED> instruction: 0x96080012
 818:	01080012 	tsteq	r8, r2, lsl r0
 81c:	12965100 	addsne	r5, r6, #0, 2
 820:	12cc0800 	sbcne	r0, ip, #0, 16
 824:	00010800 	andeq	r0, r1, r0, lsl #16
 828:	00000058 	andeq	r0, r0, r8, asr r0
 82c:	00000000 	andeq	r0, r0, r0
 830:	00128c00 	andseq	r8, r2, r0, lsl #24
 834:	00129f08 	andseq	r9, r2, r8, lsl #30
 838:	52000108 	andpl	r0, r0, #8, 2
 83c:	0800129f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r7, r9, ip}
 840:	080012a6 	stmdaeq	r0, {r1, r2, r5, r7, r9, ip}
 844:	a6550001 	ldrbge	r0, [r5], -r1
 848:	cc080012 	stcgt	0, cr0, [r8], {18}
 84c:	03080012 	movweq	r0, #32786	; 0x8012
 850:	9f057500 	svcls	0x00057500
	...
 85c:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
 860:	0800129f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r7, r9, ip}
 864:	9f530001 	svcls	0x00530001
 868:	cc080012 	stcgt	0, cr0, [r8], {18}
 86c:	01080012 	tsteq	r8, r2, lsl r0
 870:	00005600 	andeq	r5, r0, r0, lsl #12
 874:	00000000 	andeq	r0, r0, r0
 878:	11600000 	cmnne	r0, r0
 87c:	11700800 	cmnne	r0, r0, lsl #16
 880:	00010800 	andeq	r0, r1, r0, lsl #16
 884:	00117051 	andseq	r7, r1, r1, asr r0
 888:	00118008 	andseq	r8, r1, r8
 88c:	f3000408 	vshl.u8	d0, d8, d0
 890:	809f5101 	addshi	r5, pc, r1, lsl #2
 894:	b8080011 	stmdalt	r8, {r0, r4}
 898:	01080011 	tsteq	r8, r1, lsl r0
 89c:	11b85100 			; <UNDEFINED> instruction: 0x11b85100
 8a0:	11f60800 	mvnsne	r0, r0, lsl #16
 8a4:	00040800 	andeq	r0, r4, r0, lsl #16
 8a8:	9f5101f3 	svcls	0x005101f3
 8ac:	080011f6 	stmdaeq	r0, {r1, r2, r4, r5, r6, r7, r8, ip}
 8b0:	080011fc 	stmdaeq	r0, {r2, r3, r4, r5, r6, r7, r8, ip}
 8b4:	fc510001 	mrrc2	0, 0, r0, r1, cr1
 8b8:	8c080011 	stchi	0, cr0, [r8], {17}
 8bc:	04080012 	streq	r0, [r8], #-18	; 0xffffffee
 8c0:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
 8c4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 8c8:	00000000 	andeq	r0, r0, r0
 8cc:	00122c00 	andseq	r2, r2, r0, lsl #24
 8d0:	00126e08 	andseq	r6, r2, r8, lsl #28
 8d4:	54000608 	strpl	r0, [r0], #-1544	; 0xfffff9f8
 8d8:	93550493 	cmpls	r5, #-1828716544	; 0x93000000
 8dc:	00127a04 	andseq	r7, r2, r4, lsl #20
 8e0:	00128008 	andseq	r8, r2, r8
 8e4:	54000608 	strpl	r0, [r0], #-1544	; 0xfffff9f8
 8e8:	93550493 	cmpls	r5, #-1828716544	; 0x93000000
 8ec:	00000004 	andeq	r0, r0, r4
 8f0:	00000000 	andeq	r0, r0, r0
 8f4:	00121e00 	andseq	r1, r2, r0, lsl #28
 8f8:	00125208 	andseq	r5, r2, r8, lsl #4
 8fc:	5e000108 	adfpls	f0, f0, #0.0
 900:	08001252 	stmdaeq	r0, {r1, r4, r6, r9, ip}
 904:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
 908:	3c700002 	ldclcc	0, cr0, [r0], #-8
	...
 914:	080011ce 	stmdaeq	r0, {r1, r2, r3, r6, r7, r8, ip}
 918:	080011d8 	stmdaeq	r0, {r3, r4, r6, r7, r8, ip}
 91c:	00530001 	subseq	r0, r3, r1
 920:	00000000 	andeq	r0, r0, r0
 924:	ce000000 	cdpgt	0, 0, cr0, cr0, cr0, {0}
 928:	ea080011 	b	200974 <__Main_Stack_Size+0x200574>
 92c:	01080011 	tsteq	r8, r1, lsl r0
 930:	00005000 	andeq	r5, r0, r0
 934:	00000000 	andeq	r0, r0, r0
 938:	11280000 			; <UNDEFINED> instruction: 0x11280000
 93c:	11500800 	cmpne	r0, r0, lsl #16
 940:	00010800 	andeq	r0, r1, r0, lsl #16
 944:	00115051 	andseq	r5, r1, r1, asr r0
 948:	00115408 	andseq	r5, r1, r8, lsl #8
 94c:	70000208 	andvc	r0, r0, r8, lsl #4
 950:	0011540c 	andseq	r5, r1, ip, lsl #8
 954:	00115808 	andseq	r5, r1, r8, lsl #16
 958:	51000108 	tstpl	r0, r8, lsl #2
	...
 964:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
 968:	0800110c 	stmdaeq	r0, {r2, r3, r8, ip}
 96c:	9f300002 	svcls	0x00300002
	...
 978:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
 97c:	0800110c 	stmdaeq	r0, {r2, r3, r8, ip}
 980:	00500001 	subseq	r0, r0, r1
	...
 990:	01000000 	mrseq	r0, (UNDEF: 0)
 994:	00005100 	andeq	r5, r0, r0, lsl #2
 998:	00000000 	andeq	r0, r0, r0
 99c:	00040000 	andeq	r0, r4, r0
 9a0:	9f5101f3 	svcls	0x005101f3
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
{
   0:	0800010c 	stmdaeq	r0, {r2, r3, r8}
  _exit (1);
   4:	08000110 	stmdaeq	r0, {r4, r8}
   8:	08000110 	stmdaeq	r0, {r4, r8}
   c:	08000112 	stmdaeq	r0, {r1, r4, r8}
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
  10:	08000114 	stmdaeq	r0, {r2, r4, r8}
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
  14:	08000128 	stmdaeq	r0, {r3, r5, r8}
    *p++ = *from++;
  18:	08000128 	stmdaeq	r0, {r3, r5, r8}
  while (p < region_end)
  1c:	0800012a 	stmdaeq	r0, {r1, r3, r5, r8}
		tx_cts = 0;
  20:	0800012c 	stmdaeq	r0, {r2, r3, r5, r8}
		USART2->DR = (uint8_t) c;
  24:	0800012e 	stmdaeq	r0, {r1, r2, r3, r5, r8}
  28:	08000130 	stmdaeq	r0, {r4, r5, r8}
  2c:	08000144 	stmdaeq	r0, {r2, r6, r8}
  30:	08000144 	stmdaeq	r0, {r2, r6, r8}
  34:	08000146 	stmdaeq	r0, {r1, r2, r6, r8}
  38:	08000148 	stmdaeq	r0, {r3, r6, r8}
  3c:	0800015c 	stmdaeq	r0, {r2, r3, r4, r6, r8}
  40:	0800015c 	stmdaeq	r0, {r2, r3, r4, r6, r8}
  44:	0800015e 	stmdaeq	r0, {r1, r2, r3, r4, r6, r8}
  48:	08000160 	stmdaeq	r0, {r5, r6, r8}
  4c:	08000162 	stmdaeq	r0, {r1, r5, r6, r8}
  50:	08000164 	stmdaeq	r0, {r2, r5, r6, r8}
  54:	08000166 	stmdaeq	r0, {r1, r2, r5, r6, r8}
  58:	08000168 	stmdaeq	r0, {r3, r5, r6, r8}
  5c:	0800016a 	stmdaeq	r0, {r1, r3, r5, r6, r8}
  60:	0800016c 	stmdaeq	r0, {r2, r3, r5, r6, r8}
  64:	0800016e 	stmdaeq	r0, {r1, r2, r3, r5, r6, r8}
	...
  70:	0800082a 	stmdaeq	r0, {r1, r3, r5, fp}
  74:	0800082c 	stmdaeq	r0, {r2, r3, r5, fp}
  78:	08000862 	stmdaeq	r0, {r1, r5, r6, fp}
  7c:	080008a2 	stmdaeq	r0, {r1, r5, r7, fp}
  80:	080008b0 	stmdaeq	r0, {r4, r5, r7, fp}
  84:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
	...
  90:	08000828 	stmdaeq	r0, {r3, r5, fp}
  94:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
  98:	0800092c 	stmdaeq	r0, {r2, r3, r5, r8, fp}
  9c:	08000988 	stmdaeq	r0, {r3, r7, r8, fp}
	...
  a8:	08000180 	stmdaeq	r0, {r7, r8}
  ac:	08000182 	stmdaeq	r0, {r1, r7, r8}
	...
  b8:	08000988 	stmdaeq	r0, {r3, r7, r8, fp}
  bc:	0800098e 	stmdaeq	r0, {r1, r2, r3, r7, r8, fp}
  c0:	00000001 	andeq	r0, r0, r1
  c4:	00000001 	andeq	r0, r0, r1
	...
  d0:	08000990 	stmdaeq	r0, {r4, r7, r8, fp}
  d4:	080009a8 	stmdaeq	r0, {r3, r5, r7, r8, fp}
  d8:	080009a8 	stmdaeq	r0, {r3, r5, r7, r8, fp}
  dc:	080009ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, fp}
	...
  e8:	080009ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, fp}
  ec:	080009cc 	stmdaeq	r0, {r2, r3, r6, r7, r8, fp}
	...
  f8:	080009cc 	stmdaeq	r0, {r2, r3, r6, r7, r8, fp}
  fc:	08000a0c 	stmdaeq	r0, {r2, r3, r9, fp}
	...
 108:	00000001 	andeq	r0, r0, r1
 10c:	00000001 	andeq	r0, r0, r1
 110:	00000001 	andeq	r0, r0, r1
 114:	00000001 	andeq	r0, r0, r1
 118:	08000184 	stmdaeq	r0, {r2, r7, r8}
 11c:	080001f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, r8}
	...
 128:	08000a0c 	stmdaeq	r0, {r2, r3, r9, fp}
 12c:	08000a1c 	stmdaeq	r0, {r2, r3, r4, r9, fp}
 130:	00000001 	andeq	r0, r0, r1
 134:	00000001 	andeq	r0, r0, r1
 138:	00000001 	andeq	r0, r0, r1
 13c:	00000001 	andeq	r0, r0, r1
 140:	00000001 	andeq	r0, r0, r1
 144:	00000001 	andeq	r0, r0, r1
 148:	00000001 	andeq	r0, r0, r1
 14c:	00000001 	andeq	r0, r0, r1
 150:	00000001 	andeq	r0, r0, r1
 154:	00000001 	andeq	r0, r0, r1
 158:	00000001 	andeq	r0, r0, r1
 15c:	00000001 	andeq	r0, r0, r1
 160:	00000001 	andeq	r0, r0, r1
 164:	00000001 	andeq	r0, r0, r1
 168:	00000001 	andeq	r0, r0, r1
 16c:	00000001 	andeq	r0, r0, r1
 170:	00000001 	andeq	r0, r0, r1
 174:	00000001 	andeq	r0, r0, r1
 178:	00000001 	andeq	r0, r0, r1
 17c:	00000001 	andeq	r0, r0, r1
 180:	00000001 	andeq	r0, r0, r1
 184:	00000001 	andeq	r0, r0, r1
 188:	00000001 	andeq	r0, r0, r1
 18c:	00000001 	andeq	r0, r0, r1
 190:	00000001 	andeq	r0, r0, r1
 194:	00000001 	andeq	r0, r0, r1
 198:	00000001 	andeq	r0, r0, r1
 19c:	00000001 	andeq	r0, r0, r1
 1a0:	00000001 	andeq	r0, r0, r1
 1a4:	00000001 	andeq	r0, r0, r1
 1a8:	00000001 	andeq	r0, r0, r1
 1ac:	00000001 	andeq	r0, r0, r1
	...
 1b8:	08000a1c 	stmdaeq	r0, {r2, r3, r4, r9, fp}
 1bc:	08000a1e 	stmdaeq	r0, {r1, r2, r3, r4, r9, fp}
 1c0:	08000a20 	stmdaeq	r0, {r5, r9, fp}
 1c4:	08000a28 	stmdaeq	r0, {r3, r5, r9, fp}
 1c8:	08000a2a 	stmdaeq	r0, {r1, r3, r5, r9, fp}
 1cc:	08000a66 	stmdaeq	r0, {r1, r2, r5, r6, r9, fp}
 1d0:	08000a6a 	stmdaeq	r0, {r1, r3, r5, r6, r9, fp}
 1d4:	08000a82 	stmdaeq	r0, {r1, r7, r9, fp}
 1d8:	08000a86 	stmdaeq	r0, {r1, r2, r7, r9, fp}
 1dc:	08000a9e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r9, fp}
 1e0:	08000aa2 	stmdaeq	r0, {r1, r5, r7, r9, fp}
 1e4:	08000b22 	stmdaeq	r0, {r1, r5, r8, r9, fp}
 1e8:	08000b26 	stmdaeq	r0, {r1, r2, r5, r8, r9, fp}
 1ec:	08000b3c 	stmdaeq	r0, {r2, r3, r4, r5, r8, r9, fp}
 1f0:	08000b40 	stmdaeq	r0, {r6, r8, r9, fp}
 1f4:	08000b62 	stmdaeq	r0, {r1, r5, r6, r8, r9, fp}
 1f8:	08000b66 	stmdaeq	r0, {r1, r2, r5, r6, r8, r9, fp}
 1fc:	08000b7e 	stmdaeq	r0, {r1, r2, r3, r4, r5, r6, r8, r9, fp}
 200:	08000b82 	stmdaeq	r0, {r1, r7, r8, r9, fp}
 204:	08000b9a 	stmdaeq	r0, {r1, r3, r4, r7, r8, r9, fp}
 208:	08000b9e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r8, r9, fp}
 20c:	08000be0 	stmdaeq	r0, {r5, r6, r7, r8, r9, fp}
	...
 218:	08000a1c 	stmdaeq	r0, {r2, r3, r4, r9, fp}
 21c:	08000be0 	stmdaeq	r0, {r5, r6, r7, r8, r9, fp}
 220:	08000be0 	stmdaeq	r0, {r5, r6, r7, r8, r9, fp}
 224:	08000c68 	stmdaeq	r0, {r3, r5, r6, sl, fp}
 228:	08000c68 	stmdaeq	r0, {r3, r5, r6, sl, fp}
 22c:	08000cd0 	stmdaeq	r0, {r4, r6, r7, sl, fp}
 230:	00000001 	andeq	r0, r0, r1
 234:	00000001 	andeq	r0, r0, r1
 238:	08000cd0 	stmdaeq	r0, {r4, r6, r7, sl, fp}
 23c:	08000d74 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl, fp}
	...
 248:	00000001 	andeq	r0, r0, r1
 24c:	00000001 	andeq	r0, r0, r1
 250:	00000001 	andeq	r0, r0, r1
 254:	00000001 	andeq	r0, r0, r1
	...
 260:	08000e42 	stmdaeq	r0, {r1, r6, r9, sl, fp}
 264:	08000e48 	stmdaeq	r0, {r3, r6, r9, sl, fp}
 268:	08000e4a 	stmdaeq	r0, {r1, r3, r6, r9, sl, fp}
 26c:	08000e64 	stmdaeq	r0, {r2, r5, r6, r9, sl, fp}
	...
 278:	08000e8c 	stmdaeq	r0, {r2, r3, r7, r9, sl, fp}
 27c:	08000e8e 	stmdaeq	r0, {r1, r2, r3, r7, r9, sl, fp}
 280:	08000eb6 	stmdaeq	r0, {r1, r2, r4, r5, r7, r9, sl, fp}
 284:	08000eb8 	stmdaeq	r0, {r3, r4, r5, r7, r9, sl, fp}
 288:	08000ebc 	stmdaeq	r0, {r2, r3, r4, r5, r7, r9, sl, fp}
 28c:	08000ebe 	stmdaeq	r0, {r1, r2, r3, r4, r5, r7, r9, sl, fp}
	...
 298:	08000d74 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl, fp}
 29c:	08000df0 	stmdaeq	r0, {r4, r5, r6, r7, r8, sl, fp}
 2a0:	08000df0 	stmdaeq	r0, {r4, r5, r6, r7, r8, sl, fp}
 2a4:	08000e18 	stmdaeq	r0, {r3, r4, r9, sl, fp}
 2a8:	08000e18 	stmdaeq	r0, {r3, r4, r9, sl, fp}
 2ac:	08000e30 	stmdaeq	r0, {r4, r5, r9, sl, fp}
 2b0:	00000001 	andeq	r0, r0, r1
 2b4:	00000001 	andeq	r0, r0, r1
 2b8:	08000e30 	stmdaeq	r0, {r4, r5, r9, sl, fp}
 2bc:	08000e80 	stmdaeq	r0, {r7, r9, sl, fp}
 2c0:	08000e80 	stmdaeq	r0, {r7, r9, sl, fp}
 2c4:	08000ed4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl, fp}
	...
 2d0:	08000ed4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl, fp}
 2d4:	08000f14 	stmdaeq	r0, {r2, r4, r8, r9, sl, fp}
 2d8:	08000f14 	stmdaeq	r0, {r2, r4, r8, r9, sl, fp}
 2dc:	08000fcc 	stmdaeq	r0, {r2, r3, r6, r7, r8, r9, sl, fp}
	...
 2e8:	08000ff0 	stmdaeq	r0, {r4, r5, r6, r7, r8, r9, sl, fp}
 2ec:	08000ff4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl, fp}
 2f0:	08001096 	stmdaeq	r0, {r1, r2, r4, r7, ip}
 2f4:	0800109c 	stmdaeq	r0, {r2, r3, r4, r7, ip}
	...
 300:	08001058 	stmdaeq	r0, {r3, r4, r6, ip}
 304:	0800105a 	stmdaeq	r0, {r1, r3, r4, r6, ip}
 308:	08001064 	stmdaeq	r0, {r2, r5, r6, ip}
 30c:	08001068 	stmdaeq	r0, {r3, r5, r6, ip}
 310:	080010b4 	stmdaeq	r0, {r2, r4, r5, r7, ip}
 314:	080010b6 	stmdaeq	r0, {r1, r2, r4, r5, r7, ip}
 318:	080010c2 	stmdaeq	r0, {r1, r6, r7, ip}
 31c:	080010d0 	stmdaeq	r0, {r4, r6, r7, ip}
	...
 328:	08001058 	stmdaeq	r0, {r3, r4, r6, ip}
 32c:	0800105a 	stmdaeq	r0, {r1, r3, r4, r6, ip}
 330:	080010c4 	stmdaeq	r0, {r2, r6, r7, ip}
 334:	080010c6 	stmdaeq	r0, {r1, r2, r6, r7, ip}
 338:	080010c8 	stmdaeq	r0, {r3, r6, r7, ip}
 33c:	080010cc 	stmdaeq	r0, {r2, r3, r6, r7, ip}
	...
 348:	08000fcc 	stmdaeq	r0, {r2, r3, r6, r7, r8, r9, sl, fp}
 34c:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
	...
 358:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
 35c:	080010fa 	stmdaeq	r0, {r1, r3, r4, r5, r6, r7, ip}
 360:	080010fc 	stmdaeq	r0, {r2, r3, r4, r5, r6, r7, ip}
 364:	08001100 	stmdaeq	r0, {r8, ip}
 368:	08001106 	stmdaeq	r0, {r1, r2, r8, ip}
 36c:	08001108 	stmdaeq	r0, {r3, r8, ip}
 370:	0800110a 	stmdaeq	r0, {r1, r3, r8, ip}
 374:	0800110c 	stmdaeq	r0, {r2, r3, r8, ip}
	...
 380:	080010f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, ip}
 384:	08001124 	stmdaeq	r0, {r2, r5, r8, ip}
 388:	08001124 	stmdaeq	r0, {r2, r5, r8, ip}
 38c:	08001128 	stmdaeq	r0, {r3, r5, r8, ip}
 390:	08001128 	stmdaeq	r0, {r3, r5, r8, ip}
 394:	08001158 	stmdaeq	r0, {r3, r4, r6, r8, ip}
 398:	08001158 	stmdaeq	r0, {r3, r4, r6, r8, ip}
 39c:	0800115c 	stmdaeq	r0, {r2, r3, r4, r6, r8, ip}
 3a0:	0800115c 	stmdaeq	r0, {r2, r3, r4, r6, r8, ip}
 3a4:	08001160 	stmdaeq	r0, {r5, r6, r8, ip}
 3a8:	00000001 	andeq	r0, r0, r1
 3ac:	00000001 	andeq	r0, r0, r1
 3b0:	08001160 	stmdaeq	r0, {r5, r6, r8, ip}
 3b4:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
 3b8:	0800128c 	stmdaeq	r0, {r2, r3, r7, r9, ip}
 3bc:	080012cc 	stmdaeq	r0, {r2, r3, r6, r7, r9, ip}
	...
