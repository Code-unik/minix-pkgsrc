$NetBSD$

--- krita/plugins/viewplugins/scripting/kritacore/krs_painter.cpp.orig	2013-02-28 16:24:24.000000000 +0000
+++ krita/plugins/viewplugins/scripting/kritacore/krs_painter.cpp
@@ -18,6 +18,7 @@
 
 #include "krs_painter.h"
 
+#include <kis_selection.h>
 #include <kis_convolution_painter.h>
 #include <kis_fill_painter.h>
 #include <kis_paint_layer.h>
