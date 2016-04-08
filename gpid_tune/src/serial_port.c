#include "serial_port.h"

#ifdef WIN32
static HANDLE ttyfd;


static void write_str (HANDLE fd, gchar *buf, gsize count)
{
	DWORD bytes_written;
	WriteFile(ttyfd, buf, count, &bytes_written, NULL);
}

static gboolean read_nonblock (HANDLE fd, gchar *buf, gsize count)
{
	DWORD NoBytesRead;
	gint watchdog = 0;
	
	//while (watchdog++ < 32768 && NoBytesRead <= 0)
	ReadFile (ttyfd, buf, count, &NoBytesRead, NULL);	
	
	return NoBytesRead > 0 ? TRUE : FALSE;
}

gboolean serial_port_init (gchar *port)
{
	// Declare variables and structures    
    DCB dcbSerialParams = {0};
    COMMTIMEOUTS timeouts = {0};
         
    // Open the highest available serial port number
    fprintf (stderr, "Opening serial port...");
    ttyfd = CreateFile(
                port, GENERIC_READ|GENERIC_WRITE, 0, NULL,
                OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
    if (ttyfd == INVALID_HANDLE_VALUE)
    {
            fprintf(stderr, "Error\n");
            return FALSE;
    }
    else fprintf(stderr, "OK\n");
     
    // Set device parameters (38400 baud, 1 start bit,
    // 1 stop bit, no parity)
    dcbSerialParams.DCBlength = sizeof(dcbSerialParams);
    if (GetCommState(ttyfd, &dcbSerialParams) == 0)
    {
        fprintf(stderr, "Error getting device state\n");
        CloseHandle(ttyfd);
        return FALSE;
    }
     
    dcbSerialParams.BaudRate = TTY_SPEED;//CBR_921600;
    dcbSerialParams.ByteSize = 8;
    dcbSerialParams.StopBits = ONESTOPBIT;
    dcbSerialParams.Parity = NOPARITY;
    if(SetCommState(ttyfd, &dcbSerialParams) == 0)
    {
        fprintf(stderr, "Error setting device parameters\n");
        CloseHandle(ttyfd);
        return FALSE;
    }
 
    // Set COM port timeout settings
    timeouts.ReadIntervalTimeout = 50;
    timeouts.ReadTotalTimeoutConstant = 50;
    timeouts.ReadTotalTimeoutMultiplier = 10;
    timeouts.WriteTotalTimeoutConstant = 50;
    timeouts.WriteTotalTimeoutMultiplier = 10;
    if(SetCommTimeouts(ttyfd, &timeouts) == 0)
    {
        fprintf(stderr, "Error setting timeouts\n");
        CloseHandle(ttyfd);
        return FALSE;
    }
    
    return TRUE;		
}

void serial_port_close (void)
{
	CloseHandle (ttyfd);
}
#else
static int ttyfd;

static gboolean read_nonblock (gint fd, gchar *buf, gsize count)
{
	gint n, watchdog = 0;
	
	while ((n = read (ttyfd, buf, count)) <= 0 && watchdog++ < 32768);
	
	return n > 0 ? TRUE : FALSE;		
}

static void write_str (gint fd, gchar *buf, gsize count)
{
	write (fd, buf, count);
}

gboolean serial_port_init (gchar *port)
{
	struct termios options;
	
	if ((ttyfd = open (port, O_RDWR | O_NOCTTY | O_NONBLOCK)) < 0)
	{
		perror ("Unable to open serial port: ");
		return FALSE;		
	}
		
	tcgetattr (ttyfd, &options);
	
	// set baud rate
	cfsetispeed (&options, TTY_SPEED);
	cfsetospeed (&options, TTY_SPEED);
	
	options.c_cflag |= CLOCAL | CREAD;						// enable the receiver and set local mode
	options.c_cflag &= ~CSIZE;								// mask the character size bits
	options.c_cflag |= CS8;									// select 8 data bits
	options.c_cflag &= ~PARENB;								// disable the parity check
	options.c_cflag &= ~CSTOPB;								// 1 stop bit
	options.c_cflag &= ~CRTSCTS;							// disable hardware flow control
	options.c_iflag &= ~(IXON | IXOFF | IXANY | IGNBRK);	// disable software flow control
	options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);		// select raw input	
	options.c_oflag &= ~OPOST;								// select raw output
	
	// set the new options for the port
	tcsetattr (ttyfd, TCSAFLUSH, &options);
	
	return TRUE;
}

void serial_port_close (void)
{
	close (ttyfd);
}
#endif

static gboolean read_byte (gchar *cmd, gboolean write_cmd, gint32 *value)
{	
	gchar bytes [32];
	gchar byte = 0;
	gchar *pbytes = bytes;
	
	gint n, watchdog = 0;
	
	if (write_cmd)
		write_str (ttyfd, cmd, strlen (cmd));
		
	while (byte != '\n' && pbytes - bytes < 32)
	{

		if (!(read_nonblock (ttyfd, &byte, 1)))
			return FALSE;
			
		*pbytes++ = byte;		
	}
	
	*(pbytes - 1) = 0;	
	
	*value = atoi (bytes);
	
	return TRUE;
}

static gboolean read_str (gchar *cmd, gboolean write_cmd, gchar *str)
{	
	gchar bytes [256];
	gchar byte = 0;
	gchar *pbytes = bytes;
	
	gint n, watchdog = 0;
	
	if (write_cmd)
		write_str (ttyfd, cmd, strlen (cmd));
		
	while (byte != '\n' && pbytes - bytes < 256)
	{
		if (!(read_nonblock (ttyfd, &byte, 1)))
			return FALSE;
			
		*pbytes++ = byte;		
	}
	
	*(pbytes - 1) = 0;	
	
	memcpy (str, bytes, strlen (bytes) + 1);
	
	return TRUE;
}

void serial_port_send_sub_cmd (guint32 value)
{
	gchar *cmd = g_strdup_printf ("C%d\n", value);
	write_str (ttyfd, cmd, strlen (cmd));
	g_free (cmd);
}

void serial_port_send_new_mode (guint32 mode)
{
	gchar *cmd = g_strdup_printf ("M%d\n", mode);
	write_str (ttyfd, cmd, strlen (cmd));
	g_free (cmd);
}

void serial_port_send_setpoint (gint32 setpoint)
{
	gchar *cmd = g_strdup_printf ("J%d\n", setpoint);
	write_str (ttyfd, cmd, strlen (cmd));
	g_free (cmd); 
}

void serial_port_send_parameters (gint32 VL, gint32 kF, gint32 kP, gint32 kI, gint32 kD, gint32 kG)
{
	gchar cmd [64];
	
	sprintf (cmd, "P0%d\n", VL);
	write_str (ttyfd, cmd, strlen (cmd));
	
	sprintf (cmd, "P1%d\n", kF);
	write_str (ttyfd, cmd, strlen (cmd));
	
	sprintf (cmd, "P2%d\n", kP);
	write_str (ttyfd, cmd, strlen (cmd));
	
	sprintf (cmd, "P3%d\n", kI);
	write_str (ttyfd, cmd, strlen (cmd));
	
	sprintf (cmd, "P4%d\n", kD);
	write_str (ttyfd, cmd, strlen (cmd));	
	
	sprintf (cmd, "P5%d\n", kG);
	write_str (ttyfd, cmd, strlen (cmd));
}

gboolean serial_port_load_parameters (
	guint8 cell, gint32 *vl, gint32 *kf, gint32 *kp, gint32 *ki, gint32 *kd, gint32 *kg)
{
	gchar str [256];	
	gchar *cmd = g_strdup_printf ("Sl%d\n", cell);
	
	if (!(read_str (cmd, TRUE, str)))	
		return FALSE;	
	
	printf ("str = %s\n", str);
	
	sscanf (str, "%d,%d,%d,%d,%d,%d", vl, kf, kp, ki, kd, kg);
	
	g_free (cmd);
	
	return TRUE;
}

void serial_port_send_save_parameters (guint8 cell)
{
	gchar *cmd = g_strdup_printf ("Ss%d\n", cell);
	write_str (ttyfd, cmd, strlen (cmd));
	g_free (cmd);
}

void serial_port_send_reset (void)
{
	write_str (ttyfd, "R\n", 2);
}

gboolean serial_port_get_feedback (gint32 *buf[], guint32 *size)
{
	*size = CHART_BUF;
	guint32 fb_index;
	
	while (fb_index != *size)
	{
		if (!read_byte ("F\n", TRUE, (gint32 *) &fb_index))
		{
			*buf = NULL;
			*size = 0;
			return FALSE;
		}
	}

	*buf = g_malloc0 ((gsize) *size * sizeof (gint32));
	

	write_str (ttyfd, "G\n", 2);

	for (guint i = 0; i < *size; i++)
	{
		if (!read_byte ("", FALSE, &buf[0][i]) )
		{
			g_free (*buf);
			return FALSE;
		}
	} 	
	
	return TRUE;
}

gboolean serial_read_position (gint32 *value)
{	
	return read_byte ("L\n", TRUE, value);
}
