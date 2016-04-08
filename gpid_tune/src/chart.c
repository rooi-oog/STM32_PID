#include "chart.h"
#include "kplot.h"
#include "extern.h"

struct rect
{
	gint32 x;
	gint32 y;
	gint32 w;
	gint32 h;
};

static gsize range = 0;
static gsize array_data_size = 0;
static struct kpair *sp, *fb;
static struct kpair *sp_ptr, *fb_ptr;
static struct rect plot_rect;
static struct rect scale_rect;
static gboolean scale_rect_draw = FALSE;

void chart_set_start_scale (gint x, gint y)
{
	scale_rect_draw = TRUE;
	scale_rect.x = x;
	scale_rect.y = y;
	scale_rect.w = 1;
	scale_rect.h = 1;
}

gboolean chart_set_end_scale (gint x, gint y)
{
	scale_rect.w = x - scale_rect.x;
	scale_rect.h = y - scale_rect.y;
	return scale_rect_draw;
}

void chart_set_scale (gboolean scale_type /* 0 - default, 1 - rect */)
{
	scale_rect_draw = FALSE;
	
	if (scale_rect.h < 0 && scale_rect.w < 0)
	{
		scale_rect.x += scale_rect.w;
		scale_rect.y += scale_rect.h;
		scale_rect.w  = -scale_rect.w;
		scale_rect.h  = -scale_rect.h;
	}
	
	gdouble scale_factor = (double) array_data_size / (double) plot_rect.w;
	gint startp = round ((double) (scale_rect.x - plot_rect.x) * scale_factor);
	gint endp   = round ((double) (scale_rect.w + scale_rect.x - plot_rect.x) * scale_factor);	
	startp = startp < 0 ? 0 : startp;
	endp = endp > (gint) array_data_size ? (gint) array_data_size : endp;
	endp = endp < startp ? startp : endp;
	
	if (scale_type)
	{
		range = endp - startp;
		sp_ptr = &sp [startp];
		fb_ptr = &fb [startp];
	}
	else
	{
		range = array_data_size;
		sp_ptr = sp;
		fb_ptr = fb;
	}
}


void chart_draw (cairo_t *cr, guint32 width, guint32 height)
{
	cairo_surface_t	*surf;
	struct kplotctx *ctx;
	struct kplot *p;	
	struct kdata *d1 = kdata_array_alloc (sp_ptr, range);
	struct kdata *d2 = kdata_array_alloc (fb_ptr, range);	
	struct kplotcfg cfg;
	
	kplotcfg_defaults (&cfg);
	cfg.xtics = 15;
	cfg.ytics = 20;
	
	p = kplot_alloc (&cfg);

	kplot_attach_data (p, d1, KPLOT_LINES, NULL);
	kplot_attach_data (p, d2, KPLOT_LINES, NULL);
	
	surf = cairo_image_surface_create
		(CAIRO_FORMAT_ARGB32, width, height);
	
	cairo_set_source_surface (cr, surf, 0, 0);
	cairo_surface_destroy(surf);
	cairo_set_source_rgb(cr, 1.0, 1.0, 1.0); 
	cairo_paint (cr);	
	
	ctx = kplot_draw (p, width, height, cr);
	
	plot_rect.x = ctx->offs.x;
	plot_rect.y = ctx->offs.y;
	plot_rect.w = ctx->dims.x;
	plot_rect.h = ctx->dims.y;
	
	g_free (ctx);
	
	if (scale_rect_draw)
	{
		cairo_set_line_width (cr, 1.0);
		cairo_set_source_rgba (cr, 0.125, 0.289, 0.527, 0.6);
		cairo_rectangle (cr, scale_rect.x, scale_rect.y, scale_rect.w, scale_rect.h);
		cairo_stroke (cr);
		cairo_set_source_rgba (cr, 0.125, 0.289, 0.527, 0.1);
		cairo_rectangle (cr, scale_rect.x, scale_rect.y, scale_rect.w, scale_rect.h);
		cairo_fill (cr);	
	}
	
	kdata_destroy (d1);
	kdata_destroy (d2);
	kplot_free (p);		
}

void chart_apply_data (gint32 setpoint, gint32 *data, gsize size)
{
	if (sp != NULL)
	{
		g_free (sp); 
		g_free (fb);
		sp = NULL; 
		fb = NULL;
	}
	
	sp = g_malloc0 (size * sizeof (struct kpair));
	fb = g_malloc0 (size * sizeof (struct kpair));
	
	for (gsize i = 0; i < size; i++)
	{
		sp [i].x = i;
		sp [i].y = setpoint;
		fb [i].x = i;
		fb [i].y = data [i];
	}
	
	sp_ptr = sp; fb_ptr = fb;
	array_data_size = range = size;
}

