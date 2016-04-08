#ifndef __USER_INTERFACE_H__
#define __USER_INTERFACE_H__

#define	UI_ENABLE		1
#define	UI_DISABLE		0

#define ANGLE_UNITS		1
#define PULSES_UNITS	0

#define GET_OBJECT(o)		(gtk_builder_get_object (gtk_builder, o))
#define GET_VALUE(o)		(gtk_adjustment_get_value (GTK_ADJUSTMENT (o)))
#define	CHECK_MODE()		(ui_check_mode (gtk_radio_button_get_group \
								(GTK_RADIO_BUTTON (GET_OBJECT ("pwm_rbtn")))))

#include <gtk/gtk.h>
#include <gtk/gtkx.h>
#include <glib/gprintf.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <locale.h>
#include <math.h>

typedef struct {		
	double	VL;
	double	kF;
	double	kP;
	double	kI;
	double	kD;
	double	kG;	
	double	encoder_resolution;
	double	gear_ratio;	
	guint8	serial_port_index;
} ui_data_t;

enum servo_mode
{
	POSITION = 0,
	SPEED,
	TORQUE,
	PWM
};


static guint8 ui_check_mode (GSList *list)
{
	guint8 index = 0;
	
	while (list)
	{	
		if (gtk_toggle_button_get_active (GTK_TOGGLE_BUTTON (list->data)))
			break;
		
		index++;
		list = list->next;		
	}
	
	return index;
}

#endif /* __USER_INTERFACE_H__ */

