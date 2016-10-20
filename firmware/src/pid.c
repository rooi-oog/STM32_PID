#include "cmsis_device.h"
#include "pid.h"

static int32_t pid_reset_flag = 0;

/* Total PID reset */
void pid_reset (arm_pid_t *pid_inst)
{	
	pid_set_PWM (pid_inst, 0);
	pid_reset_flag = 2000;
	pid_inst->last_error = 0;
	pid_inst->integral = 0;	
	pid_inst->setpoint = 0;
	pid_inst->feedback = 0;
	pid_inst->velocity = 0;
	*pid_inst->encoder = 0;	
	pid_inst->velocity = 0;
	pid_inst->last_position = 0;		
}

/* Set new PID position command */ 
void pid_set_point (arm_pid_t *pid_inst, int32_t setpoint)
{
	pid_inst->setpoint = setpoint;
}

/* Set PID parameters */
void pid_set_parameters (arm_pid_t *pid_inst, int32_t value, uint8_t index)
{
	switch (index)
	{
	/* Velocity limit */
	case 0: pid_inst->pid.VL = value; break;
	/* Velocity feedback gain */
	case 1: pid_inst->pid.Kf = value; break;
	/* Proportional gain */
	case 2: pid_inst->pid.Kp = value; break;
	/* Integral gain */
	case 3: pid_inst->pid.Ki = value; break;
	/* Derivative gain */
	case 4: pid_inst->pid.Kd = value; break;
	/* Torque feedback gain */
	case 5: pid_inst->pid.Kg = value; break;
	}
}

/* Set new servo mode */
void pid_set_mode (arm_pid_t *pid_inst, uint8_t mode)
{
	pid_inst->servo_mode = mode;
}

/* Set command for servo mode (PWM, TORQUE, VELOCITY) */
void pid_set_sub_cmd (arm_pid_t *pid_inst, int32_t cmd)
{
	pid_inst->subcmd = cmd;
}


inline void pid_set_PWM (arm_pid_t *pid_inst, int32_t pwm)
{
	*pid_inst->pwm_p = pwm > 0 ?  pwm : 0;
	*pid_inst->pwm_n = pwm < 0 ? -pwm : 0;
}

/* Main PID function */
void pid_update (arm_pid_t *pid_inst, uint8_t speed_compare)
{	
	/* Wait 1ms to totally stop the motor */
	if (pid_reset_flag > 0)
	{
		pid_reset_flag--;
		*pid_inst->encoder = 0;		
		pid_inst->setpoint = 0;
		return;
	}
	
	/* Intermediate result of PID calc. */
	int64_t out;
	/* Difference between setpoint and feedback */
	int32_t error;
	/* Servo mode sub-command */
	volatile int32_t pidcmd = pid_inst->subcmd;
	
	/* Stop interrupt until get timer counters */
	__disable_irq ();	
	pid_inst->feedback += (int16_t) *pid_inst->encoder;		// Current position = previous position + encoder value
	*pid_inst->encoder = 0;									// After reading TIMx->CNT we need to clear it
	__enable_irq ();

	/* Speed sampling at 250Hz */	
	if (speed_compare)
	{
		pid_inst->velocity = 
			pid_inst->feedback - pid_inst->last_position;	// Speed = current position - previous position
		pid_inst->last_position = pid_inst->feedback;		// The last_position is need to calculate the velocity
	}	
	
	switch (pid_inst->servo_mode)
	{		
		case POSITION:
			/* Position error is velocity error */
			pidcmd = LIMIT (pid_inst->pid.VL, 
				-pid_inst->pid.VL, pid_inst->setpoint - pid_inst->feedback);
		
		case SPEED:
			/* Get mismatch of setpoint and feedback with feedback gain */
			error = pidcmd - ((pid_inst->velocity * pid_inst->pid.Kf) >> FIXED_POINT_POSITION);
			/* Integral part */			
			out  = (int64_t) pid_inst->integral * (int64_t) pid_inst->pid.Ki;
			/* Accumulate error + anti wind-up */
			if ((out >> FIXED_POINT_POSITION) > -500 && (out >> FIXED_POINT_POSITION) < 500)
				pid_inst->integral += (int64_t) error;					
			/* Proportional part */
			out += (int64_t) error * (int64_t) pid_inst->pid.Kp;
			/* Derivative part */
			out += (int64_t) (error - pid_inst->last_error) * (int64_t) pid_inst->pid.Kd;
			
			/* Accumulate error + anti wind-up */			
			//pid_inst->integral = LIMIT (32768, -32768, pid_inst->integral + (int64_t) error); 
			//LIMIT (INT64_MAX / 64, INT64_MIN / 64, pid_inst->integral + (int64_t) error);
			//pid_inst->integral += error;
			
			/* Get error derivative */
			pid_inst->last_error = error;

			/* Limit PID result to max torque */
			pidcmd = LIMIT (500, -500, out >> FIXED_POINT_POSITION);
		
		case TORQUE:
			pidcmd += ((pid_inst->velocity * pid_inst->pid.Kg) >> FIXED_POINT_POSITION);			
		
		case PWM:
			pid_set_PWM (pid_inst, 
				LIMIT (pid_inst->pwm_max_val, -pid_inst->pwm_max_val, pidcmd));
	}
}

void pid_init (arm_pid_t *pid_inst, 
	int32_t pwm_max_val, uint32_t *pwm_p, uint32_t *pwm_n, uint32_t *encoder)
{
	bzero (pid_inst, sizeof (arm_pid_t));
	
	pid_inst->pwm_max_val = pwm_max_val - 5;	
	pid_inst->pwm_p = pwm_p;
	pid_inst->pwm_n = pwm_n;
	pid_inst->encoder = encoder;
	pid_inst->subcmd = 0;
	pid_inst->servo_mode = POSITION;
}

