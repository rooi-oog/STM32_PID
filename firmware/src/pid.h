#ifndef __PID_H__
#define __PID_H__

#include <string.h>

#ifndef LIMIT
#define LIMIT(max,min,val)		val > max ? max : val < min ? min : val
#endif

#define	FIXED_POINT_POSITION	16

enum servo_mode
{
	POSITION = 0,
	SPEED,
	TORQUE,
	PWM
};

typedef struct
{
	int32_t VL;
	int32_t Kf;
	int32_t Kp;
	int32_t Ki;
	int32_t Kd;
	int32_t Kg;
	int64_t align;
} arm_pid_instance_t;

typedef struct
{
	arm_pid_instance_t pid;
	int32_t subcmd;
	int32_t servo_mode;	
	int32_t setpoint;
	int32_t feedback;
	int32_t velocity;
	int64_t integral;
	int32_t last_error;
	int32_t last_position;
	int32_t pwm_max_val;
	uint32_t *pwm_p;
	uint32_t *pwm_n;
	uint32_t *encoder;
} arm_pid_t;

void pid_init (arm_pid_t *pid_inst, int32_t, uint32_t *, uint32_t *, uint32_t *);
void pid_set_point (arm_pid_t *, int32_t);
void pid_set_parameters (arm_pid_t *, int32_t, uint8_t);
void pid_reset (arm_pid_t *);
void pid_set_mode (arm_pid_t *, uint8_t);
void pid_set_sub_cmd (arm_pid_t *, int32_t);
void pid_set_PWM (arm_pid_t *, int32_t);
void pid_update (arm_pid_t *, uint8_t);

#endif /* __PID_H__ */

