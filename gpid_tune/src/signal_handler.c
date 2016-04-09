#include "ui.h"
#include "serial_port.h"
#include "chart.h"

#define FIXED_POINT_POS			16

extern GtkBuilder *gtk_builder;
extern GtkWidget *topwnd;
extern GtkWidget *serial_port_cbox;

extern void ui_save_state (void);
extern void ui_set_interface_state (GtkContainer *, gboolean);
extern GtkWidget *chart_da;
extern GtkWidget *select_flash_cbox;

static enum servo_mode current_mode;
static gboolean shift_button;
static gboolean ctrl_button;
static void print_status (gchar *);

G_MODULE_EXPORT
void chart_btn_clicked_cb ()
{
	gint32 *buf;
	guint32 size;
	
	if (!serial_port_get_feedback (&buf, &size)) {
		print_status ("Serial port timeout");
		return;
	}	
		
	chart_apply_data (GET_VALUE (GET_OBJECT ("setpoint_adj")), buf, size);			
	print_status ("OK");		
	gtk_widget_queue_draw (chart_da);
	
	g_free (buf);	
}

G_MODULE_EXPORT
gboolean chart_da_draw_cb (GtkWidget *widget, cairo_t *cr, gpointer unused)
{	
	chart_draw (cr, gtk_widget_get_allocated_width (widget),
		gtk_widget_get_allocated_height (widget));
			
	return TRUE;
}

G_MODULE_EXPORT
gboolean chart_da_motion_notify_event (GtkWidget *widget, GdkEventMotion *event, gpointer data)
{
	gint x, y;  
	gdk_window_get_device_position (event->window, event->device, &x, &y, NULL);	
	      
	if (chart_set_end_scale (x, y))
		gtk_widget_queue_draw (chart_da);
  
	return TRUE;
}

G_MODULE_EXPORT
gboolean chart_da_button_press_event (GtkWidget *widget, GdkEventButton *event, gpointer unused)
{
	switch (event->button)
	{
	case GDK_BUTTON_PRIMARY:
		if (event->type == GDK_BUTTON_PRESS)
		{
			chart_set_start_scale (event->x, event->y);
		}
		else if (event->type = GDK_BUTTON_RELEASE)
		{
			chart_set_scale (1);				
			gtk_widget_queue_draw (chart_da);
			
		}
		break;
	case GDK_BUTTON_SECONDARY:
	case GDK_BUTTON_MIDDLE: 
	default:		
		chart_set_scale (0);
		gtk_widget_queue_draw (chart_da);
		break;
	}

	
	return TRUE;
}

G_MODULE_EXPORT
gboolean chart_da_scroll_event (GtkWidget *widget, GdkEventScroll *event, gpointer unused)
{		
	return TRUE;
}

G_MODULE_EXPORT
gboolean topwnd_key_event (GtkWidget *widget, GdkEventKey *event, gpointer unused)
{

	return FALSE;	
}

G_MODULE_EXPORT
void go_zero_btn_clicked_cb (GtkButton *button, gpointer unused)
{
	gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("set_speed_adj")), 0);
}


G_MODULE_EXPORT
void set_btn_clicked_cb (GtkButton *button, gpointer unused)
{	
	serial_port_send_setpoint (round (GET_VALUE (GET_OBJECT ("setpoint_adj"))));
	print_status ("OK");
}

G_MODULE_EXPORT
void gains_set_btn_clicked_cb (GtkButton *button, gpointer unused)
{	
	gint32 VL = round (GET_VALUE (GET_OBJECT ("speed_adj")));
	gint32 kf = round (GET_VALUE (GET_OBJECT ("kF_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 kp = round (GET_VALUE (GET_OBJECT ("kP_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 ki = round (GET_VALUE (GET_OBJECT ("kI_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 kd = round (GET_VALUE (GET_OBJECT ("kD_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 kg = round (GET_VALUE (GET_OBJECT ("kG_adj")) * (double) (1 << FIXED_POINT_POS));
	
	serial_port_send_parameters (VL, kf, kp, ki, kd, kg);
	
	print_status ("OK");
}

G_MODULE_EXPORT
void set_speed_adj_value_changed_cb (GtkAdjustment *adjustment, gpointer user_data)
{
	serial_port_send_sub_cmd (gtk_adjustment_get_value (adjustment));
}

G_MODULE_EXPORT
void rst_btn_clicked_cb (GtkButton *button, gpointer unused)
{	
	serial_port_send_reset ();
	go_zero_btn_clicked_cb (NULL, NULL);
	print_status ("OK");
}

G_MODULE_EXPORT
void read_btn_clicked_cb ()
{
	gint32 pos;
	if (!serial_read_position (&pos)) {
		print_status ("Serial port timeout"); 
		return;		
	}
	
	gchar *str = g_strdup_printf ("%d", pos);		
	gtk_entry_set_text (GTK_ENTRY (GET_OBJECT ("position_txt")), str);
	g_free (str);
		
	print_status ("OK");	
}

G_MODULE_EXPORT
void load_from_flash_btn_clicked_cb ()
{
	gint32 kF_i, kP_i, kI_i, kD_i, kG_i, VL;
	
	if (!(serial_port_load_parameters (
		gtk_combo_box_get_active (GTK_COMBO_BOX (select_flash_cbox)),
		&VL, &kF_i, &kP_i, &kI_i, &kD_i, &kG_i)))
	{
		print_status ("Serial port timeout");
		return;
	}
	
	gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("speed_adj")), 
		VL);
	gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("kF_adj")), 
		(gdouble) kF_i / (gdouble) (1 << FIXED_POINT_POS));		
	gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("kP_adj")), 
		(gdouble) kP_i / (gdouble) (1 << FIXED_POINT_POS));
	gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("kI_adj")), 
		(gdouble) kI_i / (gdouble) (1 << FIXED_POINT_POS));
	gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("kD_adj")), 
		(gdouble) kD_i / (gdouble) (1 << FIXED_POINT_POS));
	gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("kG_adj")), 
		(gdouble) kG_i / (gdouble) (1 << FIXED_POINT_POS));	
	
	print_status ("OK");	
}

G_MODULE_EXPORT
void save_to_flash_btn_clicked_cb ()
{	
	print_status ("Flash write in progress...");
	
	void wait (gulong wait_us)
	{
		gulong timer_us = 0;		
		GTimer *timer = g_timer_new ();
		g_timer_start (timer);
		while (timer_us < wait_us)
		{	
			g_timer_stop (timer);
			timer_us = g_timer_elapsed (timer, NULL);
			g_timer_continue (timer);
			gtk_main_iteration_do (FALSE);
		}
		g_timer_destroy (timer);
	}	
	
	guint32 velocity;
	
	serial_port_send_reset ();
	wait (2);	
	
	velocity = round (GET_VALUE (GET_OBJECT ("speed_adj")));
	gint32 kf = round (GET_VALUE (GET_OBJECT ("kF_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 kp = round (GET_VALUE (GET_OBJECT ("kP_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 ki = round (GET_VALUE (GET_OBJECT ("kI_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 kd = round (GET_VALUE (GET_OBJECT ("kD_adj")) * (double) (1 << FIXED_POINT_POS));
	gint32 kg = round (GET_VALUE (GET_OBJECT ("kG_adj")) * (double) (1 << FIXED_POINT_POS));
	
	serial_port_send_parameters (velocity, kf, kp, ki, kd, kg);	
	serial_port_send_save_parameters (
		gtk_combo_box_get_active (GTK_COMBO_BOX (select_flash_cbox)));
		
	g_printf ("%d\n", gtk_combo_box_get_active (GTK_COMBO_BOX (select_flash_cbox)));
		
	wait (4);
	print_status ("OK");
}


G_MODULE_EXPORT
void pwm_rbtn_group_changed_cb (GtkToggleButton *togglebutton, gpointer user_data)
{	
	
	switch ((current_mode = CHECK_MODE ()))
	{
		case PWM:
			puts ("PWM");
			gtk_adjustment_set_lower (GTK_ADJUSTMENT (GET_OBJECT ("set_speed_adj")),
				-255.);
			gtk_adjustment_set_upper (GTK_ADJUSTMENT (GET_OBJECT ("set_speed_adj")),
				255.);
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("setpoint_frame")), FALSE);
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("speed_frame")), TRUE);
			break;
		case TORQUE:
			puts ("TORQUE");
			gtk_adjustment_set_lower (GTK_ADJUSTMENT (GET_OBJECT ("set_speed_adj")),
				-1000.);
			gtk_adjustment_set_upper (GTK_ADJUSTMENT (GET_OBJECT ("set_speed_adj")),
				1000.);
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("setpoint_frame")), FALSE);
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("speed_frame")), TRUE);
			break;
		case SPEED:
			puts ("SPEED");
			gtk_adjustment_set_lower (GTK_ADJUSTMENT (GET_OBJECT ("set_speed_adj")),
				-GET_VALUE (GET_OBJECT ("speed_adj")));
			gtk_adjustment_set_upper (GTK_ADJUSTMENT (GET_OBJECT ("set_speed_adj")),
				GET_VALUE (GET_OBJECT ("speed_adj")));
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("setpoint_frame")), FALSE);
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("speed_frame")), TRUE);
			break;
		case POSITION:
			puts ("POSITION");
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("setpoint_frame")), TRUE);
			ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("speed_frame")), FALSE);
			break;
	}	
	
	go_zero_btn_clicked_cb (NULL, NULL);
	
	serial_port_send_reset ();
	serial_port_send_new_mode (current_mode);
}

G_MODULE_EXPORT
void serial_connect_btn_clicked_cb (GtkButton *button, gpointer unused)
{
	serial_port_close ();
	
	gchar *ttystr = g_strdup_printf (
#ifdef WIN32
		"\\\\.\\%s",
#else
		"/dev/%s",
#endif 
		gtk_combo_box_text_get_active_text (GTK_COMBO_BOX_TEXT (serial_port_cbox))
	);
	
	if (!serial_port_init (ttystr))
	{
		GtkWidget *msg = gtk_message_dialog_new (GTK_WINDOW (topwnd), 
			GTK_DIALOG_MODAL | GTK_DIALOG_DESTROY_WITH_PARENT,
			GTK_MESSAGE_ERROR,
			GTK_BUTTONS_OK,
			"Unable to open serial port: %s", ttystr);
			
		gtk_window_set_title (GTK_WINDOW (msg), "Error");
		gtk_dialog_run (GTK_DIALOG (msg));
  		gtk_widget_destroy (msg);
  		ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("main_box")), UI_DISABLE);  	
	}
	else {
		ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("main_box")), UI_ENABLE);
		gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON (GET_OBJECT ("position_rbtn")), TRUE);
	}
			
	g_free (ttystr);
	print_status ("OK");
}


G_MODULE_EXPORT
gboolean top_delete_event_cb (GtkWidget *widget, GdkEvent *event, gpointer unused)
{
	ui_save_state ();	
	return FALSE;
}

static void print_status (gchar *str)
{
	GtkStatusbar *s = GTK_STATUSBAR (GET_OBJECT ("status_bar"));	
	gtk_statusbar_push (s, gtk_statusbar_get_context_id (s, str), str);
}

