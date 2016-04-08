#ifndef __MOTOR_H__
#define __MOTOR_H__

#include "ui.h"

extern GtkBuilder *gtk_builder;
extern GtkWidget *topwnd;
extern GtkWidget *serial_port_cbox;

extern void ui_save_state (void);
extern void ui_set_interface_state (gboolean);

#define GEAR_RATIO				GET_VALUE (GET_OBJECT ("gear_adj"))
#define ENCODER_RESOLUTION_PPR	GET_VALUE (GET_OBJECT ("enc_adj"))							// pulses per round
#define SPEED_RPS				GET_VALUE (GET_OBJECT ("speed_adj"))						// round per second
#define SPEED_PPS				(SPEED_RPS * ENCODER_RESOLUTION_PPR)						// pulses per second
#define SHAFT_SPEED_RPM			(SPEED_RPS / GEAR_RATIO)
#define SHAFT_PPR				(GEAR_RATIO * ENCODER_RESOLUTION_PPR)						// pulses per round
#define SHAFT_SPEED_PPS			(SHAFT_PPR * SPEED_RPS / 1000.0)

#define FIXED_POINT_POS			16

static inline gdouble convert_to_angle (gint32 pulses)
{
	return (double) pulses * 360.0 / SHAFT_PPR;
}

static inline gint32 convert_to_pulses (double angle)
{
	return round (angle * SHAFT_PPR / 360.0);
} 

#endif /* __MOTOR_H__ */
