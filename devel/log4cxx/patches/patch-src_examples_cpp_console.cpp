$NetBSD$

--- src/examples/cpp/console.cpp.orig	2011-11-25 19:53:15.000000000 +0000
+++ src/examples/cpp/console.cpp
@@ -16,6 +16,7 @@
  */
 
 #include <stdlib.h>
+#include <cstring>
 #include <log4cxx/logger.h>
 #include <log4cxx/consoleappender.h>
 #include <log4cxx/simplelayout.h>
