$NetBSD$

--- include/opal/opalmixer.h.orig	2013-03-23 14:43:14.000000000 +0000
+++ include/opal/opalmixer.h
@@ -97,7 +97,7 @@ class PMemBuffer
       dataLen = size;
     }
 
-    PMemBuffer(const PBYTEArray & obj)
+    PMemBuffer(PBYTEArray & obj)
     { 
       common = new Common(obj.GetPointer(), obj.GetSize());
       data    = common->base.GetPointer();
