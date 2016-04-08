
build/pid.elf:     file format elf32-littlearm


Disassembly of section .isr_vector:

08000000 <__isr_vectors>:
 8000000:	00 50 00 20 0d 01 00 08 11 01 00 08 15 01 00 08     .P. ............
 8000010:	2d 01 00 08 31 01 00 08 49 01 00 08 00 00 00 00     -...1...I.......
	...
 800002c:	61 01 00 08 65 01 00 08 00 00 00 00 69 01 00 08     a...e.......i...
 800003c:	01 0b 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 800004c:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 800005c:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 800006c:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 800007c:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 800008c:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 800009c:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 80000ac:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 80000bc:	81 01 00 08 81 01 00 08 81 01 00 08 81 01 00 08     ................
 80000cc:	81 01 00 08 81 01 00 08 81 01 00 08 b9 0d 00 08     ................
 80000dc:	81 01 00 08 75 0a 00 08 81 01 00 08 81 01 00 08     ....u...........
	...
 8000108:	5f f8 08 f1                                         _...

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
  while (1)
    ;
}

void __attribute__ ((section(".after_vectors"),weak)) SysTick_Handler (void)
{
 800016c:	4770      	bx	lr
 800016e:	0000      	.short	0x0000
 8000170:	08000185 	.word	0x08000185
 8000174:	08000129 	.word	0x08000129
 8000178:	08000145 	.word	0x08000145
 800017c:	0800015d 	.word	0x0800015d

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
 8000188:	f000 fc2a 	bl	80009e0 <__initialize_hardware_early>
__initialize_data (unsigned int* from, unsigned int* region_begin,
		   unsigned int* region_end)
{
  // Iterate and copy word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = region_begin;
 800018c:	4b0e      	ldr	r3, [pc, #56]	; (80001c8 <_start+0x44>)
  // enabled and require an early sequence to disable it.
  //
  // Also useful on platform with external RAM, that need to be
  // initialised before filling the BSS section.

  __initialize_hardware_early ();
 800018e:	4a0f      	ldr	r2, [pc, #60]	; (80001cc <_start+0x48>)
 8000190:	e003      	b.n	800019a <_start+0x16>
{
  // Iterate and copy word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = region_begin;
  while (p < region_end)
    *p++ = *from++;
 8000192:	6811      	ldr	r1, [r2, #0]
 8000194:	6019      	str	r1, [r3, #0]
 8000196:	3304      	adds	r3, #4
 8000198:	3204      	adds	r2, #4
		   unsigned int* region_end)
{
  // Iterate and copy word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = region_begin;
  while (p < region_end)
 800019a:	490d      	ldr	r1, [pc, #52]	; (80001d0 <_start+0x4c>)
 800019c:	428b      	cmp	r3, r1
 800019e:	d3f8      	bcc.n	8000192 <_start+0xe>
 80001a0:	4b0c      	ldr	r3, [pc, #48]	; (80001d4 <_start+0x50>)
 80001a2:	e002      	b.n	80001aa <_start+0x26>
{
  // Iterate and clear word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = region_begin;
  while (p < region_end)
    *p++ = 0;
 80001a4:	2200      	movs	r2, #0
 80001a6:	601a      	str	r2, [r3, #0]
 80001a8:	3304      	adds	r3, #4
__initialize_bss (unsigned int* region_begin, unsigned int* region_end)
{
  // Iterate and clear word by word.
  // It is assumed that the pointers are word aligned.
  unsigned int *p = region_begin;
  while (p < region_end)
 80001aa:	4a0b      	ldr	r2, [pc, #44]	; (80001d8 <_start+0x54>)
 80001ac:	4293      	cmp	r3, r2
 80001ae:	d3f9      	bcc.n	80001a4 <_start+0x20>
  // Zero fill the BSS section (inlined).
  __initialize_bss (&__bss_start__, &__bss_end__);

  // Hook to continue the initialisations. Usually compute and store the
  // clock frequency in the global CMSIS variable, cleared above.
  __initialize_hardware ();
 80001b0:	f000 fc22 	bl	80009f8 <__initialize_hardware>

  // Get the argc/argv (useful in semihosting configurations).
  int argc;
  char** argv;
  __initialize_args (&argc, &argv);
 80001b4:	4669      	mov	r1, sp
 80001b6:	a801      	add	r0, sp, #4
 80001b8:	f000 fc54 	bl	8000a64 <__initialize_args>

  // Call the main entry point, and save the exit code.
  int code = main (argc, argv);
 80001bc:	9900      	ldr	r1, [sp, #0]
 80001be:	9801      	ldr	r0, [sp, #4]
 80001c0:	f000 fdba 	bl	8000d38 <main>

  _exit (code);
 80001c4:	f000 fc08 	bl	80009d8 <_exit>
 80001c8:	20000000 	.word	0x20000000
 80001cc:	08001e74 	.word	0x08001e74
 80001d0:	20000088 	.word	0x20000088
 80001d4:	20000088 	.word	0x20000088
 80001d8:	20001354 	.word	0x20001354

Disassembly of section .text:

08000828 <SetSysClockTo72>:
  * @note   This function should be used only after reset.
  * @param  None
  * @retval None
  */
static void SetSysClockTo72(void)
{
 8000828:	b082      	sub	sp, #8
  __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
 800082a:	2300      	movs	r3, #0
 800082c:	9301      	str	r3, [sp, #4]
 800082e:	9300      	str	r3, [sp, #0]
  
  /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/    
  /* Enable HSE */    
  RCC->CR |= ((uint32_t)RCC_CR_HSEON);
 8000830:	4a2c      	ldr	r2, [pc, #176]	; (80008e4 <__bss_regions_array_end+0xbc>)
 8000832:	6813      	ldr	r3, [r2, #0]
 8000834:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000838:	6013      	str	r3, [r2, #0]
 
  /* Wait till HSE is ready and if Time out is reached exit */
  do
  {
    HSEStatus = RCC->CR & RCC_CR_HSERDY;
 800083a:	4b2a      	ldr	r3, [pc, #168]	; (80008e4 <__bss_regions_array_end+0xbc>)
 800083c:	681b      	ldr	r3, [r3, #0]
 800083e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000842:	9300      	str	r3, [sp, #0]
    StartUpCounter++;  
 8000844:	9b01      	ldr	r3, [sp, #4]
 8000846:	3301      	adds	r3, #1
 8000848:	9301      	str	r3, [sp, #4]
  } while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
 800084a:	9b00      	ldr	r3, [sp, #0]
 800084c:	b91b      	cbnz	r3, 8000856 <SetSysClockTo72+0x2e>
 800084e:	9b01      	ldr	r3, [sp, #4]
 8000850:	f5b3 6fa0 	cmp.w	r3, #1280	; 0x500
 8000854:	d1f1      	bne.n	800083a <SetSysClockTo72+0x12>

  if ((RCC->CR & RCC_CR_HSERDY) != RESET)
 8000856:	4b23      	ldr	r3, [pc, #140]	; (80008e4 <__bss_regions_array_end+0xbc>)
 8000858:	681b      	ldr	r3, [r3, #0]
 800085a:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 800085e:	d002      	beq.n	8000866 <SetSysClockTo72+0x3e>
  {
    HSEStatus = (uint32_t)0x01;
 8000860:	2301      	movs	r3, #1
 8000862:	9300      	str	r3, [sp, #0]
 8000864:	e001      	b.n	800086a <SetSysClockTo72+0x42>
  }
  else
  {
    HSEStatus = (uint32_t)0x00;
 8000866:	2300      	movs	r3, #0
 8000868:	9300      	str	r3, [sp, #0]
  }  

  if (HSEStatus == (uint32_t)0x01)
 800086a:	9b00      	ldr	r3, [sp, #0]
 800086c:	2b01      	cmp	r3, #1
 800086e:	d136      	bne.n	80008de <SetSysClockTo72+0xb6>
  {
    /* Enable Prefetch Buffer */
    FLASH->ACR |= FLASH_ACR_PRFTBE;
 8000870:	4b1d      	ldr	r3, [pc, #116]	; (80008e8 <__bss_regions_array_end+0xc0>)
 8000872:	681a      	ldr	r2, [r3, #0]
 8000874:	f042 0210 	orr.w	r2, r2, #16
 8000878:	601a      	str	r2, [r3, #0]

    /* Flash 2 wait state */
    FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
 800087a:	681a      	ldr	r2, [r3, #0]
 800087c:	f022 0203 	bic.w	r2, r2, #3
 8000880:	601a      	str	r2, [r3, #0]
    FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_2;    
 8000882:	681a      	ldr	r2, [r3, #0]
 8000884:	f042 0202 	orr.w	r2, r2, #2
 8000888:	601a      	str	r2, [r3, #0]

 
    /* HCLK = SYSCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
 800088a:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 800088e:	685a      	ldr	r2, [r3, #4]
 8000890:	605a      	str	r2, [r3, #4]
      
    /* PCLK2 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
 8000892:	685a      	ldr	r2, [r3, #4]
 8000894:	605a      	str	r2, [r3, #4]
    
    /* PCLK1 = HCLK */
    RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;
 8000896:	685a      	ldr	r2, [r3, #4]
 8000898:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800089c:	605a      	str	r2, [r3, #4]
    RCC->CFGR &= (uint32_t)~(RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL);
    RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLXTPRE_PREDIV1 | RCC_CFGR_PLLSRC_PREDIV1 | 
                            RCC_CFGR_PLLMULL9); 
#else    
    /*  PLL configuration: PLLCLK = 12MHz * 6 = 72 MHz */
    RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE |
 800089e:	685a      	ldr	r2, [r3, #4]
 80008a0:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80008a4:	605a      	str	r2, [r3, #4]
                                        RCC_CFGR_PLLMULL));
    RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | (72000000 / HSE_VALUE - 2) << 18); //RCC_CFGR_PLLMULL9);
 80008a6:	685a      	ldr	r2, [r3, #4]
 80008a8:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80008ac:	605a      	str	r2, [r3, #4]
#endif /* STM32F10X_CL */

    /* Enable PLL */
    RCC->CR |= RCC_CR_PLLON;
 80008ae:	681a      	ldr	r2, [r3, #0]
 80008b0:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80008b4:	601a      	str	r2, [r3, #0]

    /* Wait till PLL is ready */
    while((RCC->CR & RCC_CR_PLLRDY) == 0)
 80008b6:	4b0b      	ldr	r3, [pc, #44]	; (80008e4 <__bss_regions_array_end+0xbc>)
 80008b8:	681b      	ldr	r3, [r3, #0]
 80008ba:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 80008be:	d0fa      	beq.n	80008b6 <SetSysClockTo72+0x8e>
    {
    }
    
    /* Select PLL as system clock source */
    RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
 80008c0:	4b08      	ldr	r3, [pc, #32]	; (80008e4 <__bss_regions_array_end+0xbc>)
 80008c2:	685a      	ldr	r2, [r3, #4]
 80008c4:	f022 0203 	bic.w	r2, r2, #3
 80008c8:	605a      	str	r2, [r3, #4]
    RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;    
 80008ca:	685a      	ldr	r2, [r3, #4]
 80008cc:	f042 0202 	orr.w	r2, r2, #2
 80008d0:	605a      	str	r2, [r3, #4]

    /* Wait till PLL is used as system clock source */
    while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
 80008d2:	4b04      	ldr	r3, [pc, #16]	; (80008e4 <__bss_regions_array_end+0xbc>)
 80008d4:	685b      	ldr	r3, [r3, #4]
 80008d6:	f003 030c 	and.w	r3, r3, #12
 80008da:	2b08      	cmp	r3, #8
 80008dc:	d1f9      	bne.n	80008d2 <SetSysClockTo72+0xaa>
  }
  else
  { /* If HSE fails to start-up, the application will have wrong clock 
         configuration. User can add here some code to deal with this error */
  }
}
 80008de:	b002      	add	sp, #8
 80008e0:	4770      	bx	lr
 80008e2:	bf00      	nop
 80008e4:	40021000 	.word	0x40021000
 80008e8:	40022000 	.word	0x40022000

080008ec <SetSysClock>:
  * @brief  Configures the System clock frequency, HCLK, PCLK2 and PCLK1 prescalers.
  * @param  None
  * @retval None
  */
static void SetSysClock(void)
{
 80008ec:	b508      	push	{r3, lr}
#elif defined SYSCLK_FREQ_48MHz
  SetSysClockTo48();
#elif defined SYSCLK_FREQ_56MHz
  SetSysClockTo56();  
#elif defined SYSCLK_FREQ_72MHz
  SetSysClockTo72();
 80008ee:	f7ff ff9b 	bl	8000828 <SetSysClockTo72>
 80008f2:	bd08      	pop	{r3, pc}

080008f4 <SystemInit>:
  * @note   This function should be used only after reset.
  * @param  None
  * @retval None
  */
void SystemInit (void)
{
 80008f4:	b508      	push	{r3, lr}
  /* Reset the RCC clock configuration to the default reset state(for debug purpose) */
  /* Set HSION bit */
  RCC->CR |= (uint32_t)0x00000001;
 80008f6:	4b10      	ldr	r3, [pc, #64]	; (8000938 <SystemInit+0x44>)
 80008f8:	681a      	ldr	r2, [r3, #0]
 80008fa:	f042 0201 	orr.w	r2, r2, #1
 80008fe:	601a      	str	r2, [r3, #0]

  /* Reset SW, HPRE, PPRE1, PPRE2, ADCPRE and MCO bits */
#ifndef STM32F10X_CL
  RCC->CFGR &= (uint32_t)0xF8FF0000;
 8000900:	6859      	ldr	r1, [r3, #4]
 8000902:	4a0e      	ldr	r2, [pc, #56]	; (800093c <SystemInit+0x48>)
 8000904:	400a      	ands	r2, r1
 8000906:	605a      	str	r2, [r3, #4]
#else
  RCC->CFGR &= (uint32_t)0xF0FF0000;
#endif /* STM32F10X_CL */   
  
  /* Reset HSEON, CSSON and PLLON bits */
  RCC->CR &= (uint32_t)0xFEF6FFFF;
 8000908:	681a      	ldr	r2, [r3, #0]
 800090a:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800090e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8000912:	601a      	str	r2, [r3, #0]

  /* Reset HSEBYP bit */
  RCC->CR &= (uint32_t)0xFFFBFFFF;
 8000914:	681a      	ldr	r2, [r3, #0]
 8000916:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800091a:	601a      	str	r2, [r3, #0]

  /* Reset PLLSRC, PLLXTPRE, PLLMUL and USBPRE/OTGFSPRE bits */
  RCC->CFGR &= (uint32_t)0xFF80FFFF;
 800091c:	685a      	ldr	r2, [r3, #4]
 800091e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8000922:	605a      	str	r2, [r3, #4]

  /* Reset CFGR2 register */
  RCC->CFGR2 = 0x00000000;      
#else
  /* Disable all interrupts and clear pending bits  */
  RCC->CIR = 0x009F0000;
 8000924:	f44f 021f 	mov.w	r2, #10420224	; 0x9f0000
 8000928:	609a      	str	r2, [r3, #8]
  #endif /* DATA_IN_ExtSRAM */
#endif 

  /* Configure the System clock frequency, HCLK, PCLK2 and PCLK1 prescalers */
  /* Configure the Flash Latency cycles and enable prefetch buffer */
  SetSysClock();
 800092a:	f7ff ffdf 	bl	80008ec <SetSysClock>

#ifdef VECT_TAB_SRAM
  SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM. */
#else
  SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */
 800092e:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000932:	4b03      	ldr	r3, [pc, #12]	; (8000940 <SystemInit+0x4c>)
 8000934:	609a      	str	r2, [r3, #8]
 8000936:	bd08      	pop	{r3, pc}
 8000938:	40021000 	.word	0x40021000
 800093c:	f8ff0000 	.word	0xf8ff0000
 8000940:	e000ed00 	.word	0xe000ed00

08000944 <SystemCoreClockUpdate>:
#if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || (defined STM32F10X_HD_VL)
  uint32_t prediv1factor = 0;
#endif /* STM32F10X_LD_VL or STM32F10X_MD_VL or STM32F10X_HD_VL */
    
  /* Get SYSCLK source -------------------------------------------------------*/
  tmp = RCC->CFGR & RCC_CFGR_SWS;
 8000944:	4b1f      	ldr	r3, [pc, #124]	; (80009c4 <SystemCoreClockUpdate+0x80>)
 8000946:	685b      	ldr	r3, [r3, #4]
 8000948:	f003 030c 	and.w	r3, r3, #12
  
  switch (tmp)
 800094c:	2b04      	cmp	r3, #4
 800094e:	d006      	beq.n	800095e <SystemCoreClockUpdate+0x1a>
 8000950:	2b08      	cmp	r3, #8
 8000952:	d008      	beq.n	8000966 <SystemCoreClockUpdate+0x22>
 8000954:	bb3b      	cbnz	r3, 80009a6 <SystemCoreClockUpdate+0x62>
  {
    case 0x00:  /* HSI used as system clock */
      SystemCoreClock = HSI_VALUE;
 8000956:	4a1c      	ldr	r2, [pc, #112]	; (80009c8 <SystemCoreClockUpdate+0x84>)
 8000958:	4b1c      	ldr	r3, [pc, #112]	; (80009cc <SystemCoreClockUpdate+0x88>)
 800095a:	601a      	str	r2, [r3, #0]
      break;
 800095c:	e026      	b.n	80009ac <SystemCoreClockUpdate+0x68>
    case 0x04:  /* HSE used as system clock */
      SystemCoreClock = HSE_VALUE;
 800095e:	4a1a      	ldr	r2, [pc, #104]	; (80009c8 <SystemCoreClockUpdate+0x84>)
 8000960:	4b1a      	ldr	r3, [pc, #104]	; (80009cc <SystemCoreClockUpdate+0x88>)
 8000962:	601a      	str	r2, [r3, #0]
      break;
 8000964:	e022      	b.n	80009ac <SystemCoreClockUpdate+0x68>
    case 0x08:  /* PLL used as system clock */

      /* Get PLL clock source and multiplication factor ----------------------*/
      pllmull = RCC->CFGR & RCC_CFGR_PLLMULL;
 8000966:	4a17      	ldr	r2, [pc, #92]	; (80009c4 <SystemCoreClockUpdate+0x80>)
 8000968:	6853      	ldr	r3, [r2, #4]
      pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
 800096a:	6852      	ldr	r2, [r2, #4]
      
#ifndef STM32F10X_CL      
      pllmull = ( pllmull >> 18) + 2;
 800096c:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8000970:	3302      	adds	r3, #2
      
      if (pllsource == 0x00)
 8000972:	f412 3f80 	tst.w	r2, #65536	; 0x10000
 8000976:	d105      	bne.n	8000984 <SystemCoreClockUpdate+0x40>
      {
        /* HSI oscillator clock divided by 2 selected as PLL clock entry */
        SystemCoreClock = (HSI_VALUE >> 1) * pllmull;
 8000978:	4a15      	ldr	r2, [pc, #84]	; (80009d0 <SystemCoreClockUpdate+0x8c>)
 800097a:	fb02 f303 	mul.w	r3, r2, r3
 800097e:	4a13      	ldr	r2, [pc, #76]	; (80009cc <SystemCoreClockUpdate+0x88>)
 8000980:	6013      	str	r3, [r2, #0]
 8000982:	e013      	b.n	80009ac <SystemCoreClockUpdate+0x68>
       prediv1factor = (RCC->CFGR2 & RCC_CFGR2_PREDIV1) + 1;
       /* HSE oscillator clock selected as PREDIV1 clock entry */
       SystemCoreClock = (HSE_VALUE / prediv1factor) * pllmull; 
 #else
        /* HSE selected as PLL clock entry */
        if ((RCC->CFGR & RCC_CFGR_PLLXTPRE) != (uint32_t)RESET)
 8000984:	4a0f      	ldr	r2, [pc, #60]	; (80009c4 <SystemCoreClockUpdate+0x80>)
 8000986:	6852      	ldr	r2, [r2, #4]
 8000988:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 800098c:	d005      	beq.n	800099a <SystemCoreClockUpdate+0x56>
        {/* HSE oscillator clock divided by 2 */
          SystemCoreClock = (HSE_VALUE >> 1) * pllmull;
 800098e:	4a10      	ldr	r2, [pc, #64]	; (80009d0 <SystemCoreClockUpdate+0x8c>)
 8000990:	fb02 f303 	mul.w	r3, r2, r3
 8000994:	4a0d      	ldr	r2, [pc, #52]	; (80009cc <SystemCoreClockUpdate+0x88>)
 8000996:	6013      	str	r3, [r2, #0]
 8000998:	e008      	b.n	80009ac <SystemCoreClockUpdate+0x68>
        }
        else
        {
          SystemCoreClock = HSE_VALUE * pllmull;
 800099a:	4a0b      	ldr	r2, [pc, #44]	; (80009c8 <SystemCoreClockUpdate+0x84>)
 800099c:	fb02 f303 	mul.w	r3, r2, r3
 80009a0:	4a0a      	ldr	r2, [pc, #40]	; (80009cc <SystemCoreClockUpdate+0x88>)
 80009a2:	6013      	str	r3, [r2, #0]
 80009a4:	e002      	b.n	80009ac <SystemCoreClockUpdate+0x68>
      }
#endif /* STM32F10X_CL */ 
      break;

    default:
      SystemCoreClock = HSI_VALUE;
 80009a6:	4a08      	ldr	r2, [pc, #32]	; (80009c8 <SystemCoreClockUpdate+0x84>)
 80009a8:	4b08      	ldr	r3, [pc, #32]	; (80009cc <SystemCoreClockUpdate+0x88>)
 80009aa:	601a      	str	r2, [r3, #0]
      break;
  }
  
  /* Compute HCLK clock frequency ----------------*/
  /* Get HCLK prescaler */
  tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
 80009ac:	4b05      	ldr	r3, [pc, #20]	; (80009c4 <SystemCoreClockUpdate+0x80>)
 80009ae:	685b      	ldr	r3, [r3, #4]
 80009b0:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80009b4:	4a07      	ldr	r2, [pc, #28]	; (80009d4 <SystemCoreClockUpdate+0x90>)
 80009b6:	5cd3      	ldrb	r3, [r2, r3]
 80009b8:	b2da      	uxtb	r2, r3
  /* HCLK clock frequency */
  SystemCoreClock >>= tmp;  
 80009ba:	4904      	ldr	r1, [pc, #16]	; (80009cc <SystemCoreClockUpdate+0x88>)
 80009bc:	680b      	ldr	r3, [r1, #0]
 80009be:	40d3      	lsrs	r3, r2
 80009c0:	600b      	str	r3, [r1, #0]
 80009c2:	4770      	bx	lr
 80009c4:	40021000 	.word	0x40021000
 80009c8:	007a1200 	.word	0x007a1200
 80009cc:	20000010 	.word	0x20000010
 80009d0:	003d0900 	.word	0x003d0900
 80009d4:	20000000 	.word	0x20000000

080009d8 <_exit>:
// the debugger.
//
// It can be redefined in the application, if more functionality
// is required.
void __attribute__((weak)) _exit (int code __attribute__((unused)))
{
 80009d8:	b508      	push	{r3, lr}
  __reset_hardware ();
 80009da:	f000 f811 	bl	8000a00 <__reset_hardware>
 80009de:	bf00      	nop

080009e0 <__initialize_hardware_early>:
//
// After Reset the Cortex-M processor is in Thread mode,
// priority is Privileged, and the Stack is set to Main.

void __attribute__((weak)) __initialize_hardware_early (void)
{
 80009e0:	b508      	push	{r3, lr}
  // Call the CSMSIS system initialisation routine.
  SystemInit();
 80009e2:	f7ff ff87 	bl	80008f4 <SystemInit>

#if defined(__ARM_ARCH_7M__)
  // Set VTOR to the actual address, provided by the linker script.
  // Override the manual, possibly wrong, SystemInit() setting.
  SCB->VTOR = (uint32_t)(&__vectors_start);
 80009e6:	4b02      	ldr	r3, [pc, #8]	; (80009f0 <__initialize_hardware_early+0x10>)
 80009e8:	4a02      	ldr	r2, [pc, #8]	; (80009f4 <__initialize_hardware_early+0x14>)
 80009ea:	609a      	str	r2, [r3, #8]
 80009ec:	bd08      	pop	{r3, pc}
 80009ee:	bf00      	nop
 80009f0:	e000ed00 	.word	0xe000ed00
 80009f4:	08000000 	.word	0x08000000

080009f8 <__initialize_hardware>:
//
// Called from _start(), right after data & bss init, before
// constructors.

void __attribute__((weak)) __initialize_hardware (void)
{  
 80009f8:	b508      	push	{r3, lr}
  // Call the CSMSIS system clock routine to store the clock frequency
  // in the SystemCoreClock global RAM location.
  SystemCoreClockUpdate ();
 80009fa:	f7ff ffa3 	bl	8000944 <SystemCoreClockUpdate>
 80009fe:	bd08      	pop	{r3, pc}

08000a00 <__reset_hardware>:
    This function acts as a special kind of Data Memory Barrier.
    It completes when all explicit memory accesses before this instruction complete.
 */
__attribute__( ( always_inline ) ) __STATIC_INLINE void __DSB(void)
{
  __ASM volatile ("dsb");
 8000a00:	f3bf 8f4f 	dsb	sy
__STATIC_INLINE void NVIC_SystemReset(void)
{
  __DSB();                                                     /* Ensure all outstanding memory accesses included
                                                                  buffered write are completed before reset */
  SCB->AIRCR  = ((0x5FA << SCB_AIRCR_VECTKEY_Pos)      |
                 (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
 8000a04:	4904      	ldr	r1, [pc, #16]	; (8000a18 <__reset_hardware+0x18>)
 8000a06:	68ca      	ldr	r2, [r1, #12]
 8000a08:	f402 62e0 	and.w	r2, r2, #1792	; 0x700
 8000a0c:	4b03      	ldr	r3, [pc, #12]	; (8000a1c <__reset_hardware+0x1c>)
 8000a0e:	4313      	orrs	r3, r2
 */
__STATIC_INLINE void NVIC_SystemReset(void)
{
  __DSB();                                                     /* Ensure all outstanding memory accesses included
                                                                  buffered write are completed before reset */
  SCB->AIRCR  = ((0x5FA << SCB_AIRCR_VECTKEY_Pos)      |
 8000a10:	60cb      	str	r3, [r1, #12]
 8000a12:	f3bf 8f4f 	dsb	sy
 8000a16:	e7fe      	b.n	8000a16 <__reset_hardware+0x16>
 8000a18:	e000ed00 	.word	0xe000ed00
 8000a1c:	05fa0004 	.word	0x05fa0004

08000a20 <_sbrk>:

// The definitions used here should be kept in sync with the
// stack definitions in the linker script.

caddr_t _sbrk (int incr)
{
 8000a20:	b508      	push	{r3, lr}
  extern char _Heap_Limit; // Defined by the linker.

  static char* current_heap_end;
  char* current_block_address;

  if (current_heap_end == 0)
 8000a22:	4b0d      	ldr	r3, [pc, #52]	; (8000a58 <_sbrk+0x38>)
 8000a24:	681b      	ldr	r3, [r3, #0]
 8000a26:	b913      	cbnz	r3, 8000a2e <_sbrk+0xe>
    {
      current_heap_end = &_Heap_Begin;
 8000a28:	4a0c      	ldr	r2, [pc, #48]	; (8000a5c <_sbrk+0x3c>)
 8000a2a:	4b0b      	ldr	r3, [pc, #44]	; (8000a58 <_sbrk+0x38>)
 8000a2c:	601a      	str	r2, [r3, #0]
    }

  current_block_address = current_heap_end;
 8000a2e:	4b0a      	ldr	r3, [pc, #40]	; (8000a58 <_sbrk+0x38>)
 8000a30:	681a      	ldr	r2, [r3, #0]

  // Need to align heap to word boundary, else will get
  // hard faults on Cortex-M0. So we assume that heap starts on
  // word boundary, hence make sure we always add a multiple of
  // 4 to it.
  incr = (incr + 3) & (~3); // align value to 4
 8000a32:	1cc3      	adds	r3, r0, #3
 8000a34:	f023 0303 	bic.w	r3, r3, #3
  if (current_heap_end + incr > &_Heap_Limit)
 8000a38:	4413      	add	r3, r2
 8000a3a:	4909      	ldr	r1, [pc, #36]	; (8000a60 <_sbrk+0x40>)
 8000a3c:	428b      	cmp	r3, r1
 8000a3e:	d906      	bls.n	8000a4e <_sbrk+0x2e>
    {
      // Heap has overflowed
      errno = ENOMEM;
 8000a40:	f000 fc82 	bl	8001348 <__errno>
 8000a44:	230c      	movs	r3, #12
 8000a46:	6003      	str	r3, [r0, #0]
      return (caddr_t) - 1;
 8000a48:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000a4c:	bd08      	pop	{r3, pc}
    }

  current_heap_end += incr;
 8000a4e:	4902      	ldr	r1, [pc, #8]	; (8000a58 <_sbrk+0x38>)
 8000a50:	600b      	str	r3, [r1, #0]

  return (caddr_t) current_block_address;
 8000a52:	4610      	mov	r0, r2
}
 8000a54:	bd08      	pop	{r3, pc}
 8000a56:	bf00      	nop
 8000a58:	20000088 	.word	0x20000088
 8000a5c:	20001354 	.word	0x20001354
 8000a60:	20004c00 	.word	0x20004c00

08000a64 <__initialize_args>:
  // available from the host environment. argv[argc] shall be a null pointer.
  // (static, no const)
  static char* argv[2] =
    { name, NULL };

  *p_argc = 1;
 8000a64:	2301      	movs	r3, #1
 8000a66:	6003      	str	r3, [r0, #0]
  *p_argv = &argv[0];
 8000a68:	4b01      	ldr	r3, [pc, #4]	; (8000a70 <__initialize_args+0xc>)
 8000a6a:	600b      	str	r3, [r1, #0]
 8000a6c:	4770      	bx	lr
 8000a6e:	bf00      	nop
 8000a70:	20000014 	.word	0x20000014

08000a74 <EXTI15_10_IRQHandler>:
/* ------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------ */

/* Step/Dir interrupt handler */
void EXTI15_10_IRQHandler (void) 
{
 8000a74:	b508      	push	{r3, lr}
	register uint8_t dir;
	
	/* Step 0 */ 
	if (EXTI->PR & (1 << STEP_0_PIN))
 8000a76:	4b1c      	ldr	r3, [pc, #112]	; (8000ae8 <EXTI15_10_IRQHandler+0x74>)
 8000a78:	695b      	ldr	r3, [r3, #20]
 8000a7a:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8000a7e:	d016      	beq.n	8000aae <EXTI15_10_IRQHandler+0x3a>
	{
		/* Clear interrupt pending bit */
		EXTI->PR |= (1 << STEP_0_PIN);
 8000a80:	4a19      	ldr	r2, [pc, #100]	; (8000ae8 <EXTI15_10_IRQHandler+0x74>)
 8000a82:	6953      	ldr	r3, [r2, #20]
 8000a84:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000a88:	6153      	str	r3, [r2, #20]
		/* Check direction */
		dir = (GPIOB->ODR & (1 << DIR_0_PIN)) == 0;
 8000a8a:	4b18      	ldr	r3, [pc, #96]	; (8000aec <EXTI15_10_IRQHandler+0x78>)
 8000a8c:	68db      	ldr	r3, [r3, #12]
 8000a8e:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8000a92:	2b00      	cmp	r3, #0
 8000a94:	bf0d      	iteet	eq
 8000a96:	2301      	moveq	r3, #1
 8000a98:	2300      	movne	r3, #0
		/* Calc position according to direction */
		step_0_cnt += dir - !dir;
 8000a9a:	2101      	movne	r1, #1
 8000a9c:	2100      	moveq	r1, #0
 8000a9e:	1a59      	subs	r1, r3, r1
 8000aa0:	4a13      	ldr	r2, [pc, #76]	; (8000af0 <EXTI15_10_IRQHandler+0x7c>)
 8000aa2:	6813      	ldr	r3, [r2, #0]
 8000aa4:	4419      	add	r1, r3
 8000aa6:	6011      	str	r1, [r2, #0]
		/* Set new point to PID */
		pid_set_point (&pid [0], step_0_cnt);
 8000aa8:	4812      	ldr	r0, [pc, #72]	; (8000af4 <EXTI15_10_IRQHandler+0x80>)
 8000aaa:	f000 fb75 	bl	8001198 <pid_set_point>
	}
	
	/* Step 1 */	
	if (EXTI->PR & (1 << STEP_1_PIN))
 8000aae:	4b0e      	ldr	r3, [pc, #56]	; (8000ae8 <EXTI15_10_IRQHandler+0x74>)
 8000ab0:	695b      	ldr	r3, [r3, #20]
 8000ab2:	f413 5f00 	tst.w	r3, #8192	; 0x2000
 8000ab6:	d016      	beq.n	8000ae6 <EXTI15_10_IRQHandler+0x72>
	{
		EXTI->PR |= (1 << STEP_1_PIN);
 8000ab8:	4a0b      	ldr	r2, [pc, #44]	; (8000ae8 <EXTI15_10_IRQHandler+0x74>)
 8000aba:	6953      	ldr	r3, [r2, #20]
 8000abc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000ac0:	6153      	str	r3, [r2, #20]
		dir = (GPIOB->ODR & (1 << DIR_1_PIN)) == 0;
 8000ac2:	4b0a      	ldr	r3, [pc, #40]	; (8000aec <EXTI15_10_IRQHandler+0x78>)
 8000ac4:	68db      	ldr	r3, [r3, #12]
 8000ac6:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8000aca:	2b00      	cmp	r3, #0
 8000acc:	bf0d      	iteet	eq
 8000ace:	2301      	moveq	r3, #1
 8000ad0:	2300      	movne	r3, #0
		step_1_cnt += dir - !dir;
 8000ad2:	2101      	movne	r1, #1
 8000ad4:	2100      	moveq	r1, #0
 8000ad6:	1a59      	subs	r1, r3, r1
 8000ad8:	4a07      	ldr	r2, [pc, #28]	; (8000af8 <EXTI15_10_IRQHandler+0x84>)
 8000ada:	6813      	ldr	r3, [r2, #0]
 8000adc:	4419      	add	r1, r3
 8000ade:	6011      	str	r1, [r2, #0]
		pid_set_point (&pid [1], step_1_cnt);
 8000ae0:	4806      	ldr	r0, [pc, #24]	; (8000afc <EXTI15_10_IRQHandler+0x88>)
 8000ae2:	f000 fb59 	bl	8001198 <pid_set_point>
 8000ae6:	bd08      	pop	{r3, pc}
 8000ae8:	40010400 	.word	0x40010400
 8000aec:	40010c00 	.word	0x40010c00
 8000af0:	20000140 	.word	0x20000140
 8000af4:	20000090 	.word	0x20000090
 8000af8:	200010e4 	.word	0x200010e4
 8000afc:	200000e8 	.word	0x200000e8

08000b00 <SysTick_Handler>:
	}
}

/* PID update timer */
void SysTick_Handler (void)
{	
 8000b00:	b538      	push	{r3, r4, r5, lr}
	/* Storing feedback for transmitting to PC */
	if (feedback_buf_index < BUF_SIZE)
 8000b02:	4b14      	ldr	r3, [pc, #80]	; (8000b54 <SysTick_Handler+0x54>)
 8000b04:	881b      	ldrh	r3, [r3, #0]
 8000b06:	b21a      	sxth	r2, r3
 8000b08:	f5b2 7f7a 	cmp.w	r2, #1000	; 0x3e8
 8000b0c:	da09      	bge.n	8000b22 <SysTick_Handler+0x22>
		feedback_buf [feedback_buf_index++] = *feedback_src; // Store either velocity or position
 8000b0e:	1c59      	adds	r1, r3, #1
 8000b10:	4a10      	ldr	r2, [pc, #64]	; (8000b54 <SysTick_Handler+0x54>)
 8000b12:	8011      	strh	r1, [r2, #0]
 8000b14:	b21b      	sxth	r3, r3
 8000b16:	4a10      	ldr	r2, [pc, #64]	; (8000b58 <SysTick_Handler+0x58>)
 8000b18:	6812      	ldr	r2, [r2, #0]
 8000b1a:	6811      	ldr	r1, [r2, #0]
 8000b1c:	4a0f      	ldr	r2, [pc, #60]	; (8000b5c <SysTick_Handler+0x5c>)
 8000b1e:	f842 1023 	str.w	r1, [r2, r3, lsl #2]

	/* Velocity sampling signal occurs every 4th tick */
	resampler_250Hz = (resampler_250Hz + 1) & 0x03;
 8000b22:	4c0f      	ldr	r4, [pc, #60]	; (8000b60 <SysTick_Handler+0x60>)
 8000b24:	7821      	ldrb	r1, [r4, #0]
 8000b26:	3101      	adds	r1, #1
 8000b28:	f001 0103 	and.w	r1, r1, #3
 8000b2c:	7021      	strb	r1, [r4, #0]

	/* Calc pid functions */		
	pid_update (&pid [0], resampler_250Hz == 0x03);	
 8000b2e:	4d0d      	ldr	r5, [pc, #52]	; (8000b64 <SysTick_Handler+0x64>)
 8000b30:	2903      	cmp	r1, #3
 8000b32:	bf14      	ite	ne
 8000b34:	2100      	movne	r1, #0
 8000b36:	2101      	moveq	r1, #1
 8000b38:	4628      	mov	r0, r5
 8000b3a:	f000 fb47 	bl	80011cc <pid_update>
	pid_update (&pid [1], resampler_250Hz == 0x03);
 8000b3e:	7821      	ldrb	r1, [r4, #0]
 8000b40:	2903      	cmp	r1, #3
 8000b42:	bf14      	ite	ne
 8000b44:	2100      	movne	r1, #0
 8000b46:	2101      	moveq	r1, #1
 8000b48:	f105 0058 	add.w	r0, r5, #88	; 0x58
 8000b4c:	f000 fb3e 	bl	80011cc <pid_update>
 8000b50:	bd38      	pop	{r3, r4, r5, pc}
 8000b52:	bf00      	nop
 8000b54:	2000001c 	.word	0x2000001c
 8000b58:	2000112c 	.word	0x2000112c
 8000b5c:	20000144 	.word	0x20000144
 8000b60:	200010e8 	.word	0x200010e8
 8000b64:	20000090 	.word	0x20000090

08000b68 <check_uart_cmd>:
/* ------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------ */

/* Host (PC) command handler */
void check_uart_cmd (void)
{
 8000b68:	b510      	push	{r4, lr}
 8000b6a:	b082      	sub	sp, #8
	static int8_t rx_produce = 0;
	
	volatile int16_t i, j;
	uint8_t mode;						
	
	if (uart_read_nonblock ())						// Check if a char exist in rx_buffer
 8000b6c:	f000 f97e 	bl	8000e6c <uart_read_nonblock>
 8000b70:	2800      	cmp	r0, #0
 8000b72:	f000 80c2 	beq.w	8000cfa <check_uart_cmd+0x192>
	{
		char buf = uart_read ();					// Read that char from rx_buffer
 8000b76:	f000 f963 	bl	8000e40 <uart_read>
		
		if (buf == '\r' || buf == '\n')				// If character either "return carriage" 
 8000b7a:	280d      	cmp	r0, #13
 8000b7c:	d002      	beq.n	8000b84 <check_uart_cmd+0x1c>
 8000b7e:	280a      	cmp	r0, #10
 8000b80:	f040 80b2 	bne.w	8000ce8 <check_uart_cmd+0x180>
													// or "line feed" then command is complete
		{
			cmd [rx_produce] = 0;					// Set last character value to terminate string
 8000b84:	4b5e      	ldr	r3, [pc, #376]	; (8000d00 <check_uart_cmd+0x198>)
 8000b86:	f993 2000 	ldrsb.w	r2, [r3]
 8000b8a:	4b5e      	ldr	r3, [pc, #376]	; (8000d04 <check_uart_cmd+0x19c>)
 8000b8c:	2100      	movs	r1, #0
 8000b8e:	5499      	strb	r1, [r3, r2]
			
			switch (cmd [0])
 8000b90:	f993 3000 	ldrsb.w	r3, [r3]
 8000b94:	3b43      	subs	r3, #67	; 0x43
 8000b96:	2b10      	cmp	r3, #16
 8000b98:	f200 80a2 	bhi.w	8000ce0 <check_uart_cmd+0x178>
 8000b9c:	e8df f003 	tbb	[pc, r3]
 8000ba0:	28a0a074 	.word	0x28a0a074
 8000ba4:	7fa0a034 	.word	0x7fa0a034
 8000ba8:	a0661da0 	.word	0xa0661da0
 8000bac:	96a08aa0 	.word	0x96a08aa0
 8000bb0:	09          	.byte	0x09
 8000bb1:	00          	.byte	0x00
			{
			
			/* Load/Store from/to flash memory */
			case 'S':				
				if (cmd [1] == 's')
 8000bb2:	4b54      	ldr	r3, [pc, #336]	; (8000d04 <check_uart_cmd+0x19c>)
 8000bb4:	f993 3001 	ldrsb.w	r3, [r3, #1]
 8000bb8:	2b73      	cmp	r3, #115	; 0x73
 8000bba:	d107      	bne.n	8000bcc <check_uart_cmd+0x64>
					flash_store_from_host (atoi (&cmd [2]), &pid [0].pid);
 8000bbc:	4852      	ldr	r0, [pc, #328]	; (8000d08 <check_uart_cmd+0x1a0>)
 8000bbe:	f000 fbb7 	bl	8001330 <atoi>
 8000bc2:	4952      	ldr	r1, [pc, #328]	; (8000d0c <check_uart_cmd+0x1a4>)
 8000bc4:	b2c0      	uxtb	r0, r0
 8000bc6:	f000 fa1f 	bl	8001008 <flash_store_from_host>
 8000bca:	e089      	b.n	8000ce0 <check_uart_cmd+0x178>
				else				
					flash_load_to_host (atoi (&cmd [2]));
 8000bcc:	484e      	ldr	r0, [pc, #312]	; (8000d08 <check_uart_cmd+0x1a0>)
 8000bce:	f000 fbaf 	bl	8001330 <atoi>
 8000bd2:	b2c0      	uxtb	r0, r0
 8000bd4:	f000 f9f8 	bl	8000fc8 <flash_load_to_host>
 8000bd8:	e082      	b.n	8000ce0 <check_uart_cmd+0x178>
				break;				
				
			/* Return current motor position */
			case 'L':								
				sprintf (cmd, "%ld\n", pid [0].feedback);
 8000bda:	4c4a      	ldr	r4, [pc, #296]	; (8000d04 <check_uart_cmd+0x19c>)
 8000bdc:	4b4b      	ldr	r3, [pc, #300]	; (8000d0c <check_uart_cmd+0x1a4>)
 8000bde:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000be0:	494b      	ldr	r1, [pc, #300]	; (8000d10 <check_uart_cmd+0x1a8>)
 8000be2:	4620      	mov	r0, r4
 8000be4:	f000 fbf4 	bl	80013d0 <siprintf>
				uart_print (cmd);
 8000be8:	4620      	mov	r0, r4
 8000bea:	f000 f965 	bl	8000eb8 <uart_print>
				break;
 8000bee:	e077      	b.n	8000ce0 <check_uart_cmd+0x178>
			
			/* Return whether feedback buffer is full */
			case 'F':								
				sprintf (cmd, "%d\n", feedback_buf_index);
 8000bf0:	4c44      	ldr	r4, [pc, #272]	; (8000d04 <check_uart_cmd+0x19c>)
 8000bf2:	4b48      	ldr	r3, [pc, #288]	; (8000d14 <check_uart_cmd+0x1ac>)
 8000bf4:	f9b3 2000 	ldrsh.w	r2, [r3]
 8000bf8:	4947      	ldr	r1, [pc, #284]	; (8000d18 <check_uart_cmd+0x1b0>)
 8000bfa:	4620      	mov	r0, r4
 8000bfc:	f000 fbe8 	bl	80013d0 <siprintf>
				uart_print (cmd);
 8000c00:	4620      	mov	r0, r4
 8000c02:	f000 f959 	bl	8000eb8 <uart_print>
				break;
 8000c06:	e06b      	b.n	8000ce0 <check_uart_cmd+0x178>
			
			/* Transmit feedback buffer */
			case 'G':		
				for (i = 0; i < BUF_SIZE; i++) 
 8000c08:	2300      	movs	r3, #0
 8000c0a:	f8ad 3006 	strh.w	r3, [sp, #6]
 8000c0e:	e026      	b.n	8000c5e <check_uart_cmd+0xf6>
				{
					sprintf (cmd, "%ld\n", feedback_buf [i]);
 8000c10:	f8bd 3006 	ldrh.w	r3, [sp, #6]
 8000c14:	b21b      	sxth	r3, r3
 8000c16:	4c3b      	ldr	r4, [pc, #236]	; (8000d04 <check_uart_cmd+0x19c>)
 8000c18:	4a40      	ldr	r2, [pc, #256]	; (8000d1c <check_uart_cmd+0x1b4>)
 8000c1a:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8000c1e:	493c      	ldr	r1, [pc, #240]	; (8000d10 <check_uart_cmd+0x1a8>)
 8000c20:	4620      	mov	r0, r4
 8000c22:	f000 fbd5 	bl	80013d0 <siprintf>
					uart_print (cmd);						
 8000c26:	4620      	mov	r0, r4
 8000c28:	f000 f946 	bl	8000eb8 <uart_print>
					for (j = 0; j < 5000; j++);		// TODO: think how to remove 
 8000c2c:	2300      	movs	r3, #0
 8000c2e:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000c32:	e006      	b.n	8000c42 <check_uart_cmd+0xda>
 8000c34:	f8bd 3004 	ldrh.w	r3, [sp, #4]
 8000c38:	b29b      	uxth	r3, r3
 8000c3a:	3301      	adds	r3, #1
 8000c3c:	b29b      	uxth	r3, r3
 8000c3e:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000c42:	f8bd 3004 	ldrh.w	r3, [sp, #4]
 8000c46:	b21b      	sxth	r3, r3
 8000c48:	f241 3287 	movw	r2, #4999	; 0x1387
 8000c4c:	4293      	cmp	r3, r2
 8000c4e:	ddf1      	ble.n	8000c34 <check_uart_cmd+0xcc>
				uart_print (cmd);
				break;
			
			/* Transmit feedback buffer */
			case 'G':		
				for (i = 0; i < BUF_SIZE; i++) 
 8000c50:	f8bd 3006 	ldrh.w	r3, [sp, #6]
 8000c54:	b29b      	uxth	r3, r3
 8000c56:	3301      	adds	r3, #1
 8000c58:	b29b      	uxth	r3, r3
 8000c5a:	f8ad 3006 	strh.w	r3, [sp, #6]
 8000c5e:	f8bd 3006 	ldrh.w	r3, [sp, #6]
 8000c62:	b21b      	sxth	r3, r3
 8000c64:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 8000c68:	dbd2      	blt.n	8000c10 <check_uart_cmd+0xa8>
 8000c6a:	e039      	b.n	8000ce0 <check_uart_cmd+0x178>
				}
				break;
				
			/* Set new servo mode */
			case 'M':
				mode = atoi (&cmd [1]);
 8000c6c:	482c      	ldr	r0, [pc, #176]	; (8000d20 <check_uart_cmd+0x1b8>)
 8000c6e:	f000 fb5f 	bl	8001330 <atoi>
 8000c72:	b2c1      	uxtb	r1, r0
				feedback_src = mode == POSITION ? &pid [0].feedback : &pid [0].velocity;
 8000c74:	b909      	cbnz	r1, 8000c7a <check_uart_cmd+0x112>
 8000c76:	4a2b      	ldr	r2, [pc, #172]	; (8000d24 <check_uart_cmd+0x1bc>)
 8000c78:	e000      	b.n	8000c7c <check_uart_cmd+0x114>
 8000c7a:	4a2b      	ldr	r2, [pc, #172]	; (8000d28 <check_uart_cmd+0x1c0>)
 8000c7c:	4b2b      	ldr	r3, [pc, #172]	; (8000d2c <check_uart_cmd+0x1c4>)
 8000c7e:	601a      	str	r2, [r3, #0]
				pid_set_mode (pid, mode);
 8000c80:	4822      	ldr	r0, [pc, #136]	; (8000d0c <check_uart_cmd+0x1a4>)
 8000c82:	f000 fa9f 	bl	80011c4 <pid_set_mode>
				break;
 8000c86:	e02b      	b.n	8000ce0 <check_uart_cmd+0x178>
			
			/* Set sub-command (PWM, TORQUE, VELOCITY) */
			case 'C':
				pid_set_sub_cmd (pid, atoi (&cmd [1]));
 8000c88:	4825      	ldr	r0, [pc, #148]	; (8000d20 <check_uart_cmd+0x1b8>)
 8000c8a:	f000 fb51 	bl	8001330 <atoi>
 8000c8e:	4601      	mov	r1, r0
 8000c90:	481e      	ldr	r0, [pc, #120]	; (8000d0c <check_uart_cmd+0x1a4>)
 8000c92:	f000 fa99 	bl	80011c8 <pid_set_sub_cmd>
				feedback_buf_index = 0;
 8000c96:	2200      	movs	r2, #0
 8000c98:	4b1e      	ldr	r3, [pc, #120]	; (8000d14 <check_uart_cmd+0x1ac>)
 8000c9a:	801a      	strh	r2, [r3, #0]
				break;
 8000c9c:	e020      	b.n	8000ce0 <check_uart_cmd+0x178>
			
			/* Jump to position */
			case 'J':								
				feedback_buf_index = 0;				// Start filling feedback buffer
 8000c9e:	2200      	movs	r2, #0
 8000ca0:	4b1c      	ldr	r3, [pc, #112]	; (8000d14 <check_uart_cmd+0x1ac>)
 8000ca2:	801a      	strh	r2, [r3, #0]
				pid_set_point (&pid [0], atoi (&cmd [1]));
 8000ca4:	481e      	ldr	r0, [pc, #120]	; (8000d20 <check_uart_cmd+0x1b8>)
 8000ca6:	f000 fb43 	bl	8001330 <atoi>
 8000caa:	4601      	mov	r1, r0
 8000cac:	4817      	ldr	r0, [pc, #92]	; (8000d0c <check_uart_cmd+0x1a4>)
 8000cae:	f000 fa73 	bl	8001198 <pid_set_point>
				break;
 8000cb2:	e015      	b.n	8000ce0 <check_uart_cmd+0x178>
			
			/* Set PID parameters */
			case 'P':								
				pid_set_parameters (&pid [0], atoi (&cmd [2]), cmd [1] - 0x30);					
 8000cb4:	4c13      	ldr	r4, [pc, #76]	; (8000d04 <check_uart_cmd+0x19c>)
 8000cb6:	1ca0      	adds	r0, r4, #2
 8000cb8:	f000 fb3a 	bl	8001330 <atoi>
 8000cbc:	7862      	ldrb	r2, [r4, #1]
 8000cbe:	3a30      	subs	r2, #48	; 0x30
 8000cc0:	b2d2      	uxtb	r2, r2
 8000cc2:	4601      	mov	r1, r0
 8000cc4:	4811      	ldr	r0, [pc, #68]	; (8000d0c <check_uart_cmd+0x1a4>)
 8000cc6:	f000 fa69 	bl	800119c <pid_set_parameters>
				break;
 8000cca:	e009      	b.n	8000ce0 <check_uart_cmd+0x178>
  This function disables IRQ interrupts by setting the I-bit in the CPSR.
  Can only be executed in Privileged modes.
 */
__attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
{
  __ASM volatile ("cpsid i" : : : "memory");
 8000ccc:	b672      	cpsid	i
				
			/* Reset PID */
			case 'R':
				__disable_irq ();
				step_0_cnt = 0;
 8000cce:	2300      	movs	r3, #0
 8000cd0:	4a17      	ldr	r2, [pc, #92]	; (8000d30 <check_uart_cmd+0x1c8>)
 8000cd2:	6013      	str	r3, [r2, #0]
				step_1_cnt = 0;			
 8000cd4:	4a17      	ldr	r2, [pc, #92]	; (8000d34 <check_uart_cmd+0x1cc>)
 8000cd6:	6013      	str	r3, [r2, #0]
				pid_reset (&pid [0]);
 8000cd8:	480c      	ldr	r0, [pc, #48]	; (8000d0c <check_uart_cmd+0x1a4>)
 8000cda:	f000 fa43 	bl	8001164 <pid_reset>
  This function enables IRQ interrupts by clearing the I-bit in the CPSR.
  Can only be executed in Privileged modes.
 */
__attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_irq(void)
{
  __ASM volatile ("cpsie i" : : : "memory");
 8000cde:	b662      	cpsie	i
				__enable_irq (); 
				break;
			}
			
			rx_produce = 0;
 8000ce0:	2200      	movs	r2, #0
 8000ce2:	4b07      	ldr	r3, [pc, #28]	; (8000d00 <check_uart_cmd+0x198>)
 8000ce4:	701a      	strb	r2, [r3, #0]
 8000ce6:	e008      	b.n	8000cfa <check_uart_cmd+0x192>
		}
		/* Add next char to the string */
		else 
		{
			cmd [rx_produce] = buf;
 8000ce8:	4a05      	ldr	r2, [pc, #20]	; (8000d00 <check_uart_cmd+0x198>)
 8000cea:	7813      	ldrb	r3, [r2, #0]
 8000cec:	b259      	sxtb	r1, r3
 8000cee:	4c05      	ldr	r4, [pc, #20]	; (8000d04 <check_uart_cmd+0x19c>)
 8000cf0:	5460      	strb	r0, [r4, r1]
			rx_produce = (rx_produce + 1) & 63;		// Ringbuffer				
 8000cf2:	3301      	adds	r3, #1
 8000cf4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 8000cf8:	7013      	strb	r3, [r2, #0]
		}
	}
}
 8000cfa:	b002      	add	sp, #8
 8000cfc:	bd10      	pop	{r4, pc}
 8000cfe:	bf00      	nop
 8000d00:	2000008d 	.word	0x2000008d
 8000d04:	200010ec 	.word	0x200010ec
 8000d08:	200010ee 	.word	0x200010ee
 8000d0c:	20000090 	.word	0x20000090
 8000d10:	08001d10 	.word	0x08001d10
 8000d14:	2000001c 	.word	0x2000001c
 8000d18:	08001d18 	.word	0x08001d18
 8000d1c:	20000144 	.word	0x20000144
 8000d20:	200010ed 	.word	0x200010ed
 8000d24:	200000bc 	.word	0x200000bc
 8000d28:	200000c0 	.word	0x200000c0
 8000d2c:	2000112c 	.word	0x2000112c
 8000d30:	20000140 	.word	0x20000140
 8000d34:	200010e4 	.word	0x200010e4

08000d38 <main>:

/* ------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------ */

void main (void)
{	
 8000d38:	b500      	push	{lr}
 8000d3a:	b083      	sub	sp, #12
	
	/* Unblocking flash memory for write by software */
	FLASH->KEYR = 0x45670123;
 8000d3c:	4b16      	ldr	r3, [pc, #88]	; (8000d98 <main+0x60>)
 8000d3e:	4a17      	ldr	r2, [pc, #92]	; (8000d9c <main+0x64>)
 8000d40:	605a      	str	r2, [r3, #4]
	FLASH->KEYR = 0xCDEF89AB;
 8000d42:	f102 3288 	add.w	r2, r2, #2290649224	; 0x88888888
 8000d46:	605a      	str	r2, [r3, #4]

	/* Peripheral initialization */
	periph_init ();
 8000d48:	f000 f97c 	bl	8001044 <periph_init>
	
	/* UART initialization */
	uart_init ();
 8000d4c:	f000 f8c0 	bl	8000ed0 <uart_init>
	
	/* PID 0 initialization */
	pid_init (	&pid [0],				// Memory pointer to arm_pid_t struct 
 8000d50:	4c13      	ldr	r4, [pc, #76]	; (8000da0 <main+0x68>)
 8000d52:	4b14      	ldr	r3, [pc, #80]	; (8000da4 <main+0x6c>)
 8000d54:	9300      	str	r3, [sp, #0]
 8000d56:	f603 031c 	addw	r3, r3, #2076	; 0x81c
 8000d5a:	4a13      	ldr	r2, [pc, #76]	; (8000da8 <main+0x70>)
 8000d5c:	21ff      	movs	r1, #255	; 0xff
 8000d5e:	4620      	mov	r0, r4
 8000d60:	f000 fad4 	bl	800130c <pid_init>
				(uint32_t *) &PWM1_N,	// Memory pointer to TIMx->CCRx register (channel 2)
				(uint32_t *) &ENC_0		// Memory pointer to TIMx->CNT register	 (encoder counter)
	);

	/* PID 1 initialization */
	pid_init (&pid [1], PWM_MAX_VAL, 
 8000d64:	f104 0558 	add.w	r5, r4, #88	; 0x58
 8000d68:	4b10      	ldr	r3, [pc, #64]	; (8000dac <main+0x74>)
 8000d6a:	9300      	str	r3, [sp, #0]
 8000d6c:	f203 4314 	addw	r3, r3, #1044	; 0x414
 8000d70:	4a0f      	ldr	r2, [pc, #60]	; (8000db0 <main+0x78>)
 8000d72:	21ff      	movs	r1, #255	; 0xff
 8000d74:	4628      	mov	r0, r5
 8000d76:	f000 fac9 	bl	800130c <pid_init>
		(uint32_t *) &PWM2_P, (uint32_t *) &PWM2_N, (uint32_t *) &ENC_1);	

	/* Load PID 0 gains from eeprom */
	memcpy (&pid [0].pid, &pid_eeprom [0], sizeof (arm_pid_instance_t));
 8000d7a:	4e0e      	ldr	r6, [pc, #56]	; (8000db4 <main+0x7c>)
 8000d7c:	2220      	movs	r2, #32
 8000d7e:	4631      	mov	r1, r6
 8000d80:	4620      	mov	r0, r4
 8000d82:	f000 fae7 	bl	8001354 <memcpy>
	
	/* Load PID 1 gains from eeprom */
	memcpy (&pid [1].pid, &pid_eeprom [1], sizeof (arm_pid_instance_t));
 8000d86:	2220      	movs	r2, #32
 8000d88:	18b1      	adds	r1, r6, r2
 8000d8a:	4628      	mov	r0, r5
 8000d8c:	f000 fae2 	bl	8001354 <memcpy>
 8000d90:	b662      	cpsie	i
	__enable_irq ();
		
	/* Infinitie loop */
	for (;;)
	{
		check_uart_cmd ();
 8000d92:	f7ff fee9 	bl	8000b68 <check_uart_cmd>
 8000d96:	e7fc      	b.n	8000d92 <main+0x5a>
 8000d98:	40022000 	.word	0x40022000
 8000d9c:	45670123 	.word	0x45670123
 8000da0:	20000090 	.word	0x20000090
 8000da4:	40000024 	.word	0x40000024
 8000da8:	4000083c 	.word	0x4000083c
 8000dac:	40000424 	.word	0x40000424
 8000db0:	40000834 	.word	0x40000834
 8000db4:	08000400 	.word	0x08000400

08000db8 <USART2_IRQHandler>:
static unsigned int tx_consume;
static volatile int tx_cts;

void USART2_IRQHandler (void)
{
	if (USART2->SR & USART_SR_TC) {                                     // Check interrupt source
 8000db8:	4b1a      	ldr	r3, [pc, #104]	; (8000e24 <USART2_IRQHandler+0x6c>)
 8000dba:	881b      	ldrh	r3, [r3, #0]
 8000dbc:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000dc0:	b29b      	uxth	r3, r3
 8000dc2:	b1c3      	cbz	r3, 8000df6 <USART2_IRQHandler+0x3e>
		USART2->SR &= ~USART_SR_TC;                                     // Clear pending bit
 8000dc4:	4a17      	ldr	r2, [pc, #92]	; (8000e24 <USART2_IRQHandler+0x6c>)
 8000dc6:	8813      	ldrh	r3, [r2, #0]
 8000dc8:	b29b      	uxth	r3, r3
 8000dca:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000dce:	b29b      	uxth	r3, r3
 8000dd0:	8013      	strh	r3, [r2, #0]
		if (tx_produce != tx_consume) {
 8000dd2:	4b15      	ldr	r3, [pc, #84]	; (8000e28 <USART2_IRQHandler+0x70>)
 8000dd4:	681a      	ldr	r2, [r3, #0]
 8000dd6:	4b15      	ldr	r3, [pc, #84]	; (8000e2c <USART2_IRQHandler+0x74>)
 8000dd8:	681b      	ldr	r3, [r3, #0]
 8000dda:	429a      	cmp	r2, r3
 8000ddc:	d008      	beq.n	8000df0 <USART2_IRQHandler+0x38>
			USART2->DR = (uint8_t) tx_buf [tx_consume];                 // Send byte through UART
 8000dde:	4a14      	ldr	r2, [pc, #80]	; (8000e30 <USART2_IRQHandler+0x78>)
 8000de0:	5cd1      	ldrb	r1, [r2, r3]
 8000de2:	4a10      	ldr	r2, [pc, #64]	; (8000e24 <USART2_IRQHandler+0x6c>)
 8000de4:	8091      	strh	r1, [r2, #4]
			tx_consume = (tx_consume + 1) & UART_RINGBUFFER_MASK_TX;
 8000de6:	3301      	adds	r3, #1
 8000de8:	b2db      	uxtb	r3, r3
 8000dea:	4a10      	ldr	r2, [pc, #64]	; (8000e2c <USART2_IRQHandler+0x74>)
 8000dec:	6013      	str	r3, [r2, #0]
 8000dee:	e002      	b.n	8000df6 <USART2_IRQHandler+0x3e>
		} else
			tx_cts = 1;
 8000df0:	2201      	movs	r2, #1
 8000df2:	4b10      	ldr	r3, [pc, #64]	; (8000e34 <USART2_IRQHandler+0x7c>)
 8000df4:	601a      	str	r2, [r3, #0]
	}
	
	if (USART2->SR & USART_SR_RXNE) {
 8000df6:	4b0b      	ldr	r3, [pc, #44]	; (8000e24 <USART2_IRQHandler+0x6c>)
 8000df8:	881b      	ldrh	r3, [r3, #0]
 8000dfa:	f003 0320 	and.w	r3, r3, #32
 8000dfe:	b29b      	uxth	r3, r3
 8000e00:	b17b      	cbz	r3, 8000e22 <USART2_IRQHandler+0x6a>
		USART2->SR &= ~USART_SR_RXNE;
 8000e02:	4908      	ldr	r1, [pc, #32]	; (8000e24 <USART2_IRQHandler+0x6c>)
 8000e04:	880b      	ldrh	r3, [r1, #0]
 8000e06:	b29b      	uxth	r3, r3
 8000e08:	f023 0320 	bic.w	r3, r3, #32
 8000e0c:	b29b      	uxth	r3, r3
 8000e0e:	800b      	strh	r3, [r1, #0]
		rx_buf[rx_produce] = (uint8_t) USART2->DR & 0xff;               // Receive byte from UART
 8000e10:	4a09      	ldr	r2, [pc, #36]	; (8000e38 <USART2_IRQHandler+0x80>)
 8000e12:	6813      	ldr	r3, [r2, #0]
 8000e14:	8888      	ldrh	r0, [r1, #4]
 8000e16:	4909      	ldr	r1, [pc, #36]	; (8000e3c <USART2_IRQHandler+0x84>)
 8000e18:	54c8      	strb	r0, [r1, r3]
		rx_produce = (rx_produce + 1) & UART_RINGBUFFER_MASK_RX;
 8000e1a:	6813      	ldr	r3, [r2, #0]
 8000e1c:	3301      	adds	r3, #1
 8000e1e:	b2db      	uxtb	r3, r3
 8000e20:	6013      	str	r3, [r2, #0]
 8000e22:	4770      	bx	lr
 8000e24:	40004400 	.word	0x40004400
 8000e28:	20001130 	.word	0x20001130
 8000e2c:	2000123c 	.word	0x2000123c
 8000e30:	2000113c 	.word	0x2000113c
 8000e34:	20001240 	.word	0x20001240
 8000e38:	20001138 	.word	0x20001138
 8000e3c:	20001244 	.word	0x20001244

08000e40 <uart_read>:
/* Do not use in interrupt handlers! */
char uart_read (void)
{
	char c;

	while (rx_consume == rx_produce);
 8000e40:	4b07      	ldr	r3, [pc, #28]	; (8000e60 <uart_read+0x20>)
 8000e42:	681a      	ldr	r2, [r3, #0]
 8000e44:	4b07      	ldr	r3, [pc, #28]	; (8000e64 <uart_read+0x24>)
 8000e46:	681b      	ldr	r3, [r3, #0]
 8000e48:	429a      	cmp	r2, r3
 8000e4a:	d0f9      	beq.n	8000e40 <uart_read>
	c = rx_buf [rx_consume];
 8000e4c:	4a04      	ldr	r2, [pc, #16]	; (8000e60 <uart_read+0x20>)
 8000e4e:	6813      	ldr	r3, [r2, #0]
 8000e50:	4905      	ldr	r1, [pc, #20]	; (8000e68 <uart_read+0x28>)
 8000e52:	5cc8      	ldrb	r0, [r1, r3]
	rx_consume = (rx_consume + 1) & UART_RINGBUFFER_MASK_RX;
 8000e54:	6813      	ldr	r3, [r2, #0]
 8000e56:	3301      	adds	r3, #1
 8000e58:	b2db      	uxtb	r3, r3
 8000e5a:	6013      	str	r3, [r2, #0]
	return c;
}
 8000e5c:	b240      	sxtb	r0, r0
 8000e5e:	4770      	bx	lr
 8000e60:	20001134 	.word	0x20001134
 8000e64:	20001138 	.word	0x20001138
 8000e68:	20001244 	.word	0x20001244

08000e6c <uart_read_nonblock>:

int uart_read_nonblock (void)
{
	return (rx_consume != rx_produce);
 8000e6c:	4b03      	ldr	r3, [pc, #12]	; (8000e7c <uart_read_nonblock+0x10>)
 8000e6e:	6818      	ldr	r0, [r3, #0]
 8000e70:	4b03      	ldr	r3, [pc, #12]	; (8000e80 <uart_read_nonblock+0x14>)
 8000e72:	681b      	ldr	r3, [r3, #0]
}
 8000e74:	1ac0      	subs	r0, r0, r3
 8000e76:	bf18      	it	ne
 8000e78:	2001      	movne	r0, #1
 8000e7a:	4770      	bx	lr
 8000e7c:	20001134 	.word	0x20001134
 8000e80:	20001138 	.word	0x20001138

08000e84 <uart_write>:

void uart_write (char c)
{
	if (tx_cts) {
 8000e84:	4b08      	ldr	r3, [pc, #32]	; (8000ea8 <uart_write+0x24>)
 8000e86:	681b      	ldr	r3, [r3, #0]
 8000e88:	b133      	cbz	r3, 8000e98 <uart_write+0x14>
		tx_cts = 0;
 8000e8a:	2200      	movs	r2, #0
 8000e8c:	4b06      	ldr	r3, [pc, #24]	; (8000ea8 <uart_write+0x24>)
 8000e8e:	601a      	str	r2, [r3, #0]
		USART2->DR = (uint8_t) c;
 8000e90:	b2c0      	uxtb	r0, r0
 8000e92:	4b06      	ldr	r3, [pc, #24]	; (8000eac <uart_write+0x28>)
 8000e94:	8098      	strh	r0, [r3, #4]
 8000e96:	4770      	bx	lr
	}
	else {		
		tx_buf [tx_produce] = c;
 8000e98:	4a05      	ldr	r2, [pc, #20]	; (8000eb0 <uart_write+0x2c>)
 8000e9a:	6813      	ldr	r3, [r2, #0]
 8000e9c:	4905      	ldr	r1, [pc, #20]	; (8000eb4 <uart_write+0x30>)
 8000e9e:	54c8      	strb	r0, [r1, r3]
		tx_produce = (tx_produce + 1) & UART_RINGBUFFER_MASK_TX;
 8000ea0:	3301      	adds	r3, #1
 8000ea2:	b2db      	uxtb	r3, r3
 8000ea4:	6013      	str	r3, [r2, #0]
 8000ea6:	4770      	bx	lr
 8000ea8:	20001240 	.word	0x20001240
 8000eac:	40004400 	.word	0x40004400
 8000eb0:	20001130 	.word	0x20001130
 8000eb4:	2000113c 	.word	0x2000113c

08000eb8 <uart_print>:
	}
}

void uart_print (char *msg)
{
 8000eb8:	b510      	push	{r4, lr}
 8000eba:	4604      	mov	r4, r0
	while (*msg != 0) uart_write (*msg++);
 8000ebc:	e003      	b.n	8000ec6 <uart_print+0xe>
 8000ebe:	3401      	adds	r4, #1
 8000ec0:	b240      	sxtb	r0, r0
 8000ec2:	f7ff ffdf 	bl	8000e84 <uart_write>
 8000ec6:	7820      	ldrb	r0, [r4, #0]
 8000ec8:	2800      	cmp	r0, #0
 8000eca:	d1f8      	bne.n	8000ebe <uart_print+0x6>
}
 8000ecc:	bd10      	pop	{r4, pc}
 8000ece:	bf00      	nop

08000ed0 <uart_init>:

void uart_init ()
{
	RCC->APB2ENR |= RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN;
 8000ed0:	4b10      	ldr	r3, [pc, #64]	; (8000f14 <uart_init+0x44>)
 8000ed2:	699a      	ldr	r2, [r3, #24]
 8000ed4:	f042 0205 	orr.w	r2, r2, #5
 8000ed8:	619a      	str	r2, [r3, #24]
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
 8000eda:	69da      	ldr	r2, [r3, #28]
 8000edc:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8000ee0:	61da      	str	r2, [r3, #28]
	
/*	PA2 - UartTx, PA3 - UartRx */
	GPIOA->CRL	&= 0xFFFF00FF; 
 8000ee2:	f5a3 3384 	sub.w	r3, r3, #67584	; 0x10800
 8000ee6:	681a      	ldr	r2, [r3, #0]
 8000ee8:	f422 427f 	bic.w	r2, r2, #65280	; 0xff00
 8000eec:	601a      	str	r2, [r3, #0]
	GPIOA->CRL  |= 0x00008A00;
 8000eee:	681a      	ldr	r2, [r3, #0]
 8000ef0:	f442 420a 	orr.w	r2, r2, #35328	; 0x8a00
 8000ef4:	601a      	str	r2, [r3, #0]
	GPIOA->BSRR	 = 0x12;									// pull up PA2 & PA3 
 8000ef6:	2212      	movs	r2, #18
 8000ef8:	611a      	str	r2, [r3, #16]
	
	const uint32_t baudrate = 115200;//921600;
	const uint32_t integer  = ((25 * 36000000) / (4 * baudrate));
	const uint32_t fract    = ((((integer * 16) + 50) / 100)) & ((uint8_t) 0x0F);

	USART2->BRR = ((integer / 100) << 4) | fract;
 8000efa:	f5a3 4344 	sub.w	r3, r3, #50176	; 0xc400
 8000efe:	f44f 729c 	mov.w	r2, #312	; 0x138
 8000f02:	811a      	strh	r2, [r3, #8]
	USART2->CR1 = USART_CR1_UE | USART_CR1_RE   |
 8000f04:	f242 026c 	movw	r2, #8300	; 0x206c
 8000f08:	819a      	strh	r2, [r3, #12]

    \param [in]      IRQn  External interrupt number. Value cannot be negative.
 */
__STATIC_INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* enable interrupt */
 8000f0a:	2240      	movs	r2, #64	; 0x40
 8000f0c:	4b02      	ldr	r3, [pc, #8]	; (8000f18 <uart_init+0x48>)
 8000f0e:	605a      	str	r2, [r3, #4]
 8000f10:	4770      	bx	lr
 8000f12:	bf00      	nop
 8000f14:	40021000 	.word	0x40021000
 8000f18:	e000e100 	.word	0xe000e100

08000f1c <flash_erase>:
	flash_write ((unsigned char *) &epid[0], (unsigned int) &pid_eeprom [0], sizeof (arm_pid_instance_t) * (CELL_COUNT + 1));
}

static void flash_erase (unsigned int pageAddress) 
{
	while (FLASH->SR & FLASH_SR_BSY);
 8000f1c:	4b11      	ldr	r3, [pc, #68]	; (8000f64 <flash_erase+0x48>)
 8000f1e:	68db      	ldr	r3, [r3, #12]
 8000f20:	f013 0f01 	tst.w	r3, #1
 8000f24:	d1fa      	bne.n	8000f1c <flash_erase>
	if (FLASH->SR & FLASH_SR_EOP) {
 8000f26:	4b0f      	ldr	r3, [pc, #60]	; (8000f64 <flash_erase+0x48>)
 8000f28:	68db      	ldr	r3, [r3, #12]
 8000f2a:	f013 0f20 	tst.w	r3, #32
 8000f2e:	d002      	beq.n	8000f36 <flash_erase+0x1a>
		FLASH->SR = FLASH_SR_EOP;
 8000f30:	2220      	movs	r2, #32
 8000f32:	4b0c      	ldr	r3, [pc, #48]	; (8000f64 <flash_erase+0x48>)
 8000f34:	60da      	str	r2, [r3, #12]
	}

	FLASH->CR |= FLASH_CR_PER;
 8000f36:	4b0b      	ldr	r3, [pc, #44]	; (8000f64 <flash_erase+0x48>)
 8000f38:	691a      	ldr	r2, [r3, #16]
 8000f3a:	f042 0202 	orr.w	r2, r2, #2
 8000f3e:	611a      	str	r2, [r3, #16]
	FLASH->AR = pageAddress;
 8000f40:	6158      	str	r0, [r3, #20]
	FLASH->CR |= FLASH_CR_STRT;
 8000f42:	691a      	ldr	r2, [r3, #16]
 8000f44:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8000f48:	611a      	str	r2, [r3, #16]
	while (!(FLASH->SR & FLASH_SR_EOP));
 8000f4a:	4b06      	ldr	r3, [pc, #24]	; (8000f64 <flash_erase+0x48>)
 8000f4c:	68db      	ldr	r3, [r3, #12]
 8000f4e:	f013 0f20 	tst.w	r3, #32
 8000f52:	d0fa      	beq.n	8000f4a <flash_erase+0x2e>
	FLASH->SR = FLASH_SR_EOP;
 8000f54:	4b03      	ldr	r3, [pc, #12]	; (8000f64 <flash_erase+0x48>)
 8000f56:	2220      	movs	r2, #32
 8000f58:	60da      	str	r2, [r3, #12]
	FLASH->CR &= ~FLASH_CR_PER;
 8000f5a:	691a      	ldr	r2, [r3, #16]
 8000f5c:	f022 0202 	bic.w	r2, r2, #2
 8000f60:	611a      	str	r2, [r3, #16]
 8000f62:	4770      	bx	lr
 8000f64:	40022000 	.word	0x40022000

08000f68 <flash_write>:
// count - write byte count; should be a multiple of 2
static void flash_write (unsigned char* data, unsigned int address, unsigned int count) 
{
	unsigned int i;

	while (FLASH->SR & FLASH_SR_BSY);
 8000f68:	4b16      	ldr	r3, [pc, #88]	; (8000fc4 <flash_write+0x5c>)
 8000f6a:	68db      	ldr	r3, [r3, #12]
 8000f6c:	f013 0f01 	tst.w	r3, #1
 8000f70:	d1fa      	bne.n	8000f68 <flash_write>

// data - pointer to data
// address - address in flash memory 
// count - write byte count; should be a multiple of 2
static void flash_write (unsigned char* data, unsigned int address, unsigned int count) 
{
 8000f72:	b430      	push	{r4, r5}
	unsigned int i;

	while (FLASH->SR & FLASH_SR_BSY);
	if (FLASH->SR & FLASH_SR_EOP) 
 8000f74:	4b13      	ldr	r3, [pc, #76]	; (8000fc4 <flash_write+0x5c>)
 8000f76:	68db      	ldr	r3, [r3, #12]
 8000f78:	f013 0f20 	tst.w	r3, #32
 8000f7c:	d002      	beq.n	8000f84 <flash_write+0x1c>
	{
		FLASH->SR = FLASH_SR_EOP;
 8000f7e:	2420      	movs	r4, #32
 8000f80:	4b10      	ldr	r3, [pc, #64]	; (8000fc4 <flash_write+0x5c>)
 8000f82:	60dc      	str	r4, [r3, #12]
	}

	FLASH->CR |= FLASH_CR_PG;
 8000f84:	4c0f      	ldr	r4, [pc, #60]	; (8000fc4 <flash_write+0x5c>)
 8000f86:	6923      	ldr	r3, [r4, #16]
 8000f88:	f043 0301 	orr.w	r3, r3, #1
 8000f8c:	6123      	str	r3, [r4, #16]

	for (i = 0; i < count; i += 2) 
 8000f8e:	2400      	movs	r4, #0
 8000f90:	e00f      	b.n	8000fb2 <flash_write+0x4a>
	{
		*(volatile unsigned short*) (address + i) = (((unsigned short) data[i + 1]) << 8) + data[i];
 8000f92:	1903      	adds	r3, r0, r4
 8000f94:	785d      	ldrb	r5, [r3, #1]
 8000f96:	5d03      	ldrb	r3, [r0, r4]
 8000f98:	eb03 2305 	add.w	r3, r3, r5, lsl #8
 8000f9c:	b29b      	uxth	r3, r3
 8000f9e:	5263      	strh	r3, [r4, r1]
		while (!(FLASH->SR & FLASH_SR_EOP));
 8000fa0:	4b08      	ldr	r3, [pc, #32]	; (8000fc4 <flash_write+0x5c>)
 8000fa2:	68db      	ldr	r3, [r3, #12]
 8000fa4:	f013 0f20 	tst.w	r3, #32
 8000fa8:	d0fa      	beq.n	8000fa0 <flash_write+0x38>
		FLASH->SR = FLASH_SR_EOP;
 8000faa:	2520      	movs	r5, #32
 8000fac:	4b05      	ldr	r3, [pc, #20]	; (8000fc4 <flash_write+0x5c>)
 8000fae:	60dd      	str	r5, [r3, #12]
		FLASH->SR = FLASH_SR_EOP;
	}

	FLASH->CR |= FLASH_CR_PG;

	for (i = 0; i < count; i += 2) 
 8000fb0:	3402      	adds	r4, #2
 8000fb2:	4294      	cmp	r4, r2
 8000fb4:	d3ed      	bcc.n	8000f92 <flash_write+0x2a>
		*(volatile unsigned short*) (address + i) = (((unsigned short) data[i + 1]) << 8) + data[i];
		while (!(FLASH->SR & FLASH_SR_EOP));
		FLASH->SR = FLASH_SR_EOP;
	}

	FLASH->CR &= ~(FLASH_CR_PG);
 8000fb6:	4a03      	ldr	r2, [pc, #12]	; (8000fc4 <flash_write+0x5c>)
 8000fb8:	6913      	ldr	r3, [r2, #16]
 8000fba:	f023 0301 	bic.w	r3, r3, #1
 8000fbe:	6113      	str	r3, [r2, #16]
}
 8000fc0:	bc30      	pop	{r4, r5}
 8000fc2:	4770      	bx	lr
 8000fc4:	40022000 	.word	0x40022000

08000fc8 <flash_load_to_host>:
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}
};

void flash_load_to_host (uint8_t cell)
{
 8000fc8:	b500      	push	{lr}
 8000fca:	b0c7      	sub	sp, #284	; 0x11c
	char str [256];
	snprintf (str, 256, "%ld, %ld, %ld, %ld, %ld, %ld\n", 
 8000fcc:	4b0c      	ldr	r3, [pc, #48]	; (8001000 <flash_load_to_host+0x38>)
 8000fce:	0140      	lsls	r0, r0, #5
 8000fd0:	181a      	adds	r2, r3, r0
 8000fd2:	581b      	ldr	r3, [r3, r0]
 8000fd4:	6951      	ldr	r1, [r2, #20]
 8000fd6:	9104      	str	r1, [sp, #16]
 8000fd8:	6911      	ldr	r1, [r2, #16]
 8000fda:	9103      	str	r1, [sp, #12]
 8000fdc:	68d1      	ldr	r1, [r2, #12]
 8000fde:	9102      	str	r1, [sp, #8]
 8000fe0:	6891      	ldr	r1, [r2, #8]
 8000fe2:	9101      	str	r1, [sp, #4]
 8000fe4:	6852      	ldr	r2, [r2, #4]
 8000fe6:	9200      	str	r2, [sp, #0]
 8000fe8:	4a06      	ldr	r2, [pc, #24]	; (8001004 <flash_load_to_host+0x3c>)
 8000fea:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000fee:	a806      	add	r0, sp, #24
 8000ff0:	f000 f9bc 	bl	800136c <sniprintf>
		pid_eeprom [cell].VL, pid_eeprom [cell].Kf, 
		pid_eeprom [cell].Kp, pid_eeprom [cell].Ki, 
		pid_eeprom [cell].Kd, pid_eeprom [cell].Kg);
	uart_print (str);
 8000ff4:	a806      	add	r0, sp, #24
 8000ff6:	f7ff ff5f 	bl	8000eb8 <uart_print>
}
 8000ffa:	b047      	add	sp, #284	; 0x11c
 8000ffc:	f85d fb04 	ldr.w	pc, [sp], #4
 8001000:	08000400 	.word	0x08000400
 8001004:	08001d1c 	.word	0x08001d1c

08001008 <flash_store_from_host>:

void flash_store_from_host (uint8_t cell, arm_pid_instance_t *pid)
{	
 8001008:	b570      	push	{r4, r5, r6, lr}
 800100a:	b0c8      	sub	sp, #288	; 0x120
 800100c:	4605      	mov	r5, r0
 800100e:	460e      	mov	r6, r1
	arm_pid_instance_t epid [CELL_COUNT + 1];
	
	memcpy (epid, pid_eeprom, sizeof (arm_pid_instance_t) * CELL_COUNT);
 8001010:	4c0b      	ldr	r4, [pc, #44]	; (8001040 <flash_store_from_host+0x38>)
 8001012:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001016:	4621      	mov	r1, r4
 8001018:	4668      	mov	r0, sp
 800101a:	f000 f99b 	bl	8001354 <memcpy>
	memcpy (&epid [cell], pid, sizeof (arm_pid_instance_t));
 800101e:	2220      	movs	r2, #32
 8001020:	4631      	mov	r1, r6
 8001022:	eb0d 1045 	add.w	r0, sp, r5, lsl #5
 8001026:	f000 f995 	bl	8001354 <memcpy>
		
	flash_erase ((unsigned int) &pid_eeprom [0]);
 800102a:	4620      	mov	r0, r4
 800102c:	f7ff ff76 	bl	8000f1c <flash_erase>
	flash_write ((unsigned char *) &epid[0], (unsigned int) &pid_eeprom [0], sizeof (arm_pid_instance_t) * (CELL_COUNT + 1));
 8001030:	f44f 7290 	mov.w	r2, #288	; 0x120
 8001034:	4621      	mov	r1, r4
 8001036:	4668      	mov	r0, sp
 8001038:	f7ff ff96 	bl	8000f68 <flash_write>
}
 800103c:	b048      	add	sp, #288	; 0x120
 800103e:	bd70      	pop	{r4, r5, r6, pc}
 8001040:	08000400 	.word	0x08000400

08001044 <periph_init>:
#include "cmsis_device.h"
#include "pid_def.h"

void periph_init (void)
{
 8001044:	b410      	push	{r4}

	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_IOPBEN | RCC_APB2ENR_AFIOEN); 	// GPIOA, GPIOB, ALTFUNC
 8001046:	4b3f      	ldr	r3, [pc, #252]	; (8001144 <periph_init+0x100>)
 8001048:	699a      	ldr	r2, [r3, #24]
 800104a:	f042 020d 	orr.w	r2, r2, #13
 800104e:	619a      	str	r2, [r3, #24]
	RCC->APB1ENR |= (RCC_APB1ENR_TIM2EN | RCC_APB1ENR_TIM3EN | RCC_APB1ENR_TIM4EN);		// TIM2, TIM3, TIM4	
 8001050:	69da      	ldr	r2, [r3, #28]
 8001052:	f042 0207 	orr.w	r2, r2, #7
 8001056:	61da      	str	r2, [r3, #28]
	 *
	 * PA8 - Dir, PA9 - Step
	 *
	 */
	 
	GPIOA->CRL  = 0x88444488;								// PA0, PA1, PA6, PA7 - Input pull-up mode
 8001058:	f5a3 3384 	sub.w	r3, r3, #67584	; 0x10800
 800105c:	4a3a      	ldr	r2, [pc, #232]	; (8001148 <periph_init+0x104>)
 800105e:	601a      	str	r2, [r3, #0]
	GPIOA->BSRR = 0x000000C3;								// Set pull-up for above pins
 8001060:	22c3      	movs	r2, #195	; 0xc3
 8001062:	611a      	str	r2, [r3, #16]

	/* PB6  - TIM4CH1, PB7  - TIM4CH2,
	 * PB8  - TIM4CH3, PB9  - TIM4CH4 - PWM out */	 
	GPIOB->CRL = 0xAA444444;								// PB6, PB7 - AF push/pull 2MHz output mode
 8001064:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001068:	4a38      	ldr	r2, [pc, #224]	; (800114c <periph_init+0x108>)
 800106a:	601a      	str	r2, [r3, #0]
	GPIOB->CRH = 0x444444AA;								// PB8, PB9 - AF push/pull 2MHz output mode
 800106c:	f102 421a 	add.w	r2, r2, #2583691264	; 0x9a000000
 8001070:	3266      	adds	r2, #102	; 0x66
 8001072:	605a      	str	r2, [r3, #4]
		
/* ------------------------------------------------------------------------------------------------------ */
/* -- TIM2, TIM3 - configuration (Encoders) ------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------ */

	TIM2->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;		// Rising level on both TI1 and TI2
 8001074:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001078:	8911      	ldrh	r1, [r2, #8]
 800107a:	b289      	uxth	r1, r1
 800107c:	f041 0103 	orr.w	r1, r1, #3
 8001080:	8111      	strh	r1, [r2, #8]
	TIM2->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;		// CC1 at TI1, CC2 at TI2
 8001082:	8b11      	ldrh	r1, [r2, #24]
 8001084:	b289      	uxth	r1, r1
 8001086:	f240 1001 	movw	r0, #257	; 0x101
 800108a:	4301      	orrs	r1, r0
 800108c:	8311      	strh	r1, [r2, #24]
	TIM2->ARR	 = 0xffff;									// Max counter value is 65535
 800108e:	f64f 74ff 	movw	r4, #65535	; 0xffff
 8001092:	8594      	strh	r4, [r2, #44]	; 0x2c
	TIM2->CR1	|= TIM_CR1_CEN;								// Enable timer TIM2
 8001094:	8811      	ldrh	r1, [r2, #0]
 8001096:	b289      	uxth	r1, r1
 8001098:	f041 0101 	orr.w	r1, r1, #1
 800109c:	8011      	strh	r1, [r2, #0]

	TIM3->SMCR	|= TIM_SMCR_SMS_0   | TIM_SMCR_SMS_1;
 800109e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80010a2:	8911      	ldrh	r1, [r2, #8]
 80010a4:	b289      	uxth	r1, r1
 80010a6:	f041 0103 	orr.w	r1, r1, #3
 80010aa:	8111      	strh	r1, [r2, #8]
	TIM3->CCMR1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;
 80010ac:	8b11      	ldrh	r1, [r2, #24]
 80010ae:	b289      	uxth	r1, r1
 80010b0:	4308      	orrs	r0, r1
 80010b2:	8310      	strh	r0, [r2, #24]
	TIM3->ARR	 = 0xffff;
 80010b4:	8594      	strh	r4, [r2, #44]	; 0x2c
	TIM3->CR1	|= TIM_CR1_CEN;
 80010b6:	8811      	ldrh	r1, [r2, #0]
 80010b8:	b289      	uxth	r1, r1
 80010ba:	f041 0101 	orr.w	r1, r1, #1
 80010be:	8011      	strh	r1, [r2, #0]
/* -- GPIO (Step/Dir) ----------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------ */

	/* PB15 - Step 0 / PB14 - Dir  0
	 * PB13 - Step 1 / PB12 - Dir  1 */
	GPIOB->CRH &= 0x0000FFFF;
 80010c0:	685a      	ldr	r2, [r3, #4]
 80010c2:	b292      	uxth	r2, r2
 80010c4:	605a      	str	r2, [r3, #4]
	GPIOB->CRH |= 0x88880000;								// PB15-12 -- Input pull-down
 80010c6:	685a      	ldr	r2, [r3, #4]
 80010c8:	f042 4208 	orr.w	r2, r2, #2281701376	; 0x88000000
 80010cc:	f442 0208 	orr.w	r2, r2, #8912896	; 0x880000
 80010d0:	605a      	str	r2, [r3, #4]
	GPIOB->ODR &= 0xFFFF0FFF;								// Set pull-down
 80010d2:	68da      	ldr	r2, [r3, #12]
 80010d4:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 80010d8:	60da      	str	r2, [r3, #12]
	
	
	AFIO->EXTICR[3] = 0x1010;								// Set PB15 & PB13 as EXTI
 80010da:	f241 0210 	movw	r2, #4112	; 0x1010
 80010de:	f5a3 6340 	sub.w	r3, r3, #3072	; 0xc00
 80010e2:	615a      	str	r2, [r3, #20]
	EXTI->IMR	= 0xA000;									// Unmask PB15 & PB13 interrupts
 80010e4:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80010e8:	f44f 4220 	mov.w	r2, #40960	; 0xa000
 80010ec:	601a      	str	r2, [r3, #0]
	EXTI->RTSR	= 0xA000;									// Rising edge trigger
 80010ee:	609a      	str	r2, [r3, #8]
 80010f0:	f44f 7280 	mov.w	r2, #256	; 0x100
 80010f4:	4b16      	ldr	r3, [pc, #88]	; (8001150 <periph_init+0x10c>)
 80010f6:	605a      	str	r2, [r3, #4]

/* ----------------------------------------------------------------------------------------------------- */
/* -- TIM4 - configuration (PWM) ----------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------------- */

	TIM4->CCMR1 |= (TIM_CCMR1_OC1PE  | TIM_CCMR1_OC2PE  |		// Preload enable for both CH1 and CH2
 80010f8:	4b16      	ldr	r3, [pc, #88]	; (8001154 <periph_init+0x110>)
 80010fa:	8b1a      	ldrh	r2, [r3, #24]
 80010fc:	b292      	uxth	r2, r2
 80010fe:	f646 0168 	movw	r1, #26728	; 0x6868
 8001102:	430a      	orrs	r2, r1
 8001104:	831a      	strh	r2, [r3, #24]
	                TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1 |		// PWM mode 1 - CH1
	                TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2M_1 );		// PWM mode 1 - CH2
	                
	TIM4->CCMR2 |= (TIM_CCMR2_OC3PE  | TIM_CCMR2_OC4PE  |		// Preload enable for both CH1 and CH2
 8001106:	8b9a      	ldrh	r2, [r3, #28]
 8001108:	b292      	uxth	r2, r2
 800110a:	4311      	orrs	r1, r2
 800110c:	8399      	strh	r1, [r3, #28]
	                TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1 |		// PWM mode 1 - CH1
	                TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4M_1 );		// PWM mode 1 - CH2

	TIM4->PSC   = (TIM4_CLK / (PWM_FREQ * PWM_MAX_VAL)) * 2;	// Set PWM frequency
 800110e:	220e      	movs	r2, #14
 8001110:	851a      	strh	r2, [r3, #40]	; 0x28
	TIM4->ARR   = PWM_MAX_VAL;
 8001112:	22ff      	movs	r2, #255	; 0xff
 8001114:	859a      	strh	r2, [r3, #44]	; 0x2c
	TIM4->CCER |= ( TIM_CCER_CC1E | TIM_CCER_CC2E |
 8001116:	8c1a      	ldrh	r2, [r3, #32]
 8001118:	b292      	uxth	r2, r2
 800111a:	f442 5288 	orr.w	r2, r2, #4352	; 0x1100
 800111e:	f042 0211 	orr.w	r2, r2, #17
 8001122:	841a      	strh	r2, [r3, #32]
	                TIM_CCER_CC3E | TIM_CCER_CC4E );			// TIM4 CH1-4 output enable

	TIM4->CR1	= TIM_CR1_CEN | TIM_CR1_ARPE;
 8001124:	2281      	movs	r2, #129	; 0x81
 8001126:	801a      	strh	r2, [r3, #0]
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > SysTick_LOAD_RELOAD_Msk)  return (1);      /* Reload value impossible */

  SysTick->LOAD  = ticks - 1;                                  /* set reload register */
 8001128:	4b0b      	ldr	r3, [pc, #44]	; (8001158 <periph_init+0x114>)
 800112a:	4a0c      	ldr	r2, [pc, #48]	; (800115c <periph_init+0x118>)
 800112c:	605a      	str	r2, [r3, #4]
    \param [in]  priority  Priority to set.
 */
__STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set Priority for Cortex-M  System Interrupts */
 800112e:	21f0      	movs	r1, #240	; 0xf0
 8001130:	4a0b      	ldr	r2, [pc, #44]	; (8001160 <periph_init+0x11c>)
 8001132:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
{
  if ((ticks - 1) > SysTick_LOAD_RELOAD_Msk)  return (1);      /* Reload value impossible */

  SysTick->LOAD  = ticks - 1;                                  /* set reload register */
  NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Systick Interrupt */
  SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
 8001136:	2200      	movs	r2, #0
 8001138:	609a      	str	r2, [r3, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 800113a:	2207      	movs	r2, #7
 800113c:	601a      	str	r2, [r3, #0]
/* -- SysTick config ----------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------------- */

	SysTick_Config (72000);			// SysTick interrupt will occur every 1ms
			
}
 800113e:	bc10      	pop	{r4}
 8001140:	4770      	bx	lr
 8001142:	bf00      	nop
 8001144:	40021000 	.word	0x40021000
 8001148:	88444488 	.word	0x88444488
 800114c:	aa444444 	.word	0xaa444444
 8001150:	e000e100 	.word	0xe000e100
 8001154:	40000800 	.word	0x40000800
 8001158:	e000e010 	.word	0xe000e010
 800115c:	0001193f 	.word	0x0001193f
 8001160:	e000ed00 	.word	0xe000ed00

08001164 <pid_reset>:

static int32_t pid_reset_flag = 0;

/* Total PID reset */
void pid_reset (arm_pid_t *pid_inst)
{	
 8001164:	b430      	push	{r4, r5}
}


inline void pid_set_PWM (arm_pid_t *pid_inst, int32_t pwm)
{
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
 8001166:	6cc2      	ldr	r2, [r0, #76]	; 0x4c
 8001168:	2300      	movs	r3, #0
 800116a:	6013      	str	r3, [r2, #0]
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 800116c:	6d02      	ldr	r2, [r0, #80]	; 0x50
 800116e:	6013      	str	r3, [r2, #0]

/* Total PID reset */
void pid_reset (arm_pid_t *pid_inst)
{	
	pid_set_PWM (pid_inst, 0);
	pid_reset_flag = 2000;
 8001170:	f44f 61fa 	mov.w	r1, #2000	; 0x7d0
 8001174:	4a07      	ldr	r2, [pc, #28]	; (8001194 <pid_reset+0x30>)
 8001176:	6011      	str	r1, [r2, #0]
	pid_inst->last_error = 0;
 8001178:	6403      	str	r3, [r0, #64]	; 0x40
	pid_inst->integral = 0;	
 800117a:	2400      	movs	r4, #0
 800117c:	2500      	movs	r5, #0
 800117e:	e9c0 450e 	strd	r4, r5, [r0, #56]	; 0x38
	pid_inst->setpoint = 0;
 8001182:	6283      	str	r3, [r0, #40]	; 0x28
	pid_inst->feedback = 0;
 8001184:	62c3      	str	r3, [r0, #44]	; 0x2c
	pid_inst->velocity = 0;
	*pid_inst->encoder = 0;	
 8001186:	6d42      	ldr	r2, [r0, #84]	; 0x54
 8001188:	6013      	str	r3, [r2, #0]
	pid_inst->velocity = 0;
 800118a:	6303      	str	r3, [r0, #48]	; 0x30
	pid_inst->last_position = 0;		
 800118c:	6443      	str	r3, [r0, #68]	; 0x44
}
 800118e:	bc30      	pop	{r4, r5}
 8001190:	4770      	bx	lr
 8001192:	bf00      	nop
 8001194:	20001344 	.word	0x20001344

08001198 <pid_set_point>:

/* Set new PID position command */ 
void pid_set_point (arm_pid_t *pid_inst, int32_t setpoint)
{
	pid_inst->setpoint = setpoint;
 8001198:	6281      	str	r1, [r0, #40]	; 0x28
 800119a:	4770      	bx	lr

0800119c <pid_set_parameters>:
}

/* Set PID parameters */
void pid_set_parameters (arm_pid_t *pid_inst, int32_t value, uint8_t index)
{
	switch (index)
 800119c:	2a05      	cmp	r2, #5
 800119e:	d80f      	bhi.n	80011c0 <pid_set_parameters+0x24>
 80011a0:	e8df f002 	tbb	[pc, r2]
 80011a4:	09070503 	.word	0x09070503
 80011a8:	0d0b      	.short	0x0d0b
	{
	/* Velocity limit */
	case 0: pid_inst->pid.VL = value; break;
 80011aa:	6001      	str	r1, [r0, #0]
 80011ac:	4770      	bx	lr
	/* Velocity feedback gain */
	case 1: pid_inst->pid.Kf = value; break;
 80011ae:	6041      	str	r1, [r0, #4]
 80011b0:	4770      	bx	lr
	/* Proportional gain */
	case 2: pid_inst->pid.Kp = value; break;
 80011b2:	6081      	str	r1, [r0, #8]
 80011b4:	4770      	bx	lr
	/* Integral gain */
	case 3: pid_inst->pid.Ki = value; break;
 80011b6:	60c1      	str	r1, [r0, #12]
 80011b8:	4770      	bx	lr
	/* Derivative gain */
	case 4: pid_inst->pid.Kd = value; break;
 80011ba:	6101      	str	r1, [r0, #16]
 80011bc:	4770      	bx	lr
	/* Torque feedback gain */
	case 5: pid_inst->pid.Kg = value; break;
 80011be:	6141      	str	r1, [r0, #20]
 80011c0:	4770      	bx	lr
 80011c2:	bf00      	nop

080011c4 <pid_set_mode>:
}

/* Set new servo mode */
void pid_set_mode (arm_pid_t *pid_inst, uint8_t mode)
{
	pid_inst->servo_mode = mode;
 80011c4:	6241      	str	r1, [r0, #36]	; 0x24
 80011c6:	4770      	bx	lr

080011c8 <pid_set_sub_cmd>:
}

/* Set command for servo mode (PWM, TORQUE, VELOCITY) */
void pid_set_sub_cmd (arm_pid_t *pid_inst, int32_t cmd)
{
	pid_inst->subcmd = cmd;
 80011c8:	6201      	str	r1, [r0, #32]
 80011ca:	4770      	bx	lr

080011cc <pid_update>:

/* Main PID function */
void pid_update (arm_pid_t *pid_inst, uint8_t speed_compare)
{	
	/* Wait 1ms to totally stop the motor */
	if (pid_reset_flag > 0)
 80011cc:	4b4d      	ldr	r3, [pc, #308]	; (8001304 <pid_update+0x138>)
 80011ce:	681b      	ldr	r3, [r3, #0]
 80011d0:	2b00      	cmp	r3, #0
 80011d2:	dd07      	ble.n	80011e4 <pid_update+0x18>
	{
		pid_reset_flag--;
 80011d4:	3b01      	subs	r3, #1
 80011d6:	4a4b      	ldr	r2, [pc, #300]	; (8001304 <pid_update+0x138>)
 80011d8:	6013      	str	r3, [r2, #0]
		*pid_inst->encoder = 0;		
 80011da:	6d42      	ldr	r2, [r0, #84]	; 0x54
 80011dc:	2300      	movs	r3, #0
 80011de:	6013      	str	r3, [r2, #0]
		pid_inst->setpoint = 0;
 80011e0:	6283      	str	r3, [r0, #40]	; 0x28
 80011e2:	4770      	bx	lr
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
}

/* Main PID function */
void pid_update (arm_pid_t *pid_inst, uint8_t speed_compare)
{	
 80011e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	/* Intermediate result of PID calc. */
	int64_t out;
	/* Difference between setpoint and feedback */
	int32_t error;
	/* Servo mode sub-command */
	int32_t pidcmd = pid_inst->subcmd;
 80011e8:	6a02      	ldr	r2, [r0, #32]
  This function disables IRQ interrupts by setting the I-bit in the CPSR.
  Can only be executed in Privileged modes.
 */
__attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
{
  __ASM volatile ("cpsid i" : : : "memory");
 80011ea:	b672      	cpsid	i
	
	/* Stop interrupt until get timer counters */
	__disable_irq ();	
	pid_inst->feedback += (int16_t) *pid_inst->encoder;		// Current position = previous position + encoder value
 80011ec:	6d44      	ldr	r4, [r0, #84]	; 0x54
 80011ee:	f9b4 3000 	ldrsh.w	r3, [r4]
 80011f2:	6ac5      	ldr	r5, [r0, #44]	; 0x2c
 80011f4:	442b      	add	r3, r5
 80011f6:	62c3      	str	r3, [r0, #44]	; 0x2c
	*pid_inst->encoder = 0;									// After reading TIMx->CNT we need to clear it
 80011f8:	2300      	movs	r3, #0
 80011fa:	6023      	str	r3, [r4, #0]
  This function enables IRQ interrupts by clearing the I-bit in the CPSR.
  Can only be executed in Privileged modes.
 */
__attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_irq(void)
{
  __ASM volatile ("cpsie i" : : : "memory");
 80011fc:	b662      	cpsie	i
	__enable_irq ();

	/* Speed sampling at 250Hz */	
	if (speed_compare)
 80011fe:	b121      	cbz	r1, 800120a <pid_update+0x3e>
	{
		pid_inst->velocity = 
			pid_inst->feedback - pid_inst->last_position;	// Speed = current position - previous position
 8001200:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 8001202:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001204:	1acb      	subs	r3, r1, r3
	__enable_irq ();

	/* Speed sampling at 250Hz */	
	if (speed_compare)
	{
		pid_inst->velocity = 
 8001206:	6303      	str	r3, [r0, #48]	; 0x30
			pid_inst->feedback - pid_inst->last_position;	// Speed = current position - previous position
		pid_inst->last_position = pid_inst->feedback;		// The last_position is need to calculate the velocity
 8001208:	6441      	str	r1, [r0, #68]	; 0x44
	}	
	
	switch (pid_inst->servo_mode)
 800120a:	6a43      	ldr	r3, [r0, #36]	; 0x24
 800120c:	2b03      	cmp	r3, #3
 800120e:	d876      	bhi.n	80012fe <pid_update+0x132>
 8001210:	e8df f003 	tbb	[pc, r3]
 8001214:	635d0d02 	.word	0x635d0d02
	{		
		case POSITION:
			/* Position error is velocity error */
			pidcmd = LIMIT (pid_inst->pid.VL, 
 8001218:	6a83      	ldr	r3, [r0, #40]	; 0x28
 800121a:	6ac2      	ldr	r2, [r0, #44]	; 0x2c
 800121c:	1a9b      	subs	r3, r3, r2
 800121e:	6802      	ldr	r2, [r0, #0]
 8001220:	4293      	cmp	r3, r2
 8001222:	dc04      	bgt.n	800122e <pid_update+0x62>
 8001224:	4251      	negs	r1, r2
 8001226:	428b      	cmp	r3, r1
 8001228:	bfb8      	it	lt
 800122a:	460b      	movlt	r3, r1
 800122c:	461a      	mov	r2, r3
				-pid_inst->pid.VL, pid_inst->setpoint - pid_inst->feedback);
		
		case SPEED:
			/* Get mismatch of setpoint and feedback with feedback gain */
			error = pidcmd - ((pid_inst->velocity * pid_inst->pid.Kf) >> FIXED_POINT_POSITION);
 800122e:	6b01      	ldr	r1, [r0, #48]	; 0x30
 8001230:	6843      	ldr	r3, [r0, #4]
 8001232:	fb03 f101 	mul.w	r1, r3, r1
 8001236:	eba2 4121 	sub.w	r1, r2, r1, asr #16
			/* Integral part */			
			out  = (int64_t) pid_inst->integral * (int64_t) pid_inst->pid.Ki;
 800123a:	e9d0 890e 	ldrd	r8, r9, [r0, #56]	; 0x38
 800123e:	68c4      	ldr	r4, [r0, #12]
 8001240:	17e3      	asrs	r3, r4, #31
 8001242:	fb08 f303 	mul.w	r3, r8, r3
 8001246:	fb04 3309 	mla	r3, r4, r9, r3
 800124a:	fba8 4504 	umull	r4, r5, r8, r4
 800124e:	441d      	add	r5, r3
			/* Proportional part */
			out += (int64_t) error * (int64_t) pid_inst->pid.Kp;
 8001250:	17cf      	asrs	r7, r1, #31
 8001252:	6882      	ldr	r2, [r0, #8]
 8001254:	ea4f 7be2 	mov.w	fp, r2, asr #31
 8001258:	fb01 fe0b 	mul.w	lr, r1, fp
 800125c:	fb02 ee07 	mla	lr, r2, r7, lr
 8001260:	fba1 2302 	umull	r2, r3, r1, r2
 8001264:	4473      	add	r3, lr
 8001266:	eb14 0a02 	adds.w	sl, r4, r2
 800126a:	eb45 0b03 	adc.w	fp, r5, r3
			/* Derivative part */
			out += (int64_t) (error - pid_inst->last_error) * (int64_t) pid_inst->pid.Kd;
 800126e:	6c02      	ldr	r2, [r0, #64]	; 0x40
 8001270:	ebc2 0e01 	rsb	lr, r2, r1
 8001274:	4674      	mov	r4, lr
 8001276:	17e5      	asrs	r5, r4, #31
 8001278:	6904      	ldr	r4, [r0, #16]
 800127a:	17e3      	asrs	r3, r4, #31
 800127c:	fb0e f303 	mul.w	r3, lr, r3
 8001280:	fb04 3505 	mla	r5, r4, r5, r3
 8001284:	fbae 2304 	umull	r2, r3, lr, r4
 8001288:	442b      	add	r3, r5
 800128a:	eb12 020a 	adds.w	r2, r2, sl
 800128e:	eb43 030b 	adc.w	r3, r3, fp
			
			/* Accumulate error */
			pid_inst->integral  += error;
 8001292:	eb11 0608 	adds.w	r6, r1, r8
 8001296:	eb47 0709 	adc.w	r7, r7, r9
 800129a:	e9c0 670e 	strd	r6, r7, [r0, #56]	; 0x38
			/* Get error derivative */
			pid_inst->last_error = error;
 800129e:	6401      	str	r1, [r0, #64]	; 0x40

			/* Limit PID result to max torque */
			pidcmd = LIMIT (500, -500, out >> FIXED_POINT_POSITION);
 80012a0:	0c14      	lsrs	r4, r2, #16
 80012a2:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80012a6:	141d      	asrs	r5, r3, #16
 80012a8:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 80012ac:	2300      	movs	r3, #0
 80012ae:	42a2      	cmp	r2, r4
 80012b0:	41ab      	sbcs	r3, r5
 80012b2:	db0a      	blt.n	80012ca <pid_update+0xfe>
 80012b4:	4621      	mov	r1, r4
 80012b6:	4a14      	ldr	r2, [pc, #80]	; (8001308 <pid_update+0x13c>)
 80012b8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80012bc:	4294      	cmp	r4, r2
 80012be:	eb75 0303 	sbcs.w	r3, r5, r3
 80012c2:	da00      	bge.n	80012c6 <pid_update+0xfa>
 80012c4:	4910      	ldr	r1, [pc, #64]	; (8001308 <pid_update+0x13c>)
 80012c6:	460a      	mov	r2, r1
 80012c8:	e001      	b.n	80012ce <pid_update+0x102>
 80012ca:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
		
		case TORQUE:
			pidcmd += ((pid_inst->velocity * pid_inst->pid.Kg) >> FIXED_POINT_POSITION);			
 80012ce:	6b01      	ldr	r1, [r0, #48]	; 0x30
 80012d0:	6943      	ldr	r3, [r0, #20]
 80012d2:	fb03 f301 	mul.w	r3, r3, r1
 80012d6:	eb02 4223 	add.w	r2, r2, r3, asr #16
		
		case PWM:
			pid_set_PWM (pid_inst, 
				LIMIT (pid_inst->pwm_max_val, -pid_inst->pwm_max_val, pidcmd));
 80012da:	6c83      	ldr	r3, [r0, #72]	; 0x48
		
		case TORQUE:
			pidcmd += ((pid_inst->velocity * pid_inst->pid.Kg) >> FIXED_POINT_POSITION);			
		
		case PWM:
			pid_set_PWM (pid_inst, 
 80012dc:	429a      	cmp	r2, r3
 80012de:	dc03      	bgt.n	80012e8 <pid_update+0x11c>
				LIMIT (pid_inst->pwm_max_val, -pid_inst->pwm_max_val, pidcmd));
 80012e0:	425b      	negs	r3, r3
		
		case TORQUE:
			pidcmd += ((pid_inst->velocity * pid_inst->pid.Kg) >> FIXED_POINT_POSITION);			
		
		case PWM:
			pid_set_PWM (pid_inst, 
 80012e2:	4293      	cmp	r3, r2
 80012e4:	bfb8      	it	lt
 80012e6:	4613      	movlt	r3, r2
}


inline void pid_set_PWM (arm_pid_t *pid_inst, int32_t pwm)
{
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
 80012e8:	6cc2      	ldr	r2, [r0, #76]	; 0x4c
 80012ea:	ea23 71e3 	bic.w	r1, r3, r3, asr #31
 80012ee:	6011      	str	r1, [r2, #0]
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
 80012f0:	6d02      	ldr	r2, [r0, #80]	; 0x50
 80012f2:	2b00      	cmp	r3, #0
 80012f4:	da01      	bge.n	80012fa <pid_update+0x12e>
 80012f6:	425b      	negs	r3, r3
 80012f8:	e000      	b.n	80012fc <pid_update+0x130>
 80012fa:	2300      	movs	r3, #0
 80012fc:	6013      	str	r3, [r2, #0]
 80012fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001302:	bf00      	nop
 8001304:	20001344 	.word	0x20001344
 8001308:	fffffe0c 	.word	0xfffffe0c

0800130c <pid_init>:
	}
}

void pid_init (arm_pid_t *pid_inst, 
	int32_t pwm_max_val, uint32_t *pwm_p, uint32_t *pwm_n, uint32_t *encoder)
{
 800130c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800130e:	4604      	mov	r4, r0
 8001310:	460d      	mov	r5, r1
 8001312:	4617      	mov	r7, r2
 8001314:	461e      	mov	r6, r3
	bzero (pid_inst, sizeof (arm_pid_t));
 8001316:	2158      	movs	r1, #88	; 0x58
 8001318:	f000 f80e 	bl	8001338 <bzero>
	
	pid_inst->pwm_max_val = pwm_max_val - 5;	
 800131c:	3d05      	subs	r5, #5
 800131e:	64a5      	str	r5, [r4, #72]	; 0x48
	pid_inst->pwm_p = pwm_p;
 8001320:	64e7      	str	r7, [r4, #76]	; 0x4c
	pid_inst->pwm_n = pwm_n;
 8001322:	6526      	str	r6, [r4, #80]	; 0x50
	pid_inst->encoder = encoder;
 8001324:	9b06      	ldr	r3, [sp, #24]
 8001326:	6563      	str	r3, [r4, #84]	; 0x54
	pid_inst->subcmd = 0;
 8001328:	2300      	movs	r3, #0
 800132a:	6223      	str	r3, [r4, #32]
	pid_inst->servo_mode = POSITION;
 800132c:	6263      	str	r3, [r4, #36]	; 0x24
 800132e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

08001330 <atoi>:
 8001330:	220a      	movs	r2, #10
 8001332:	2100      	movs	r1, #0
 8001334:	f000 b8f6 	b.w	8001524 <strtol>

08001338 <bzero>:
 8001338:	4401      	add	r1, r0
 800133a:	2300      	movs	r3, #0
 800133c:	4288      	cmp	r0, r1
 800133e:	d002      	beq.n	8001346 <bzero+0xe>
 8001340:	f800 3b01 	strb.w	r3, [r0], #1
 8001344:	e7fa      	b.n	800133c <bzero+0x4>
 8001346:	4770      	bx	lr

08001348 <__errno>:
 8001348:	4b01      	ldr	r3, [pc, #4]	; (8001350 <__errno+0x8>)
 800134a:	6818      	ldr	r0, [r3, #0]
 800134c:	4770      	bx	lr
 800134e:	bf00      	nop
 8001350:	20000080 	.word	0x20000080

08001354 <memcpy>:
 8001354:	b510      	push	{r4, lr}
 8001356:	1e43      	subs	r3, r0, #1
 8001358:	440a      	add	r2, r1
 800135a:	4291      	cmp	r1, r2
 800135c:	d004      	beq.n	8001368 <memcpy+0x14>
 800135e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8001362:	f803 4f01 	strb.w	r4, [r3, #1]!
 8001366:	e7f8      	b.n	800135a <memcpy+0x6>
 8001368:	bd10      	pop	{r4, pc}
	...

0800136c <sniprintf>:
 800136c:	b40c      	push	{r2, r3}
 800136e:	b530      	push	{r4, r5, lr}
 8001370:	4b16      	ldr	r3, [pc, #88]	; (80013cc <sniprintf+0x60>)
 8001372:	1e0c      	subs	r4, r1, #0
 8001374:	b09d      	sub	sp, #116	; 0x74
 8001376:	681d      	ldr	r5, [r3, #0]
 8001378:	da04      	bge.n	8001384 <sniprintf+0x18>
 800137a:	238b      	movs	r3, #139	; 0x8b
 800137c:	602b      	str	r3, [r5, #0]
 800137e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001382:	e01e      	b.n	80013c2 <sniprintf+0x56>
 8001384:	f44f 7302 	mov.w	r3, #520	; 0x208
 8001388:	f8ad 3014 	strh.w	r3, [sp, #20]
 800138c:	bf0c      	ite	eq
 800138e:	4623      	moveq	r3, r4
 8001390:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
 8001394:	9304      	str	r3, [sp, #16]
 8001396:	9307      	str	r3, [sp, #28]
 8001398:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800139c:	9002      	str	r0, [sp, #8]
 800139e:	9006      	str	r0, [sp, #24]
 80013a0:	f8ad 3016 	strh.w	r3, [sp, #22]
 80013a4:	9a20      	ldr	r2, [sp, #128]	; 0x80
 80013a6:	ab21      	add	r3, sp, #132	; 0x84
 80013a8:	a902      	add	r1, sp, #8
 80013aa:	4628      	mov	r0, r5
 80013ac:	9301      	str	r3, [sp, #4]
 80013ae:	f000 f91d 	bl	80015ec <_svfiprintf_r>
 80013b2:	1c43      	adds	r3, r0, #1
 80013b4:	bfbc      	itt	lt
 80013b6:	238b      	movlt	r3, #139	; 0x8b
 80013b8:	602b      	strlt	r3, [r5, #0]
 80013ba:	b114      	cbz	r4, 80013c2 <sniprintf+0x56>
 80013bc:	9b02      	ldr	r3, [sp, #8]
 80013be:	2200      	movs	r2, #0
 80013c0:	701a      	strb	r2, [r3, #0]
 80013c2:	b01d      	add	sp, #116	; 0x74
 80013c4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80013c8:	b002      	add	sp, #8
 80013ca:	4770      	bx	lr
 80013cc:	20000080 	.word	0x20000080

080013d0 <siprintf>:
 80013d0:	b40e      	push	{r1, r2, r3}
 80013d2:	b500      	push	{lr}
 80013d4:	f44f 7102 	mov.w	r1, #520	; 0x208
 80013d8:	b09c      	sub	sp, #112	; 0x70
 80013da:	f8ad 1014 	strh.w	r1, [sp, #20]
 80013de:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
 80013e2:	9104      	str	r1, [sp, #16]
 80013e4:	9107      	str	r1, [sp, #28]
 80013e6:	f64f 71ff 	movw	r1, #65535	; 0xffff
 80013ea:	ab1d      	add	r3, sp, #116	; 0x74
 80013ec:	9002      	str	r0, [sp, #8]
 80013ee:	9006      	str	r0, [sp, #24]
 80013f0:	4808      	ldr	r0, [pc, #32]	; (8001414 <siprintf+0x44>)
 80013f2:	f853 2b04 	ldr.w	r2, [r3], #4
 80013f6:	f8ad 1016 	strh.w	r1, [sp, #22]
 80013fa:	6800      	ldr	r0, [r0, #0]
 80013fc:	a902      	add	r1, sp, #8
 80013fe:	9301      	str	r3, [sp, #4]
 8001400:	f000 f8f4 	bl	80015ec <_svfiprintf_r>
 8001404:	9b02      	ldr	r3, [sp, #8]
 8001406:	2200      	movs	r2, #0
 8001408:	701a      	strb	r2, [r3, #0]
 800140a:	b01c      	add	sp, #112	; 0x70
 800140c:	f85d eb04 	ldr.w	lr, [sp], #4
 8001410:	b003      	add	sp, #12
 8001412:	4770      	bx	lr
 8001414:	20000080 	.word	0x20000080

08001418 <_strtol_r>:
 8001418:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800141c:	460f      	mov	r7, r1
 800141e:	4680      	mov	r8, r0
 8001420:	483f      	ldr	r0, [pc, #252]	; (8001520 <_strtol_r+0x108>)
 8001422:	f8d0 9000 	ldr.w	r9, [r0]
 8001426:	463d      	mov	r5, r7
 8001428:	f815 4b01 	ldrb.w	r4, [r5], #1
 800142c:	eb09 0004 	add.w	r0, r9, r4
 8001430:	7840      	ldrb	r0, [r0, #1]
 8001432:	f000 0008 	and.w	r0, r0, #8
 8001436:	f000 06ff 	and.w	r6, r0, #255	; 0xff
 800143a:	b108      	cbz	r0, 8001440 <_strtol_r+0x28>
 800143c:	462f      	mov	r7, r5
 800143e:	e7f2      	b.n	8001426 <_strtol_r+0xe>
 8001440:	2c2d      	cmp	r4, #45	; 0x2d
 8001442:	d103      	bne.n	800144c <_strtol_r+0x34>
 8001444:	1cbd      	adds	r5, r7, #2
 8001446:	787c      	ldrb	r4, [r7, #1]
 8001448:	2601      	movs	r6, #1
 800144a:	e003      	b.n	8001454 <_strtol_r+0x3c>
 800144c:	2c2b      	cmp	r4, #43	; 0x2b
 800144e:	bf04      	itt	eq
 8001450:	787c      	ldrbeq	r4, [r7, #1]
 8001452:	1cbd      	addeq	r5, r7, #2
 8001454:	b113      	cbz	r3, 800145c <_strtol_r+0x44>
 8001456:	2b10      	cmp	r3, #16
 8001458:	d10a      	bne.n	8001470 <_strtol_r+0x58>
 800145a:	e05b      	b.n	8001514 <_strtol_r+0xfc>
 800145c:	2c30      	cmp	r4, #48	; 0x30
 800145e:	d157      	bne.n	8001510 <_strtol_r+0xf8>
 8001460:	7828      	ldrb	r0, [r5, #0]
 8001462:	f000 00df 	and.w	r0, r0, #223	; 0xdf
 8001466:	2858      	cmp	r0, #88	; 0x58
 8001468:	d14d      	bne.n	8001506 <_strtol_r+0xee>
 800146a:	786c      	ldrb	r4, [r5, #1]
 800146c:	2310      	movs	r3, #16
 800146e:	3502      	adds	r5, #2
 8001470:	2e00      	cmp	r6, #0
 8001472:	bf14      	ite	ne
 8001474:	f04f 4c00 	movne.w	ip, #2147483648	; 0x80000000
 8001478:	f06f 4c00 	mvneq.w	ip, #2147483648	; 0x80000000
 800147c:	fbbc faf3 	udiv	sl, ip, r3
 8001480:	2700      	movs	r7, #0
 8001482:	4638      	mov	r0, r7
 8001484:	fb03 cc1a 	mls	ip, r3, sl, ip
 8001488:	eb09 0e04 	add.w	lr, r9, r4
 800148c:	f89e e001 	ldrb.w	lr, [lr, #1]
 8001490:	f01e 0f04 	tst.w	lr, #4
 8001494:	d001      	beq.n	800149a <_strtol_r+0x82>
 8001496:	3c30      	subs	r4, #48	; 0x30
 8001498:	e00b      	b.n	80014b2 <_strtol_r+0x9a>
 800149a:	f01e 0e03 	ands.w	lr, lr, #3
 800149e:	d01b      	beq.n	80014d8 <_strtol_r+0xc0>
 80014a0:	f1be 0f01 	cmp.w	lr, #1
 80014a4:	bf0c      	ite	eq
 80014a6:	f04f 0e37 	moveq.w	lr, #55	; 0x37
 80014aa:	f04f 0e57 	movne.w	lr, #87	; 0x57
 80014ae:	ebce 0404 	rsb	r4, lr, r4
 80014b2:	42a3      	cmp	r3, r4
 80014b4:	dd10      	ble.n	80014d8 <_strtol_r+0xc0>
 80014b6:	f1b7 3fff 	cmp.w	r7, #4294967295	; 0xffffffff
 80014ba:	d00a      	beq.n	80014d2 <_strtol_r+0xba>
 80014bc:	4550      	cmp	r0, sl
 80014be:	d806      	bhi.n	80014ce <_strtol_r+0xb6>
 80014c0:	d101      	bne.n	80014c6 <_strtol_r+0xae>
 80014c2:	4564      	cmp	r4, ip
 80014c4:	dc03      	bgt.n	80014ce <_strtol_r+0xb6>
 80014c6:	fb03 4000 	mla	r0, r3, r0, r4
 80014ca:	2701      	movs	r7, #1
 80014cc:	e001      	b.n	80014d2 <_strtol_r+0xba>
 80014ce:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80014d2:	f815 4b01 	ldrb.w	r4, [r5], #1
 80014d6:	e7d7      	b.n	8001488 <_strtol_r+0x70>
 80014d8:	1c7b      	adds	r3, r7, #1
 80014da:	d10c      	bne.n	80014f6 <_strtol_r+0xde>
 80014dc:	2e00      	cmp	r6, #0
 80014de:	f04f 0322 	mov.w	r3, #34	; 0x22
 80014e2:	bf14      	ite	ne
 80014e4:	f04f 4000 	movne.w	r0, #2147483648	; 0x80000000
 80014e8:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 80014ec:	f8c8 3000 	str.w	r3, [r8]
 80014f0:	b92a      	cbnz	r2, 80014fe <_strtol_r+0xe6>
 80014f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80014f6:	b106      	cbz	r6, 80014fa <_strtol_r+0xe2>
 80014f8:	4240      	negs	r0, r0
 80014fa:	b172      	cbz	r2, 800151a <_strtol_r+0x102>
 80014fc:	b107      	cbz	r7, 8001500 <_strtol_r+0xe8>
 80014fe:	1e69      	subs	r1, r5, #1
 8001500:	6011      	str	r1, [r2, #0]
 8001502:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001506:	2430      	movs	r4, #48	; 0x30
 8001508:	2b00      	cmp	r3, #0
 800150a:	d1b1      	bne.n	8001470 <_strtol_r+0x58>
 800150c:	2308      	movs	r3, #8
 800150e:	e7af      	b.n	8001470 <_strtol_r+0x58>
 8001510:	230a      	movs	r3, #10
 8001512:	e7ad      	b.n	8001470 <_strtol_r+0x58>
 8001514:	2c30      	cmp	r4, #48	; 0x30
 8001516:	d0a3      	beq.n	8001460 <_strtol_r+0x48>
 8001518:	e7aa      	b.n	8001470 <_strtol_r+0x58>
 800151a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800151e:	bf00      	nop
 8001520:	20000084 	.word	0x20000084

08001524 <strtol>:
 8001524:	4613      	mov	r3, r2
 8001526:	460a      	mov	r2, r1
 8001528:	4601      	mov	r1, r0
 800152a:	4802      	ldr	r0, [pc, #8]	; (8001534 <strtol+0x10>)
 800152c:	6800      	ldr	r0, [r0, #0]
 800152e:	f7ff bf73 	b.w	8001418 <_strtol_r>
 8001532:	bf00      	nop
 8001534:	20000080 	.word	0x20000080

08001538 <__ssputs_r>:
 8001538:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800153c:	688e      	ldr	r6, [r1, #8]
 800153e:	4682      	mov	sl, r0
 8001540:	429e      	cmp	r6, r3
 8001542:	460c      	mov	r4, r1
 8001544:	4691      	mov	r9, r2
 8001546:	4698      	mov	r8, r3
 8001548:	d83e      	bhi.n	80015c8 <__ssputs_r+0x90>
 800154a:	898a      	ldrh	r2, [r1, #12]
 800154c:	f412 6f90 	tst.w	r2, #1152	; 0x480
 8001550:	d03a      	beq.n	80015c8 <__ssputs_r+0x90>
 8001552:	6825      	ldr	r5, [r4, #0]
 8001554:	6909      	ldr	r1, [r1, #16]
 8001556:	2302      	movs	r3, #2
 8001558:	1a6f      	subs	r7, r5, r1
 800155a:	6965      	ldr	r5, [r4, #20]
 800155c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 8001560:	fb95 f5f3 	sdiv	r5, r5, r3
 8001564:	1c7b      	adds	r3, r7, #1
 8001566:	4443      	add	r3, r8
 8001568:	429d      	cmp	r5, r3
 800156a:	bf38      	it	cc
 800156c:	461d      	movcc	r5, r3
 800156e:	0553      	lsls	r3, r2, #21
 8001570:	d50f      	bpl.n	8001592 <__ssputs_r+0x5a>
 8001572:	4629      	mov	r1, r5
 8001574:	f000 fb38 	bl	8001be8 <_malloc_r>
 8001578:	4606      	mov	r6, r0
 800157a:	b198      	cbz	r0, 80015a4 <__ssputs_r+0x6c>
 800157c:	463a      	mov	r2, r7
 800157e:	6921      	ldr	r1, [r4, #16]
 8001580:	f7ff fee8 	bl	8001354 <memcpy>
 8001584:	89a3      	ldrh	r3, [r4, #12]
 8001586:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
 800158a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800158e:	81a3      	strh	r3, [r4, #12]
 8001590:	e013      	b.n	80015ba <__ssputs_r+0x82>
 8001592:	462a      	mov	r2, r5
 8001594:	f000 fb7c 	bl	8001c90 <_realloc_r>
 8001598:	4606      	mov	r6, r0
 800159a:	b970      	cbnz	r0, 80015ba <__ssputs_r+0x82>
 800159c:	6921      	ldr	r1, [r4, #16]
 800159e:	4650      	mov	r0, sl
 80015a0:	f000 fade 	bl	8001b60 <_free_r>
 80015a4:	230c      	movs	r3, #12
 80015a6:	f8ca 3000 	str.w	r3, [sl]
 80015aa:	89a3      	ldrh	r3, [r4, #12]
 80015ac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80015b0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80015b4:	81a3      	strh	r3, [r4, #12]
 80015b6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80015ba:	6126      	str	r6, [r4, #16]
 80015bc:	443e      	add	r6, r7
 80015be:	6026      	str	r6, [r4, #0]
 80015c0:	4646      	mov	r6, r8
 80015c2:	6165      	str	r5, [r4, #20]
 80015c4:	1bed      	subs	r5, r5, r7
 80015c6:	60a5      	str	r5, [r4, #8]
 80015c8:	4546      	cmp	r6, r8
 80015ca:	bf28      	it	cs
 80015cc:	4646      	movcs	r6, r8
 80015ce:	4649      	mov	r1, r9
 80015d0:	4632      	mov	r2, r6
 80015d2:	6820      	ldr	r0, [r4, #0]
 80015d4:	f000 faa8 	bl	8001b28 <memmove>
 80015d8:	68a3      	ldr	r3, [r4, #8]
 80015da:	2000      	movs	r0, #0
 80015dc:	1b9b      	subs	r3, r3, r6
 80015de:	60a3      	str	r3, [r4, #8]
 80015e0:	6823      	ldr	r3, [r4, #0]
 80015e2:	441e      	add	r6, r3
 80015e4:	6026      	str	r6, [r4, #0]
 80015e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	...

080015ec <_svfiprintf_r>:
 80015ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80015f0:	b09d      	sub	sp, #116	; 0x74
 80015f2:	9303      	str	r3, [sp, #12]
 80015f4:	898b      	ldrh	r3, [r1, #12]
 80015f6:	4680      	mov	r8, r0
 80015f8:	061c      	lsls	r4, r3, #24
 80015fa:	460d      	mov	r5, r1
 80015fc:	4616      	mov	r6, r2
 80015fe:	d50d      	bpl.n	800161c <_svfiprintf_r+0x30>
 8001600:	690b      	ldr	r3, [r1, #16]
 8001602:	b95b      	cbnz	r3, 800161c <_svfiprintf_r+0x30>
 8001604:	2140      	movs	r1, #64	; 0x40
 8001606:	f000 faef 	bl	8001be8 <_malloc_r>
 800160a:	6028      	str	r0, [r5, #0]
 800160c:	6128      	str	r0, [r5, #16]
 800160e:	b918      	cbnz	r0, 8001618 <_svfiprintf_r+0x2c>
 8001610:	230c      	movs	r3, #12
 8001612:	f8c8 3000 	str.w	r3, [r8]
 8001616:	e0cd      	b.n	80017b4 <_svfiprintf_r+0x1c8>
 8001618:	2340      	movs	r3, #64	; 0x40
 800161a:	616b      	str	r3, [r5, #20]
 800161c:	2300      	movs	r3, #0
 800161e:	9309      	str	r3, [sp, #36]	; 0x24
 8001620:	2320      	movs	r3, #32
 8001622:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
 8001626:	f8df b19c 	ldr.w	fp, [pc, #412]	; 80017c4 <_svfiprintf_r+0x1d8>
 800162a:	2330      	movs	r3, #48	; 0x30
 800162c:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
 8001630:	4637      	mov	r7, r6
 8001632:	463c      	mov	r4, r7
 8001634:	f814 3b01 	ldrb.w	r3, [r4], #1
 8001638:	b91b      	cbnz	r3, 8001642 <_svfiprintf_r+0x56>
 800163a:	ebb7 0906 	subs.w	r9, r7, r6
 800163e:	d010      	beq.n	8001662 <_svfiprintf_r+0x76>
 8001640:	e003      	b.n	800164a <_svfiprintf_r+0x5e>
 8001642:	2b25      	cmp	r3, #37	; 0x25
 8001644:	d0f9      	beq.n	800163a <_svfiprintf_r+0x4e>
 8001646:	4627      	mov	r7, r4
 8001648:	e7f3      	b.n	8001632 <_svfiprintf_r+0x46>
 800164a:	464b      	mov	r3, r9
 800164c:	4632      	mov	r2, r6
 800164e:	4629      	mov	r1, r5
 8001650:	4640      	mov	r0, r8
 8001652:	f7ff ff71 	bl	8001538 <__ssputs_r>
 8001656:	3001      	adds	r0, #1
 8001658:	f000 80a7 	beq.w	80017aa <_svfiprintf_r+0x1be>
 800165c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800165e:	444b      	add	r3, r9
 8001660:	9309      	str	r3, [sp, #36]	; 0x24
 8001662:	783b      	ldrb	r3, [r7, #0]
 8001664:	2b00      	cmp	r3, #0
 8001666:	f000 80a0 	beq.w	80017aa <_svfiprintf_r+0x1be>
 800166a:	2300      	movs	r3, #0
 800166c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001670:	9304      	str	r3, [sp, #16]
 8001672:	9307      	str	r3, [sp, #28]
 8001674:	9205      	str	r2, [sp, #20]
 8001676:	9306      	str	r3, [sp, #24]
 8001678:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
 800167c:	931a      	str	r3, [sp, #104]	; 0x68
 800167e:	2601      	movs	r6, #1
 8001680:	2205      	movs	r2, #5
 8001682:	7821      	ldrb	r1, [r4, #0]
 8001684:	484e      	ldr	r0, [pc, #312]	; (80017c0 <_svfiprintf_r+0x1d4>)
 8001686:	f000 fa41 	bl	8001b0c <memchr>
 800168a:	1c67      	adds	r7, r4, #1
 800168c:	9b04      	ldr	r3, [sp, #16]
 800168e:	b138      	cbz	r0, 80016a0 <_svfiprintf_r+0xb4>
 8001690:	4a4b      	ldr	r2, [pc, #300]	; (80017c0 <_svfiprintf_r+0x1d4>)
 8001692:	463c      	mov	r4, r7
 8001694:	1a80      	subs	r0, r0, r2
 8001696:	fa06 f000 	lsl.w	r0, r6, r0
 800169a:	4318      	orrs	r0, r3
 800169c:	9004      	str	r0, [sp, #16]
 800169e:	e7ef      	b.n	8001680 <_svfiprintf_r+0x94>
 80016a0:	06d9      	lsls	r1, r3, #27
 80016a2:	bf44      	itt	mi
 80016a4:	2220      	movmi	r2, #32
 80016a6:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 80016aa:	071a      	lsls	r2, r3, #28
 80016ac:	bf44      	itt	mi
 80016ae:	222b      	movmi	r2, #43	; 0x2b
 80016b0:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 80016b4:	7822      	ldrb	r2, [r4, #0]
 80016b6:	2a2a      	cmp	r2, #42	; 0x2a
 80016b8:	d003      	beq.n	80016c2 <_svfiprintf_r+0xd6>
 80016ba:	9a07      	ldr	r2, [sp, #28]
 80016bc:	2100      	movs	r1, #0
 80016be:	200a      	movs	r0, #10
 80016c0:	e00b      	b.n	80016da <_svfiprintf_r+0xee>
 80016c2:	9a03      	ldr	r2, [sp, #12]
 80016c4:	1d11      	adds	r1, r2, #4
 80016c6:	6812      	ldr	r2, [r2, #0]
 80016c8:	9103      	str	r1, [sp, #12]
 80016ca:	2a00      	cmp	r2, #0
 80016cc:	da10      	bge.n	80016f0 <_svfiprintf_r+0x104>
 80016ce:	4252      	negs	r2, r2
 80016d0:	f043 0002 	orr.w	r0, r3, #2
 80016d4:	9207      	str	r2, [sp, #28]
 80016d6:	9004      	str	r0, [sp, #16]
 80016d8:	e00b      	b.n	80016f2 <_svfiprintf_r+0x106>
 80016da:	4627      	mov	r7, r4
 80016dc:	783b      	ldrb	r3, [r7, #0]
 80016de:	3401      	adds	r4, #1
 80016e0:	3b30      	subs	r3, #48	; 0x30
 80016e2:	2b09      	cmp	r3, #9
 80016e4:	d803      	bhi.n	80016ee <_svfiprintf_r+0x102>
 80016e6:	fb00 3202 	mla	r2, r0, r2, r3
 80016ea:	2101      	movs	r1, #1
 80016ec:	e7f5      	b.n	80016da <_svfiprintf_r+0xee>
 80016ee:	b101      	cbz	r1, 80016f2 <_svfiprintf_r+0x106>
 80016f0:	9207      	str	r2, [sp, #28]
 80016f2:	783b      	ldrb	r3, [r7, #0]
 80016f4:	2b2e      	cmp	r3, #46	; 0x2e
 80016f6:	d11e      	bne.n	8001736 <_svfiprintf_r+0x14a>
 80016f8:	787b      	ldrb	r3, [r7, #1]
 80016fa:	2b2a      	cmp	r3, #42	; 0x2a
 80016fc:	d10a      	bne.n	8001714 <_svfiprintf_r+0x128>
 80016fe:	9b03      	ldr	r3, [sp, #12]
 8001700:	3702      	adds	r7, #2
 8001702:	1d1a      	adds	r2, r3, #4
 8001704:	681b      	ldr	r3, [r3, #0]
 8001706:	9203      	str	r2, [sp, #12]
 8001708:	2b00      	cmp	r3, #0
 800170a:	bfb8      	it	lt
 800170c:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
 8001710:	9305      	str	r3, [sp, #20]
 8001712:	e010      	b.n	8001736 <_svfiprintf_r+0x14a>
 8001714:	2300      	movs	r3, #0
 8001716:	4619      	mov	r1, r3
 8001718:	9305      	str	r3, [sp, #20]
 800171a:	1c78      	adds	r0, r7, #1
 800171c:	240a      	movs	r4, #10
 800171e:	4607      	mov	r7, r0
 8001720:	783a      	ldrb	r2, [r7, #0]
 8001722:	3001      	adds	r0, #1
 8001724:	3a30      	subs	r2, #48	; 0x30
 8001726:	2a09      	cmp	r2, #9
 8001728:	d803      	bhi.n	8001732 <_svfiprintf_r+0x146>
 800172a:	fb04 2101 	mla	r1, r4, r1, r2
 800172e:	2301      	movs	r3, #1
 8001730:	e7f5      	b.n	800171e <_svfiprintf_r+0x132>
 8001732:	b103      	cbz	r3, 8001736 <_svfiprintf_r+0x14a>
 8001734:	9105      	str	r1, [sp, #20]
 8001736:	2203      	movs	r2, #3
 8001738:	7839      	ldrb	r1, [r7, #0]
 800173a:	4822      	ldr	r0, [pc, #136]	; (80017c4 <_svfiprintf_r+0x1d8>)
 800173c:	f000 f9e6 	bl	8001b0c <memchr>
 8001740:	b140      	cbz	r0, 8001754 <_svfiprintf_r+0x168>
 8001742:	2340      	movs	r3, #64	; 0x40
 8001744:	ebcb 0000 	rsb	r0, fp, r0
 8001748:	fa03 f000 	lsl.w	r0, r3, r0
 800174c:	9b04      	ldr	r3, [sp, #16]
 800174e:	3701      	adds	r7, #1
 8001750:	4318      	orrs	r0, r3
 8001752:	9004      	str	r0, [sp, #16]
 8001754:	7839      	ldrb	r1, [r7, #0]
 8001756:	2206      	movs	r2, #6
 8001758:	481b      	ldr	r0, [pc, #108]	; (80017c8 <_svfiprintf_r+0x1dc>)
 800175a:	1c7e      	adds	r6, r7, #1
 800175c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
 8001760:	f000 f9d4 	bl	8001b0c <memchr>
 8001764:	b188      	cbz	r0, 800178a <_svfiprintf_r+0x19e>
 8001766:	4b19      	ldr	r3, [pc, #100]	; (80017cc <_svfiprintf_r+0x1e0>)
 8001768:	b933      	cbnz	r3, 8001778 <_svfiprintf_r+0x18c>
 800176a:	9b03      	ldr	r3, [sp, #12]
 800176c:	3307      	adds	r3, #7
 800176e:	f023 0307 	bic.w	r3, r3, #7
 8001772:	3308      	adds	r3, #8
 8001774:	9303      	str	r3, [sp, #12]
 8001776:	e014      	b.n	80017a2 <_svfiprintf_r+0x1b6>
 8001778:	ab03      	add	r3, sp, #12
 800177a:	9300      	str	r3, [sp, #0]
 800177c:	462a      	mov	r2, r5
 800177e:	4b14      	ldr	r3, [pc, #80]	; (80017d0 <_svfiprintf_r+0x1e4>)
 8001780:	a904      	add	r1, sp, #16
 8001782:	4640      	mov	r0, r8
 8001784:	f3af 8000 	nop.w
 8001788:	e007      	b.n	800179a <_svfiprintf_r+0x1ae>
 800178a:	ab03      	add	r3, sp, #12
 800178c:	9300      	str	r3, [sp, #0]
 800178e:	462a      	mov	r2, r5
 8001790:	4b0f      	ldr	r3, [pc, #60]	; (80017d0 <_svfiprintf_r+0x1e4>)
 8001792:	a904      	add	r1, sp, #16
 8001794:	4640      	mov	r0, r8
 8001796:	f000 f893 	bl	80018c0 <_printf_i>
 800179a:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800179e:	4682      	mov	sl, r0
 80017a0:	d003      	beq.n	80017aa <_svfiprintf_r+0x1be>
 80017a2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80017a4:	4453      	add	r3, sl
 80017a6:	9309      	str	r3, [sp, #36]	; 0x24
 80017a8:	e742      	b.n	8001630 <_svfiprintf_r+0x44>
 80017aa:	89ab      	ldrh	r3, [r5, #12]
 80017ac:	065b      	lsls	r3, r3, #25
 80017ae:	d401      	bmi.n	80017b4 <_svfiprintf_r+0x1c8>
 80017b0:	9809      	ldr	r0, [sp, #36]	; 0x24
 80017b2:	e001      	b.n	80017b8 <_svfiprintf_r+0x1cc>
 80017b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80017b8:	b01d      	add	sp, #116	; 0x74
 80017ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80017be:	bf00      	nop
 80017c0:	08001e3f 	.word	0x08001e3f
 80017c4:	08001e45 	.word	0x08001e45
 80017c8:	08001e49 	.word	0x08001e49
 80017cc:	00000000 	.word	0x00000000
 80017d0:	08001539 	.word	0x08001539

080017d4 <_printf_common>:
 80017d4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80017d8:	4691      	mov	r9, r2
 80017da:	461f      	mov	r7, r3
 80017dc:	690a      	ldr	r2, [r1, #16]
 80017de:	688b      	ldr	r3, [r1, #8]
 80017e0:	4606      	mov	r6, r0
 80017e2:	4293      	cmp	r3, r2
 80017e4:	bfb8      	it	lt
 80017e6:	4613      	movlt	r3, r2
 80017e8:	f8c9 3000 	str.w	r3, [r9]
 80017ec:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
 80017f0:	460c      	mov	r4, r1
 80017f2:	f8dd 8020 	ldr.w	r8, [sp, #32]
 80017f6:	b112      	cbz	r2, 80017fe <_printf_common+0x2a>
 80017f8:	3301      	adds	r3, #1
 80017fa:	f8c9 3000 	str.w	r3, [r9]
 80017fe:	6823      	ldr	r3, [r4, #0]
 8001800:	0699      	lsls	r1, r3, #26
 8001802:	bf42      	ittt	mi
 8001804:	f8d9 3000 	ldrmi.w	r3, [r9]
 8001808:	3302      	addmi	r3, #2
 800180a:	f8c9 3000 	strmi.w	r3, [r9]
 800180e:	6825      	ldr	r5, [r4, #0]
 8001810:	f015 0506 	ands.w	r5, r5, #6
 8001814:	d110      	bne.n	8001838 <_printf_common+0x64>
 8001816:	f104 0a19 	add.w	sl, r4, #25
 800181a:	e007      	b.n	800182c <_printf_common+0x58>
 800181c:	2301      	movs	r3, #1
 800181e:	4652      	mov	r2, sl
 8001820:	4639      	mov	r1, r7
 8001822:	4630      	mov	r0, r6
 8001824:	47c0      	blx	r8
 8001826:	3001      	adds	r0, #1
 8001828:	d01a      	beq.n	8001860 <_printf_common+0x8c>
 800182a:	3501      	adds	r5, #1
 800182c:	68e3      	ldr	r3, [r4, #12]
 800182e:	f8d9 2000 	ldr.w	r2, [r9]
 8001832:	1a9b      	subs	r3, r3, r2
 8001834:	429d      	cmp	r5, r3
 8001836:	dbf1      	blt.n	800181c <_printf_common+0x48>
 8001838:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 800183c:	6822      	ldr	r2, [r4, #0]
 800183e:	3300      	adds	r3, #0
 8001840:	bf18      	it	ne
 8001842:	2301      	movne	r3, #1
 8001844:	0692      	lsls	r2, r2, #26
 8001846:	d50f      	bpl.n	8001868 <_printf_common+0x94>
 8001848:	18e1      	adds	r1, r4, r3
 800184a:	2030      	movs	r0, #48	; 0x30
 800184c:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
 8001850:	1c5a      	adds	r2, r3, #1
 8001852:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
 8001856:	4422      	add	r2, r4
 8001858:	3302      	adds	r3, #2
 800185a:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
 800185e:	e003      	b.n	8001868 <_printf_common+0x94>
 8001860:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001864:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001868:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800186c:	4639      	mov	r1, r7
 800186e:	4630      	mov	r0, r6
 8001870:	47c0      	blx	r8
 8001872:	3001      	adds	r0, #1
 8001874:	d0f4      	beq.n	8001860 <_printf_common+0x8c>
 8001876:	6822      	ldr	r2, [r4, #0]
 8001878:	f8d9 5000 	ldr.w	r5, [r9]
 800187c:	68e3      	ldr	r3, [r4, #12]
 800187e:	f002 0206 	and.w	r2, r2, #6
 8001882:	2a04      	cmp	r2, #4
 8001884:	bf08      	it	eq
 8001886:	1b5d      	subeq	r5, r3, r5
 8001888:	6922      	ldr	r2, [r4, #16]
 800188a:	68a3      	ldr	r3, [r4, #8]
 800188c:	bf0c      	ite	eq
 800188e:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 8001892:	2500      	movne	r5, #0
 8001894:	4293      	cmp	r3, r2
 8001896:	bfc4      	itt	gt
 8001898:	1a9b      	subgt	r3, r3, r2
 800189a:	18ed      	addgt	r5, r5, r3
 800189c:	f04f 0900 	mov.w	r9, #0
 80018a0:	341a      	adds	r4, #26
 80018a2:	454d      	cmp	r5, r9
 80018a4:	d009      	beq.n	80018ba <_printf_common+0xe6>
 80018a6:	2301      	movs	r3, #1
 80018a8:	4622      	mov	r2, r4
 80018aa:	4639      	mov	r1, r7
 80018ac:	4630      	mov	r0, r6
 80018ae:	47c0      	blx	r8
 80018b0:	3001      	adds	r0, #1
 80018b2:	d0d5      	beq.n	8001860 <_printf_common+0x8c>
 80018b4:	f109 0901 	add.w	r9, r9, #1
 80018b8:	e7f3      	b.n	80018a2 <_printf_common+0xce>
 80018ba:	2000      	movs	r0, #0
 80018bc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080018c0 <_printf_i>:
 80018c0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80018c4:	4617      	mov	r7, r2
 80018c6:	7e0a      	ldrb	r2, [r1, #24]
 80018c8:	b085      	sub	sp, #20
 80018ca:	2a6e      	cmp	r2, #110	; 0x6e
 80018cc:	4698      	mov	r8, r3
 80018ce:	4606      	mov	r6, r0
 80018d0:	460c      	mov	r4, r1
 80018d2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80018d4:	f101 0e43 	add.w	lr, r1, #67	; 0x43
 80018d8:	f000 80ae 	beq.w	8001a38 <_printf_i+0x178>
 80018dc:	d811      	bhi.n	8001902 <_printf_i+0x42>
 80018de:	2a63      	cmp	r2, #99	; 0x63
 80018e0:	d022      	beq.n	8001928 <_printf_i+0x68>
 80018e2:	d809      	bhi.n	80018f8 <_printf_i+0x38>
 80018e4:	2a00      	cmp	r2, #0
 80018e6:	f000 80bb 	beq.w	8001a60 <_printf_i+0x1a0>
 80018ea:	2a58      	cmp	r2, #88	; 0x58
 80018ec:	f040 80ca 	bne.w	8001a84 <_printf_i+0x1c4>
 80018f0:	f881 2045 	strb.w	r2, [r1, #69]	; 0x45
 80018f4:	4983      	ldr	r1, [pc, #524]	; (8001b04 <_printf_i+0x244>)
 80018f6:	e055      	b.n	80019a4 <_printf_i+0xe4>
 80018f8:	2a64      	cmp	r2, #100	; 0x64
 80018fa:	d01e      	beq.n	800193a <_printf_i+0x7a>
 80018fc:	2a69      	cmp	r2, #105	; 0x69
 80018fe:	d01c      	beq.n	800193a <_printf_i+0x7a>
 8001900:	e0c0      	b.n	8001a84 <_printf_i+0x1c4>
 8001902:	2a73      	cmp	r2, #115	; 0x73
 8001904:	f000 80b0 	beq.w	8001a68 <_printf_i+0x1a8>
 8001908:	d809      	bhi.n	800191e <_printf_i+0x5e>
 800190a:	2a6f      	cmp	r2, #111	; 0x6f
 800190c:	d02e      	beq.n	800196c <_printf_i+0xac>
 800190e:	2a70      	cmp	r2, #112	; 0x70
 8001910:	f040 80b8 	bne.w	8001a84 <_printf_i+0x1c4>
 8001914:	680a      	ldr	r2, [r1, #0]
 8001916:	f042 0220 	orr.w	r2, r2, #32
 800191a:	600a      	str	r2, [r1, #0]
 800191c:	e03e      	b.n	800199c <_printf_i+0xdc>
 800191e:	2a75      	cmp	r2, #117	; 0x75
 8001920:	d024      	beq.n	800196c <_printf_i+0xac>
 8001922:	2a78      	cmp	r2, #120	; 0x78
 8001924:	d03a      	beq.n	800199c <_printf_i+0xdc>
 8001926:	e0ad      	b.n	8001a84 <_printf_i+0x1c4>
 8001928:	681a      	ldr	r2, [r3, #0]
 800192a:	f101 0542 	add.w	r5, r1, #66	; 0x42
 800192e:	1d11      	adds	r1, r2, #4
 8001930:	6019      	str	r1, [r3, #0]
 8001932:	6813      	ldr	r3, [r2, #0]
 8001934:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8001938:	e0a8      	b.n	8001a8c <_printf_i+0x1cc>
 800193a:	6821      	ldr	r1, [r4, #0]
 800193c:	681a      	ldr	r2, [r3, #0]
 800193e:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001942:	d002      	beq.n	800194a <_printf_i+0x8a>
 8001944:	1d11      	adds	r1, r2, #4
 8001946:	6019      	str	r1, [r3, #0]
 8001948:	e008      	b.n	800195c <_printf_i+0x9c>
 800194a:	f011 0f40 	tst.w	r1, #64	; 0x40
 800194e:	f102 0104 	add.w	r1, r2, #4
 8001952:	6019      	str	r1, [r3, #0]
 8001954:	d002      	beq.n	800195c <_printf_i+0x9c>
 8001956:	f9b2 3000 	ldrsh.w	r3, [r2]
 800195a:	e000      	b.n	800195e <_printf_i+0x9e>
 800195c:	6813      	ldr	r3, [r2, #0]
 800195e:	2b00      	cmp	r3, #0
 8001960:	da3c      	bge.n	80019dc <_printf_i+0x11c>
 8001962:	222d      	movs	r2, #45	; 0x2d
 8001964:	425b      	negs	r3, r3
 8001966:	f884 2043 	strb.w	r2, [r4, #67]	; 0x43
 800196a:	e037      	b.n	80019dc <_printf_i+0x11c>
 800196c:	6821      	ldr	r1, [r4, #0]
 800196e:	681a      	ldr	r2, [r3, #0]
 8001970:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001974:	d002      	beq.n	800197c <_printf_i+0xbc>
 8001976:	1d11      	adds	r1, r2, #4
 8001978:	6019      	str	r1, [r3, #0]
 800197a:	e007      	b.n	800198c <_printf_i+0xcc>
 800197c:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001980:	f102 0104 	add.w	r1, r2, #4
 8001984:	6019      	str	r1, [r3, #0]
 8001986:	d001      	beq.n	800198c <_printf_i+0xcc>
 8001988:	8813      	ldrh	r3, [r2, #0]
 800198a:	e000      	b.n	800198e <_printf_i+0xce>
 800198c:	6813      	ldr	r3, [r2, #0]
 800198e:	7e22      	ldrb	r2, [r4, #24]
 8001990:	495c      	ldr	r1, [pc, #368]	; (8001b04 <_printf_i+0x244>)
 8001992:	2a6f      	cmp	r2, #111	; 0x6f
 8001994:	bf14      	ite	ne
 8001996:	220a      	movne	r2, #10
 8001998:	2208      	moveq	r2, #8
 800199a:	e01b      	b.n	80019d4 <_printf_i+0x114>
 800199c:	2278      	movs	r2, #120	; 0x78
 800199e:	495a      	ldr	r1, [pc, #360]	; (8001b08 <_printf_i+0x248>)
 80019a0:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
 80019a4:	6822      	ldr	r2, [r4, #0]
 80019a6:	6818      	ldr	r0, [r3, #0]
 80019a8:	f012 0f80 	tst.w	r2, #128	; 0x80
 80019ac:	f100 0504 	add.w	r5, r0, #4
 80019b0:	601d      	str	r5, [r3, #0]
 80019b2:	d103      	bne.n	80019bc <_printf_i+0xfc>
 80019b4:	0655      	lsls	r5, r2, #25
 80019b6:	d501      	bpl.n	80019bc <_printf_i+0xfc>
 80019b8:	8803      	ldrh	r3, [r0, #0]
 80019ba:	e000      	b.n	80019be <_printf_i+0xfe>
 80019bc:	6803      	ldr	r3, [r0, #0]
 80019be:	07d0      	lsls	r0, r2, #31
 80019c0:	bf44      	itt	mi
 80019c2:	f042 0220 	orrmi.w	r2, r2, #32
 80019c6:	6022      	strmi	r2, [r4, #0]
 80019c8:	b91b      	cbnz	r3, 80019d2 <_printf_i+0x112>
 80019ca:	6822      	ldr	r2, [r4, #0]
 80019cc:	f022 0220 	bic.w	r2, r2, #32
 80019d0:	6022      	str	r2, [r4, #0]
 80019d2:	2210      	movs	r2, #16
 80019d4:	2000      	movs	r0, #0
 80019d6:	f884 0043 	strb.w	r0, [r4, #67]	; 0x43
 80019da:	e001      	b.n	80019e0 <_printf_i+0x120>
 80019dc:	4949      	ldr	r1, [pc, #292]	; (8001b04 <_printf_i+0x244>)
 80019de:	220a      	movs	r2, #10
 80019e0:	6865      	ldr	r5, [r4, #4]
 80019e2:	2d00      	cmp	r5, #0
 80019e4:	60a5      	str	r5, [r4, #8]
 80019e6:	db08      	blt.n	80019fa <_printf_i+0x13a>
 80019e8:	6820      	ldr	r0, [r4, #0]
 80019ea:	f020 0004 	bic.w	r0, r0, #4
 80019ee:	6020      	str	r0, [r4, #0]
 80019f0:	b92b      	cbnz	r3, 80019fe <_printf_i+0x13e>
 80019f2:	2d00      	cmp	r5, #0
 80019f4:	d17d      	bne.n	8001af2 <_printf_i+0x232>
 80019f6:	4675      	mov	r5, lr
 80019f8:	e00c      	b.n	8001a14 <_printf_i+0x154>
 80019fa:	2b00      	cmp	r3, #0
 80019fc:	d079      	beq.n	8001af2 <_printf_i+0x232>
 80019fe:	4675      	mov	r5, lr
 8001a00:	fbb3 f0f2 	udiv	r0, r3, r2
 8001a04:	fb02 3310 	mls	r3, r2, r0, r3
 8001a08:	5ccb      	ldrb	r3, [r1, r3]
 8001a0a:	f805 3d01 	strb.w	r3, [r5, #-1]!
 8001a0e:	4603      	mov	r3, r0
 8001a10:	2800      	cmp	r0, #0
 8001a12:	d1f5      	bne.n	8001a00 <_printf_i+0x140>
 8001a14:	2a08      	cmp	r2, #8
 8001a16:	d10b      	bne.n	8001a30 <_printf_i+0x170>
 8001a18:	6823      	ldr	r3, [r4, #0]
 8001a1a:	07da      	lsls	r2, r3, #31
 8001a1c:	d508      	bpl.n	8001a30 <_printf_i+0x170>
 8001a1e:	6923      	ldr	r3, [r4, #16]
 8001a20:	6862      	ldr	r2, [r4, #4]
 8001a22:	429a      	cmp	r2, r3
 8001a24:	bfde      	ittt	le
 8001a26:	2330      	movle	r3, #48	; 0x30
 8001a28:	f805 3c01 	strble.w	r3, [r5, #-1]
 8001a2c:	f105 35ff 	addle.w	r5, r5, #4294967295	; 0xffffffff
 8001a30:	ebc5 030e 	rsb	r3, r5, lr
 8001a34:	6123      	str	r3, [r4, #16]
 8001a36:	e02e      	b.n	8001a96 <_printf_i+0x1d6>
 8001a38:	6808      	ldr	r0, [r1, #0]
 8001a3a:	681a      	ldr	r2, [r3, #0]
 8001a3c:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001a40:	6949      	ldr	r1, [r1, #20]
 8001a42:	d003      	beq.n	8001a4c <_printf_i+0x18c>
 8001a44:	1d10      	adds	r0, r2, #4
 8001a46:	6018      	str	r0, [r3, #0]
 8001a48:	6813      	ldr	r3, [r2, #0]
 8001a4a:	e008      	b.n	8001a5e <_printf_i+0x19e>
 8001a4c:	f010 0f40 	tst.w	r0, #64	; 0x40
 8001a50:	f102 0004 	add.w	r0, r2, #4
 8001a54:	6018      	str	r0, [r3, #0]
 8001a56:	6813      	ldr	r3, [r2, #0]
 8001a58:	d001      	beq.n	8001a5e <_printf_i+0x19e>
 8001a5a:	8019      	strh	r1, [r3, #0]
 8001a5c:	e000      	b.n	8001a60 <_printf_i+0x1a0>
 8001a5e:	6019      	str	r1, [r3, #0]
 8001a60:	2300      	movs	r3, #0
 8001a62:	6123      	str	r3, [r4, #16]
 8001a64:	4675      	mov	r5, lr
 8001a66:	e016      	b.n	8001a96 <_printf_i+0x1d6>
 8001a68:	681a      	ldr	r2, [r3, #0]
 8001a6a:	1d11      	adds	r1, r2, #4
 8001a6c:	6019      	str	r1, [r3, #0]
 8001a6e:	6815      	ldr	r5, [r2, #0]
 8001a70:	2100      	movs	r1, #0
 8001a72:	6862      	ldr	r2, [r4, #4]
 8001a74:	4628      	mov	r0, r5
 8001a76:	f000 f849 	bl	8001b0c <memchr>
 8001a7a:	b108      	cbz	r0, 8001a80 <_printf_i+0x1c0>
 8001a7c:	1b40      	subs	r0, r0, r5
 8001a7e:	6060      	str	r0, [r4, #4]
 8001a80:	6863      	ldr	r3, [r4, #4]
 8001a82:	e004      	b.n	8001a8e <_printf_i+0x1ce>
 8001a84:	f104 0542 	add.w	r5, r4, #66	; 0x42
 8001a88:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 8001a8c:	2301      	movs	r3, #1
 8001a8e:	6123      	str	r3, [r4, #16]
 8001a90:	2300      	movs	r3, #0
 8001a92:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8001a96:	f8cd 8000 	str.w	r8, [sp]
 8001a9a:	463b      	mov	r3, r7
 8001a9c:	aa03      	add	r2, sp, #12
 8001a9e:	4621      	mov	r1, r4
 8001aa0:	4630      	mov	r0, r6
 8001aa2:	f7ff fe97 	bl	80017d4 <_printf_common>
 8001aa6:	3001      	adds	r0, #1
 8001aa8:	d102      	bne.n	8001ab0 <_printf_i+0x1f0>
 8001aaa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001aae:	e026      	b.n	8001afe <_printf_i+0x23e>
 8001ab0:	6923      	ldr	r3, [r4, #16]
 8001ab2:	462a      	mov	r2, r5
 8001ab4:	4639      	mov	r1, r7
 8001ab6:	4630      	mov	r0, r6
 8001ab8:	47c0      	blx	r8
 8001aba:	3001      	adds	r0, #1
 8001abc:	d0f5      	beq.n	8001aaa <_printf_i+0x1ea>
 8001abe:	6823      	ldr	r3, [r4, #0]
 8001ac0:	079b      	lsls	r3, r3, #30
 8001ac2:	d510      	bpl.n	8001ae6 <_printf_i+0x226>
 8001ac4:	2500      	movs	r5, #0
 8001ac6:	f104 0919 	add.w	r9, r4, #25
 8001aca:	e007      	b.n	8001adc <_printf_i+0x21c>
 8001acc:	2301      	movs	r3, #1
 8001ace:	464a      	mov	r2, r9
 8001ad0:	4639      	mov	r1, r7
 8001ad2:	4630      	mov	r0, r6
 8001ad4:	47c0      	blx	r8
 8001ad6:	3001      	adds	r0, #1
 8001ad8:	d0e7      	beq.n	8001aaa <_printf_i+0x1ea>
 8001ada:	3501      	adds	r5, #1
 8001adc:	68e3      	ldr	r3, [r4, #12]
 8001ade:	9a03      	ldr	r2, [sp, #12]
 8001ae0:	1a9b      	subs	r3, r3, r2
 8001ae2:	429d      	cmp	r5, r3
 8001ae4:	dbf2      	blt.n	8001acc <_printf_i+0x20c>
 8001ae6:	68e0      	ldr	r0, [r4, #12]
 8001ae8:	9b03      	ldr	r3, [sp, #12]
 8001aea:	4298      	cmp	r0, r3
 8001aec:	bfb8      	it	lt
 8001aee:	4618      	movlt	r0, r3
 8001af0:	e005      	b.n	8001afe <_printf_i+0x23e>
 8001af2:	780b      	ldrb	r3, [r1, #0]
 8001af4:	f104 0542 	add.w	r5, r4, #66	; 0x42
 8001af8:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8001afc:	e78a      	b.n	8001a14 <_printf_i+0x154>
 8001afe:	b005      	add	sp, #20
 8001b00:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001b04:	08001e50 	.word	0x08001e50
 8001b08:	08001e61 	.word	0x08001e61

08001b0c <memchr>:
 8001b0c:	b510      	push	{r4, lr}
 8001b0e:	b2c9      	uxtb	r1, r1
 8001b10:	4402      	add	r2, r0
 8001b12:	4290      	cmp	r0, r2
 8001b14:	4603      	mov	r3, r0
 8001b16:	d005      	beq.n	8001b24 <memchr+0x18>
 8001b18:	781c      	ldrb	r4, [r3, #0]
 8001b1a:	3001      	adds	r0, #1
 8001b1c:	428c      	cmp	r4, r1
 8001b1e:	d1f8      	bne.n	8001b12 <memchr+0x6>
 8001b20:	4618      	mov	r0, r3
 8001b22:	bd10      	pop	{r4, pc}
 8001b24:	2000      	movs	r0, #0
 8001b26:	bd10      	pop	{r4, pc}

08001b28 <memmove>:
 8001b28:	4288      	cmp	r0, r1
 8001b2a:	b510      	push	{r4, lr}
 8001b2c:	eb01 0302 	add.w	r3, r1, r2
 8001b30:	d801      	bhi.n	8001b36 <memmove+0xe>
 8001b32:	1e42      	subs	r2, r0, #1
 8001b34:	e00b      	b.n	8001b4e <memmove+0x26>
 8001b36:	4298      	cmp	r0, r3
 8001b38:	d2fb      	bcs.n	8001b32 <memmove+0xa>
 8001b3a:	1881      	adds	r1, r0, r2
 8001b3c:	1ad2      	subs	r2, r2, r3
 8001b3e:	42d3      	cmn	r3, r2
 8001b40:	d004      	beq.n	8001b4c <memmove+0x24>
 8001b42:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8001b46:	f801 4d01 	strb.w	r4, [r1, #-1]!
 8001b4a:	e7f8      	b.n	8001b3e <memmove+0x16>
 8001b4c:	bd10      	pop	{r4, pc}
 8001b4e:	4299      	cmp	r1, r3
 8001b50:	d004      	beq.n	8001b5c <memmove+0x34>
 8001b52:	f811 4b01 	ldrb.w	r4, [r1], #1
 8001b56:	f802 4f01 	strb.w	r4, [r2, #1]!
 8001b5a:	e7f8      	b.n	8001b4e <memmove+0x26>
 8001b5c:	bd10      	pop	{r4, pc}
	...

08001b60 <_free_r>:
 8001b60:	b530      	push	{r4, r5, lr}
 8001b62:	2900      	cmp	r1, #0
 8001b64:	d03c      	beq.n	8001be0 <_free_r+0x80>
 8001b66:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001b6a:	1f0b      	subs	r3, r1, #4
 8001b6c:	491d      	ldr	r1, [pc, #116]	; (8001be4 <_free_r+0x84>)
 8001b6e:	2a00      	cmp	r2, #0
 8001b70:	bfb8      	it	lt
 8001b72:	189b      	addlt	r3, r3, r2
 8001b74:	680a      	ldr	r2, [r1, #0]
 8001b76:	460c      	mov	r4, r1
 8001b78:	b912      	cbnz	r2, 8001b80 <_free_r+0x20>
 8001b7a:	605a      	str	r2, [r3, #4]
 8001b7c:	600b      	str	r3, [r1, #0]
 8001b7e:	bd30      	pop	{r4, r5, pc}
 8001b80:	429a      	cmp	r2, r3
 8001b82:	d90d      	bls.n	8001ba0 <_free_r+0x40>
 8001b84:	6819      	ldr	r1, [r3, #0]
 8001b86:	1858      	adds	r0, r3, r1
 8001b88:	4282      	cmp	r2, r0
 8001b8a:	bf01      	itttt	eq
 8001b8c:	6810      	ldreq	r0, [r2, #0]
 8001b8e:	6852      	ldreq	r2, [r2, #4]
 8001b90:	1809      	addeq	r1, r1, r0
 8001b92:	6019      	streq	r1, [r3, #0]
 8001b94:	605a      	str	r2, [r3, #4]
 8001b96:	6023      	str	r3, [r4, #0]
 8001b98:	bd30      	pop	{r4, r5, pc}
 8001b9a:	4299      	cmp	r1, r3
 8001b9c:	d803      	bhi.n	8001ba6 <_free_r+0x46>
 8001b9e:	460a      	mov	r2, r1
 8001ba0:	6851      	ldr	r1, [r2, #4]
 8001ba2:	2900      	cmp	r1, #0
 8001ba4:	d1f9      	bne.n	8001b9a <_free_r+0x3a>
 8001ba6:	6814      	ldr	r4, [r2, #0]
 8001ba8:	1915      	adds	r5, r2, r4
 8001baa:	429d      	cmp	r5, r3
 8001bac:	d10a      	bne.n	8001bc4 <_free_r+0x64>
 8001bae:	681b      	ldr	r3, [r3, #0]
 8001bb0:	4423      	add	r3, r4
 8001bb2:	18d0      	adds	r0, r2, r3
 8001bb4:	4281      	cmp	r1, r0
 8001bb6:	6013      	str	r3, [r2, #0]
 8001bb8:	d112      	bne.n	8001be0 <_free_r+0x80>
 8001bba:	6808      	ldr	r0, [r1, #0]
 8001bbc:	4403      	add	r3, r0
 8001bbe:	6013      	str	r3, [r2, #0]
 8001bc0:	684b      	ldr	r3, [r1, #4]
 8001bc2:	e00c      	b.n	8001bde <_free_r+0x7e>
 8001bc4:	d902      	bls.n	8001bcc <_free_r+0x6c>
 8001bc6:	230c      	movs	r3, #12
 8001bc8:	6003      	str	r3, [r0, #0]
 8001bca:	bd30      	pop	{r4, r5, pc}
 8001bcc:	6818      	ldr	r0, [r3, #0]
 8001bce:	181c      	adds	r4, r3, r0
 8001bd0:	42a1      	cmp	r1, r4
 8001bd2:	bf01      	itttt	eq
 8001bd4:	680c      	ldreq	r4, [r1, #0]
 8001bd6:	6849      	ldreq	r1, [r1, #4]
 8001bd8:	1900      	addeq	r0, r0, r4
 8001bda:	6018      	streq	r0, [r3, #0]
 8001bdc:	6059      	str	r1, [r3, #4]
 8001bde:	6053      	str	r3, [r2, #4]
 8001be0:	bd30      	pop	{r4, r5, pc}
 8001be2:	bf00      	nop
 8001be4:	2000134c 	.word	0x2000134c

08001be8 <_malloc_r>:
 8001be8:	b570      	push	{r4, r5, r6, lr}
 8001bea:	1ccd      	adds	r5, r1, #3
 8001bec:	f025 0503 	bic.w	r5, r5, #3
 8001bf0:	3508      	adds	r5, #8
 8001bf2:	2d0c      	cmp	r5, #12
 8001bf4:	bf38      	it	cc
 8001bf6:	250c      	movcc	r5, #12
 8001bf8:	2d00      	cmp	r5, #0
 8001bfa:	4606      	mov	r6, r0
 8001bfc:	da03      	bge.n	8001c06 <_malloc_r+0x1e>
 8001bfe:	230c      	movs	r3, #12
 8001c00:	6033      	str	r3, [r6, #0]
 8001c02:	2000      	movs	r0, #0
 8001c04:	bd70      	pop	{r4, r5, r6, pc}
 8001c06:	42a9      	cmp	r1, r5
 8001c08:	d8f9      	bhi.n	8001bfe <_malloc_r+0x16>
 8001c0a:	4b1f      	ldr	r3, [pc, #124]	; (8001c88 <_malloc_r+0xa0>)
 8001c0c:	681c      	ldr	r4, [r3, #0]
 8001c0e:	461a      	mov	r2, r3
 8001c10:	4621      	mov	r1, r4
 8001c12:	b1a1      	cbz	r1, 8001c3e <_malloc_r+0x56>
 8001c14:	680b      	ldr	r3, [r1, #0]
 8001c16:	1b5b      	subs	r3, r3, r5
 8001c18:	d40e      	bmi.n	8001c38 <_malloc_r+0x50>
 8001c1a:	2b0b      	cmp	r3, #11
 8001c1c:	d903      	bls.n	8001c26 <_malloc_r+0x3e>
 8001c1e:	600b      	str	r3, [r1, #0]
 8001c20:	18cc      	adds	r4, r1, r3
 8001c22:	50cd      	str	r5, [r1, r3]
 8001c24:	e01e      	b.n	8001c64 <_malloc_r+0x7c>
 8001c26:	428c      	cmp	r4, r1
 8001c28:	bf0b      	itete	eq
 8001c2a:	6863      	ldreq	r3, [r4, #4]
 8001c2c:	684b      	ldrne	r3, [r1, #4]
 8001c2e:	6013      	streq	r3, [r2, #0]
 8001c30:	6063      	strne	r3, [r4, #4]
 8001c32:	bf18      	it	ne
 8001c34:	460c      	movne	r4, r1
 8001c36:	e015      	b.n	8001c64 <_malloc_r+0x7c>
 8001c38:	460c      	mov	r4, r1
 8001c3a:	6849      	ldr	r1, [r1, #4]
 8001c3c:	e7e9      	b.n	8001c12 <_malloc_r+0x2a>
 8001c3e:	4c13      	ldr	r4, [pc, #76]	; (8001c8c <_malloc_r+0xa4>)
 8001c40:	6823      	ldr	r3, [r4, #0]
 8001c42:	b91b      	cbnz	r3, 8001c4c <_malloc_r+0x64>
 8001c44:	4630      	mov	r0, r6
 8001c46:	f000 f849 	bl	8001cdc <_sbrk_r>
 8001c4a:	6020      	str	r0, [r4, #0]
 8001c4c:	4629      	mov	r1, r5
 8001c4e:	4630      	mov	r0, r6
 8001c50:	f000 f844 	bl	8001cdc <_sbrk_r>
 8001c54:	1c43      	adds	r3, r0, #1
 8001c56:	d0d2      	beq.n	8001bfe <_malloc_r+0x16>
 8001c58:	1cc4      	adds	r4, r0, #3
 8001c5a:	f024 0403 	bic.w	r4, r4, #3
 8001c5e:	42a0      	cmp	r0, r4
 8001c60:	d10a      	bne.n	8001c78 <_malloc_r+0x90>
 8001c62:	6025      	str	r5, [r4, #0]
 8001c64:	f104 000b 	add.w	r0, r4, #11
 8001c68:	1d23      	adds	r3, r4, #4
 8001c6a:	f020 0007 	bic.w	r0, r0, #7
 8001c6e:	1ac3      	subs	r3, r0, r3
 8001c70:	d009      	beq.n	8001c86 <_malloc_r+0x9e>
 8001c72:	425a      	negs	r2, r3
 8001c74:	50e2      	str	r2, [r4, r3]
 8001c76:	bd70      	pop	{r4, r5, r6, pc}
 8001c78:	1a21      	subs	r1, r4, r0
 8001c7a:	4630      	mov	r0, r6
 8001c7c:	f000 f82e 	bl	8001cdc <_sbrk_r>
 8001c80:	3001      	adds	r0, #1
 8001c82:	d1ee      	bne.n	8001c62 <_malloc_r+0x7a>
 8001c84:	e7bb      	b.n	8001bfe <_malloc_r+0x16>
 8001c86:	bd70      	pop	{r4, r5, r6, pc}
 8001c88:	2000134c 	.word	0x2000134c
 8001c8c:	20001348 	.word	0x20001348

08001c90 <_realloc_r>:
 8001c90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001c92:	4607      	mov	r7, r0
 8001c94:	4615      	mov	r5, r2
 8001c96:	460e      	mov	r6, r1
 8001c98:	b921      	cbnz	r1, 8001ca4 <_realloc_r+0x14>
 8001c9a:	4611      	mov	r1, r2
 8001c9c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001ca0:	f7ff bfa2 	b.w	8001be8 <_malloc_r>
 8001ca4:	b91a      	cbnz	r2, 8001cae <_realloc_r+0x1e>
 8001ca6:	f7ff ff5b 	bl	8001b60 <_free_r>
 8001caa:	4628      	mov	r0, r5
 8001cac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001cae:	f000 f825 	bl	8001cfc <_malloc_usable_size_r>
 8001cb2:	4285      	cmp	r5, r0
 8001cb4:	d90e      	bls.n	8001cd4 <_realloc_r+0x44>
 8001cb6:	4629      	mov	r1, r5
 8001cb8:	4638      	mov	r0, r7
 8001cba:	f7ff ff95 	bl	8001be8 <_malloc_r>
 8001cbe:	4604      	mov	r4, r0
 8001cc0:	b150      	cbz	r0, 8001cd8 <_realloc_r+0x48>
 8001cc2:	4631      	mov	r1, r6
 8001cc4:	462a      	mov	r2, r5
 8001cc6:	f7ff fb45 	bl	8001354 <memcpy>
 8001cca:	4631      	mov	r1, r6
 8001ccc:	4638      	mov	r0, r7
 8001cce:	f7ff ff47 	bl	8001b60 <_free_r>
 8001cd2:	e001      	b.n	8001cd8 <_realloc_r+0x48>
 8001cd4:	4630      	mov	r0, r6
 8001cd6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001cd8:	4620      	mov	r0, r4
 8001cda:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

08001cdc <_sbrk_r>:
 8001cdc:	b538      	push	{r3, r4, r5, lr}
 8001cde:	4c06      	ldr	r4, [pc, #24]	; (8001cf8 <_sbrk_r+0x1c>)
 8001ce0:	2300      	movs	r3, #0
 8001ce2:	4605      	mov	r5, r0
 8001ce4:	4608      	mov	r0, r1
 8001ce6:	6023      	str	r3, [r4, #0]
 8001ce8:	f7fe fe9a 	bl	8000a20 <_sbrk>
 8001cec:	1c43      	adds	r3, r0, #1
 8001cee:	d102      	bne.n	8001cf6 <_sbrk_r+0x1a>
 8001cf0:	6823      	ldr	r3, [r4, #0]
 8001cf2:	b103      	cbz	r3, 8001cf6 <_sbrk_r+0x1a>
 8001cf4:	602b      	str	r3, [r5, #0]
 8001cf6:	bd38      	pop	{r3, r4, r5, pc}
 8001cf8:	20001350 	.word	0x20001350

08001cfc <_malloc_usable_size_r>:
 8001cfc:	f851 0c04 	ldr.w	r0, [r1, #-4]
 8001d00:	2800      	cmp	r0, #0
 8001d02:	bfbe      	ittt	lt
 8001d04:	1809      	addlt	r1, r1, r0
 8001d06:	f851 3c04 	ldrlt.w	r3, [r1, #-4]
 8001d0a:	18c0      	addlt	r0, r0, r3
 8001d0c:	3804      	subs	r0, #4
 8001d0e:	4770      	bx	lr
 8001d10:	0a646c25 	.word	0x0a646c25
 8001d14:	00000000 	.word	0x00000000
 8001d18:	000a6425 	.word	0x000a6425
 8001d1c:	2c646c25 	.word	0x2c646c25
 8001d20:	646c2520 	.word	0x646c2520
 8001d24:	6c25202c 	.word	0x6c25202c
 8001d28:	25202c64 	.word	0x25202c64
 8001d2c:	202c646c 	.word	0x202c646c
 8001d30:	2c646c25 	.word	0x2c646c25
 8001d34:	646c2520 	.word	0x646c2520
 8001d38:	0000000a 	.word	0x0000000a
 8001d3c:	0043      	.short	0x0043

08001d3e <_ctype_>:
 8001d3e:	2000 2020 2020 2020 2020 2828 2828 2028     .         ((((( 
 8001d4e:	2020 2020 2020 2020 2020 2020 2020 2020                     
 8001d5e:	8820 1010 1010 1010 1010 1010 1010 1010      ...............
 8001d6e:	0410 0404 0404 0404 0404 1004 1010 1010     ................
 8001d7e:	1010 4141 4141 4141 0101 0101 0101 0101     ..AAAAAA........
 8001d8e:	0101 0101 0101 0101 0101 0101 1010 1010     ................
 8001d9e:	1010 4242 4242 4242 0202 0202 0202 0202     ..BBBBBB........
 8001dae:	0202 0202 0202 0202 0202 0202 1010 1010     ................
 8001dbe:	0020 0000 0000 0000 0000 0000 0000 0000      ...............
	...
 8001e3e:	2300 302d 202b 6800 4c6c 6500 6766 4645     .#-0+ .hlL.efgEF
 8001e4e:	0047 3130 3332 3534 3736 3938 4241 4443     G.0123456789ABCD
 8001e5e:	4645 3000 3231 3433 3635 3837 6139 6362     EF.0123456789abc
 8001e6e:	6564 0066                                   def.
