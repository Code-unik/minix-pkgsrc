$NetBSD$

--- backend/kodakaio.c.orig	2012-08-10 00:33:29.000000000 +0000
+++ backend/kodakaio.c
@@ -165,6 +165,7 @@ normal levels. This system is a plan rat
 #include <math.h>
 #include <poll.h>
 #include <time.h>
+#include <sys/socket.h>
 
 #if HAVE_CUPS
 /* used for auto detecting network printers  */
