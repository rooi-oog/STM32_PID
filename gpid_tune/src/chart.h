#ifndef __CHART_H__
#define __CHART_H__

#include "ui.h"

void chart_apply_data (gint32, gint32 *, gsize);
void chart_draw (cairo_t *cr, guint32, guint32);
void chart_set_start_scale (gint, gint);
gboolean chart_set_end_scale (gint, gint);
void chart_set_scale (gboolean);

#endif /* __CHART_H__ */

