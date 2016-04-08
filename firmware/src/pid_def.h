#ifndef __PID_DEFINES_H__
#define __PID_DEFINES_H__

#define APB2_CLK	72000000
#define APB1_CLK	36000000
#define TIM4_CLK	APB1_CLK

#define PWM_WIDTH	8
#define PWM_MAX_VAL	((uint16_t) ((1 << PWM_WIDTH) - 1))
#define PWM_FREQ	20000

#define PWM1_P		TIM4->CCR3
#define PWM1_N		TIM4->CCR4
#define PWM2_P		TIM4->CCR1
#define PWM2_N		TIM4->CCR2

#define ENC_0		TIM2->CNT
#define ENC_1		TIM3->CNT

#define STEP_0_PIN	15
#define DIR_0_PIN	14
#define STEP_1_PIN	13
#define DIR_1_PIN	12

#endif /* __PID_DEFINES_H__ */

