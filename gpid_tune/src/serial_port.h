#ifndef __SERIAL_PORT_H__
#define __SERIAL_PORT_H__

#include <gtk/gtk.h>
#include <string.h>
#include <stdlib.h>

#ifdef WIN32
#define TTY_SPEED	CBR_115200
#include <windows.h>
#else
#define TTY_SPEED	B115200
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>
#endif

#define CHART_BUF		1000
#define TERMINATE_CHAR	'\n'

gboolean serial_port_init (gchar *);
void serial_port_close (void);
gboolean serial_read_position (gint32 *);
gboolean serial_port_get_feedback (gint32 **, guint32 *);
void serial_port_send_setpoint (gint32);
void serial_port_send_parameters (gint32, gint32, gint32, gint32, gint32, gint32);
void serial_port_send_reset (void);
void serial_port_send_new_mode (guint32);
void serial_port_send_sub_cmd (guint32);
void serial_port_send_save_parameters (guint8);
gboolean serial_port_load_parameters (guint8, gint32 *, gint32 *, gint32 *, gint32 *, gint32 *, gint32 *);

#endif /* __SERIAL_PORT_H__ */

