$NetBSD$

* <cstring> is required for strlen().

--- src/scim_fcitx_imengine.cpp.orig	2005-05-20 14:41:12.000000000 +0000
+++ src/scim_fcitx_imengine.cpp
@@ -35,6 +35,7 @@
 #define Uses_SCIM_CONFIG_BASE
 #define Uses_SCIM_CONFIG_PATH
 
+#include <cstring>
 #include <scim.h>
 #include "scim_fcitx_imengine.h"
 #include "main.h"
