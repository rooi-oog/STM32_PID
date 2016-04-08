#include "ui.h"
#include "serial_port.h"

extern gboolean chart_da_motion_notify_event (GtkWidget *, GdkEventMotion *, gpointer);
extern gboolean chart_da_button_press_event (GtkWidget *, GdkEventButton *, gpointer);
extern gboolean chart_da_scroll_event (GtkWidget *, GdkEventScroll *, gpointer);
extern gboolean topwnd_key_event (GtkWidget *, GdkEventKey *, gpointer);

GtkBuilder *gtk_builder;
GtkWidget *topwnd;
GtkWidget *chart_da;
GtkAdjustment *kP_adj;
GtkAdjustment *kI_adj;
GtkAdjustment *kD_adj;
GtkAdjustment *setpoint_adj;
GtkAdjustment *enc_adj;
GtkAdjustment *gear_adj;
GtkAdjustment *speed_adj;
GtkAdjustment *accel_adj;
GtkWidget *position_txt;
GtkWidget *serial_port_cbox;
GtkWidget *serial_connect_btn;
GtkWidget *select_flash_cbox;

void ui_set_interface_state_callback (GtkWidget *w, gpointer state)
{
	if (GTK_IS_BUTTON (w) || !GTK_IS_CONTAINER (w))
		gtk_widget_set_sensitive (w, *((gboolean *) state));
	else
		gtk_container_foreach (GTK_CONTAINER (w),
			ui_set_interface_state_callback, state);
}

void ui_set_interface_state (GtkContainer *w, gboolean state)
{	
	gtk_container_foreach (w, ui_set_interface_state_callback, &state);
		
	state = 1;
	gtk_container_foreach (GTK_CONTAINER (GET_OBJECT ("serial_frame")), ui_set_interface_state_callback, &state);
}

static void ui_init (void)
{	
	GError *error = NULL;	
	gtk_builder = gtk_builder_new ();
	
	if (!(gtk_builder_add_from_file (gtk_builder, "ui/gtune.ui", &error)))
	{
		GtkWidget *msg = gtk_message_dialog_new (NULL, 
			GTK_DIALOG_MODAL,
			GTK_MESSAGE_ERROR,
			GTK_BUTTONS_OK,
			"%s", error->message);
			
		gtk_window_set_title (GTK_WINDOW (msg), "Error");
		gtk_dialog_run (GTK_DIALOG (msg));
  		gtk_widget_destroy (msg);
			
		return;
	}
	
	gtk_builder_connect_signals (gtk_builder, NULL);
	
	topwnd = GTK_WIDGET (GET_OBJECT ("topwnd"));	
	g_signal_connect (topwnd, "destroy", G_CALLBACK (gtk_main_quit), NULL);
	g_signal_connect (topwnd, "key-press-event", G_CALLBACK (topwnd_key_event), NULL);
	g_signal_connect (topwnd, "key-release-event", G_CALLBACK (topwnd_key_event), NULL);
	gtk_widget_set_events (topwnd, gtk_widget_get_events (topwnd)
                             | GDK_KEY_PRESS_MASK
                             | GDK_KEY_RELEASE_MASK);

	
	chart_da = GTK_WIDGET (GET_OBJECT ("chart_da"));
	g_signal_connect (chart_da, "button-press-event", G_CALLBACK (chart_da_button_press_event), NULL);
	g_signal_connect (chart_da, "button-release-event", G_CALLBACK (chart_da_button_press_event), NULL);	
	g_signal_connect (chart_da, "scroll-event", G_CALLBACK (chart_da_scroll_event), NULL);			
	g_signal_connect (chart_da, "motion-notify-event", G_CALLBACK (chart_da_motion_notify_event), NULL);
		
	gtk_widget_set_events (chart_da, gtk_widget_get_events (chart_da)
                            | GDK_LEAVE_NOTIFY_MASK
                            | GDK_BUTTON_PRESS_MASK
                            | GDK_BUTTON_RELEASE_MASK
                            | GDK_SCROLL_MASK
                            | GDK_POINTER_MOTION_MASK
							| GDK_POINTER_MOTION_HINT_MASK);

	kP_adj = GTK_ADJUSTMENT (GET_OBJECT ("kP_adj"));
	kI_adj = GTK_ADJUSTMENT (GET_OBJECT ("kI_adj"));
	kD_adj = GTK_ADJUSTMENT (GET_OBJECT ("kD_adj"));
	setpoint_adj = GTK_ADJUSTMENT (GET_OBJECT ("setpoint_adj"));
	enc_adj = GTK_ADJUSTMENT (GET_OBJECT ("enc_adj"));
	gear_adj = GTK_ADJUSTMENT (GET_OBJECT ("gear_adj"));
	speed_adj = GTK_ADJUSTMENT (GET_OBJECT ("speed_adj"));
	accel_adj = GTK_ADJUSTMENT (GET_OBJECT ("accel_adj"));
	
	select_flash_cbox = gtk_combo_box_text_new ();
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "0");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "1");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "2");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "3");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "4");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "5");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "6");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (select_flash_cbox), "7");
	gtk_combo_box_set_active (GTK_COMBO_BOX (select_flash_cbox), 0);	
	gtk_container_add (GTK_CONTAINER (GET_OBJECT ("select_flash_box")), select_flash_cbox);
		
	serial_connect_btn = GTK_WIDGET (GET_OBJECT ("serial_connect_btn"));
	serial_port_cbox = gtk_combo_box_text_new ();
#ifdef WIN32
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "COM1");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "COM2");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "COM3");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "COM4");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "COM5");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "COM6");
#else
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "ttyS0");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "ttyS1");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "ttyS2");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "ttyUSB0");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "ttyUSB1");
	gtk_combo_box_text_append_text (GTK_COMBO_BOX_TEXT (serial_port_cbox), "ttyUSB2");		
#endif
	gtk_combo_box_set_active (GTK_COMBO_BOX (serial_port_cbox), 0);	
	gtk_container_add (GTK_CONTAINER (GET_OBJECT ("serial_box")), serial_port_cbox);
			
}

void ui_save_state ()
{	
	ui_data_t dat;	
	memset (&dat, 0, sizeof (dat));	
	
	dat.VL = GET_VALUE (GET_OBJECT ("speed_adj"));
	dat.kF = GET_VALUE (GET_OBJECT ("kF_adj"));
	dat.kP = GET_VALUE (GET_OBJECT ("kP_adj"));
	dat.kI = GET_VALUE (GET_OBJECT ("kI_adj"));
	dat.kD = GET_VALUE (GET_OBJECT ("kD_adj"));
	dat.kG = GET_VALUE (GET_OBJECT ("kG_adj"));		
	dat.encoder_resolution = GET_VALUE (enc_adj);
	dat.gear_ratio = GET_VALUE (gear_adj);
	dat.serial_port_index = gtk_combo_box_get_active (GTK_COMBO_BOX (serial_port_cbox));
	
	int fd = open ("config.dat", O_CREAT | O_WRONLY | O_TRUNC, 0666);
	write (fd, &dat, sizeof (dat));
	close (fd);
}

static void ui_restore_state ()
{

	int fd;
	ui_data_t dat;	

	//gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON (GET_OBJECT ("position_rbtn")), TRUE);
		
	if ((fd = open ("config.dat", O_RDONLY)) > 0) 
	{
		
		read (fd, &dat, sizeof (dat));
		close (fd);	
		
		gtk_adjustment_set_value (speed_adj, dat.VL);
		gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("kF_adj")), dat.kF);
		gtk_adjustment_set_value (kP_adj, dat.kP);
		gtk_adjustment_set_value (kI_adj, dat.kI);
		gtk_adjustment_set_value (kD_adj, dat.kD);
		gtk_adjustment_set_value (GTK_ADJUSTMENT (GET_OBJECT ("kG_adj")), dat.kG);
		
		gtk_adjustment_set_value (enc_adj, dat.encoder_resolution);
		gtk_adjustment_set_value (gear_adj, dat.gear_ratio);				
		gtk_combo_box_set_active (GTK_COMBO_BOX (serial_port_cbox), dat.serial_port_index);
	}	
}

int main (int argc, char *argv[])
{
	gtk_init (&argc, &argv);
	ui_init ();
	ui_set_interface_state (GTK_CONTAINER (GET_OBJECT ("main_box")), UI_DISABLE);		// Disable all widgets
	ui_restore_state ();
	
	gtk_widget_show_all (topwnd);
	gtk_main ();
	
	g_object_unref (gtk_builder);
	serial_port_close ();	
	
	return 0;
}
