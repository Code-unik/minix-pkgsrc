$NetBSD$

--- polsys.c.orig	2012-12-20 16:08:50.000000000 +0000
+++ polsys.c
@@ -1079,7 +1079,7 @@ unsigned long GetPixelByRGB(Color cl, in
 	}
     }
 
-    return ;
+    return 0;
 }
 
 /* SetupWindow() ����������������ɥ����˴�����
